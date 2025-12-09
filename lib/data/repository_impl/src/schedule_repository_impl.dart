import 'package:shalat_app/core/core.dart';
import 'package:shalat_app/data/data.dart';
import 'package:shalat_app/domain/domain.dart';

class ScheduleRepositoryImpl implements ScheduleRepository {
  ScheduleRepositoryImpl({
    required final ScheduleLocal scheduleLocal,
    required final ScheduleRemote scheduleRemote,
  }) : _scheduleLocal = scheduleLocal,
       _scheduleRemote = scheduleRemote;

  final ScheduleLocal _scheduleLocal;
  final ScheduleRemote _scheduleRemote;

  // ---------------------------------------------------------------------------
  // DAILY SCHEDULE
  // ---------------------------------------------------------------------------

  @override
  Future<Result<DailyScheduleModel?>> getDailySchedule({
    required final int cityId,
    required final DateTime date,
  }) async {
    // 1. Try to load daily schedule from local storage first
    final Result<DailyScheduleLocalDto> localRes = await _scheduleLocal
        .getDailySchedule(
          cityId: cityId,
          date: date,
        );

    // If local read failed → fallback immediately to remote
    if (localRes is Error<DailyScheduleLocalDto>) {
      return _getDailyFromRemote(
        cityId: cityId,
        date: date,
      );
    }

    final DailyScheduleLocalDto localDaily =
        (localRes as Ok<DailyScheduleLocalDto>).value;

    // Local data exists → return it immediately
    // Then refresh from remote in the background
    Helper.fireAndForgetWithLog(
      _getDailyFromRemote(
        cityId: cityId,
        date: date,
      ),
      operation: 'Refresh daily schedule from remote',
    );

    try {
      final DailyScheduleModel model = localDaily.toDailyScheduleModel;
      return Result.ok(model);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  /// Fetch daily schedule from remote API.
  ///
  /// Behaviors:
  /// - Remote error → return Result.error
  /// - Remote returns null → return ok(null)
  /// - Remote success:
  ///     • Convert DTO → store to local in background → return model
  Future<Result<DailyScheduleModel?>> _getDailyFromRemote({
    required final int cityId,
    required final DateTime date,
  }) async {
    final Result<DailyScheduleDto?> remoteRes = await _scheduleRemote
        .getDailySchedule(
          cityId: cityId,
          date: date.toFormattedDate,
        );

    if (remoteRes is Error<DailyScheduleDto?>) {
      return Result.error(remoteRes.error);
    }

    final DailyScheduleDto? dto = (remoteRes as Ok<DailyScheduleDto?>).value;

    // Remote also has no data
    if (dto == null) {
      return Result.ok(null);
    }

    try {
      final DailyScheduleLocalDto localDto = dto.toDailyScheduleLocalDto;

      // Store the data to local storage in background (non-blocking)
      Helper.fireAndForgetWithLog(
        _scheduleLocal.insertDailySchedule(schedule: localDto),
        operation: 'Insert daily schedule to local storage',
      );

      final DailyScheduleModel model = localDto.toDailyScheduleModel;
      return Result.ok(model);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  // ---------------------------------------------------------------------------
  // MONTHLY SCHEDULE
  // ---------------------------------------------------------------------------

  @override
  Future<Result<MonthlyScheduleModel>> getMonthlySchedule({
    required final int cityId,
    required final int year,
    required final int month,
  }) async {
    // 1. Try to load monthly schedule from local storage first
    final Result<MonthlyScheduleLocalDto> localRes = await _scheduleLocal
        .getMonthlySchedule(
          cityId: cityId,
          year: year,
          month: month,
        );

    // Local read failed → fallback immediately to remote
    if (localRes is Error<MonthlyScheduleLocalDto>) {
      return _getMonthlyFromRemote(
        cityId: cityId,
        year: year,
        month: month,
        isLocalEmpty: true,
      );
    }

    final MonthlyScheduleLocalDto localMonthly =
        (localRes as Ok<MonthlyScheduleLocalDto>).value;

    // If local has data → return immediately
    if (localMonthly.days.isNotEmpty) {
      // Refresh latest data from remote in background
      Helper.fireAndForgetWithLog(
        _getMonthlyFromRemote(
          cityId: cityId,
          year: year,
          month: month,
          isLocalEmpty: false,
        ),
        operation: 'Refresh monthly schedule from remote',
      );

      try {
        final MonthlyScheduleModel model = localMonthly.toMonthlyScheduleModel;
        return Result.ok(model);
      } catch (e) {
        return Result.error(Exception(e));
      }
    }

    // Local is empty → fetch from remote
    return _getMonthlyFromRemote(
      cityId: cityId,
      year: year,
      month: month,
      isLocalEmpty: true,
    );
  }

  /// Fetch monthly schedules from remote API.
  ///
  /// Behaviors:
  /// - Remote error → Result.error
  /// - Remote success:
  ///     • Convert list DTO → list LocalDto
  ///     • Save to local (insert or update)
  ///     • Trigger cleanup old schedules
  ///     • Return list of domain models
  Future<Result<MonthlyScheduleModel>> _getMonthlyFromRemote({
    required final int cityId,
    required final int year,
    required final int month,
    required final bool isLocalEmpty,
  }) async {
    final Result<MonthlyScheduleDto> remoteRes = await _scheduleRemote
        .getMonthlySchedule(
          cityId: cityId,
          year: year,
          month: month,
        );

    if (remoteRes is Error<MonthlyScheduleDto>) {
      return Result.error(remoteRes.error);
    }

    final MonthlyScheduleDto dto = (remoteRes as Ok<MonthlyScheduleDto>).value;

    try {
      // Convert remote DTOs → Local DTOs
      final MonthlyScheduleLocalDto localDto = dto.toMonthlyScheduleLocalDto;

      // Save to local storage (insert or update)
      if (localDto.days.isNotEmpty) {
        if (isLocalEmpty) {
          Helper.fireAndForgetWithLog(
            _scheduleLocal.insertMonthlySchedule(schedule: localDto),
            operation: 'Insert monthly schedule to local storage',
          );
        } else {
          Helper.fireAndForgetWithLog(
            _scheduleLocal.replaceMonthlySchedule(schedule: localDto),
            operation: 'Update monthly schedule in local storage',
          );
        }

        // Also perform data cleanup (keep only last 3 months)
        Helper.fireAndForgetWithLog(
          _scheduleLocal.deleteOlderThanLastThreeMonths(),
          operation: 'Delete old schedules from local storage',
        );
      }

      // Convert to domain models
      final MonthlyScheduleModel model = localDto.toMonthlyScheduleModel;
      return Result.ok(model);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }
}
