import 'dart:developer';

import 'package:shalat_app/core/core.dart';

class Helper {
  const Helper._();

  static void fireAndForgetWithLog<T>(
    Future<Result<T>> future, {
    required String operation,
    void Function(Object error, StackTrace stackTrace)? onError,
  }) {
    future
        .then((result) {
          if (result is Error<T>) {
            final err = result.error;
            final st = StackTrace.current;

            log(
              'Operation [$operation] failed'
              '\nerr: $err'
              '\nst: $st',
              stackTrace: st,
              name: 'Helper.fireAndForgetWithLog',
            );
            onError?.call(err, st);
          }
        })
        .catchError((e, st) {
          log(
            '[$operation] threw unexpected exception'
            '\nerr: $e'
            '\nst: $st',
            stackTrace: st,
            name: 'Helper.fireAndForgetWithLog',
          );
          onError?.call(e, st);
        });
  }
}
