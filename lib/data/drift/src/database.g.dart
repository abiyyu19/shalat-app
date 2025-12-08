// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $CityEntityTable extends CityEntity
    with TableInfo<$CityEntityTable, CityEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CityEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _regionMeta = const VerificationMeta('region');
  @override
  late final GeneratedColumn<String> region = GeneratedColumn<String>(
    'region',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, region];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'city_entity';
  @override
  VerificationContext validateIntegrity(
    Insertable<CityEntityData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('region')) {
      context.handle(
        _regionMeta,
        region.isAcceptableOrUnknown(data['region']!, _regionMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CityEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CityEntityData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      region: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}region'],
      ),
    );
  }

  @override
  $CityEntityTable createAlias(String alias) {
    return $CityEntityTable(attachedDatabase, alias);
  }
}

class CityEntityData extends DataClass implements Insertable<CityEntityData> {
  final int id;
  final String name;
  final String? region;
  const CityEntityData({required this.id, required this.name, this.region});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || region != null) {
      map['region'] = Variable<String>(region);
    }
    return map;
  }

  CityEntityCompanion toCompanion(bool nullToAbsent) {
    return CityEntityCompanion(
      id: Value(id),
      name: Value(name),
      region: region == null && nullToAbsent
          ? const Value.absent()
          : Value(region),
    );
  }

  factory CityEntityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CityEntityData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      region: serializer.fromJson<String?>(json['region']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'region': serializer.toJson<String?>(region),
    };
  }

  CityEntityData copyWith({
    int? id,
    String? name,
    Value<String?> region = const Value.absent(),
  }) => CityEntityData(
    id: id ?? this.id,
    name: name ?? this.name,
    region: region.present ? region.value : this.region,
  );
  CityEntityData copyWithCompanion(CityEntityCompanion data) {
    return CityEntityData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      region: data.region.present ? data.region.value : this.region,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CityEntityData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('region: $region')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, region);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CityEntityData &&
          other.id == this.id &&
          other.name == this.name &&
          other.region == this.region);
}

class CityEntityCompanion extends UpdateCompanion<CityEntityData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> region;
  const CityEntityCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.region = const Value.absent(),
  });
  CityEntityCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.region = const Value.absent(),
  }) : name = Value(name);
  static Insertable<CityEntityData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? region,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (region != null) 'region': region,
    });
  }

  CityEntityCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String?>? region,
  }) {
    return CityEntityCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      region: region ?? this.region,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (region.present) {
      map['region'] = Variable<String>(region.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CityEntityCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('region: $region')
          ..write(')'))
        .toString();
  }
}

class $ScheduleEntityTable extends ScheduleEntity
    with TableInfo<$ScheduleEntityTable, ScheduleEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ScheduleEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _cityIdMeta = const VerificationMeta('cityId');
  @override
  late final GeneratedColumn<int> cityId = GeneratedColumn<int>(
    'city_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES city_entity (id)',
    ),
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _parsedDateMeta = const VerificationMeta(
    'parsedDate',
  );
  @override
  late final GeneratedColumn<String> parsedDate = GeneratedColumn<String>(
    'parsed_date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imsakMeta = const VerificationMeta('imsak');
  @override
  late final GeneratedColumn<String> imsak = GeneratedColumn<String>(
    'imsak',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _subuhMeta = const VerificationMeta('subuh');
  @override
  late final GeneratedColumn<String> subuh = GeneratedColumn<String>(
    'subuh',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _terbitMeta = const VerificationMeta('terbit');
  @override
  late final GeneratedColumn<String> terbit = GeneratedColumn<String>(
    'terbit',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dhuhaMeta = const VerificationMeta('dhuha');
  @override
  late final GeneratedColumn<String> dhuha = GeneratedColumn<String>(
    'dhuha',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dzuhurMeta = const VerificationMeta('dzuhur');
  @override
  late final GeneratedColumn<String> dzuhur = GeneratedColumn<String>(
    'dzuhur',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _asharMeta = const VerificationMeta('ashar');
  @override
  late final GeneratedColumn<String> ashar = GeneratedColumn<String>(
    'ashar',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _maghribMeta = const VerificationMeta(
    'maghrib',
  );
  @override
  late final GeneratedColumn<String> maghrib = GeneratedColumn<String>(
    'maghrib',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isyaMeta = const VerificationMeta('isya');
  @override
  late final GeneratedColumn<String> isya = GeneratedColumn<String>(
    'isya',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    createdAt,
    updatedAt,
    cityId,
    date,
    parsedDate,
    imsak,
    subuh,
    terbit,
    dhuha,
    dzuhur,
    ashar,
    maghrib,
    isya,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'schedule_entity';
  @override
  VerificationContext validateIntegrity(
    Insertable<ScheduleEntityData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('city_id')) {
      context.handle(
        _cityIdMeta,
        cityId.isAcceptableOrUnknown(data['city_id']!, _cityIdMeta),
      );
    } else if (isInserting) {
      context.missing(_cityIdMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('parsed_date')) {
      context.handle(
        _parsedDateMeta,
        parsedDate.isAcceptableOrUnknown(data['parsed_date']!, _parsedDateMeta),
      );
    } else if (isInserting) {
      context.missing(_parsedDateMeta);
    }
    if (data.containsKey('imsak')) {
      context.handle(
        _imsakMeta,
        imsak.isAcceptableOrUnknown(data['imsak']!, _imsakMeta),
      );
    } else if (isInserting) {
      context.missing(_imsakMeta);
    }
    if (data.containsKey('subuh')) {
      context.handle(
        _subuhMeta,
        subuh.isAcceptableOrUnknown(data['subuh']!, _subuhMeta),
      );
    } else if (isInserting) {
      context.missing(_subuhMeta);
    }
    if (data.containsKey('terbit')) {
      context.handle(
        _terbitMeta,
        terbit.isAcceptableOrUnknown(data['terbit']!, _terbitMeta),
      );
    } else if (isInserting) {
      context.missing(_terbitMeta);
    }
    if (data.containsKey('dhuha')) {
      context.handle(
        _dhuhaMeta,
        dhuha.isAcceptableOrUnknown(data['dhuha']!, _dhuhaMeta),
      );
    } else if (isInserting) {
      context.missing(_dhuhaMeta);
    }
    if (data.containsKey('dzuhur')) {
      context.handle(
        _dzuhurMeta,
        dzuhur.isAcceptableOrUnknown(data['dzuhur']!, _dzuhurMeta),
      );
    } else if (isInserting) {
      context.missing(_dzuhurMeta);
    }
    if (data.containsKey('ashar')) {
      context.handle(
        _asharMeta,
        ashar.isAcceptableOrUnknown(data['ashar']!, _asharMeta),
      );
    } else if (isInserting) {
      context.missing(_asharMeta);
    }
    if (data.containsKey('maghrib')) {
      context.handle(
        _maghribMeta,
        maghrib.isAcceptableOrUnknown(data['maghrib']!, _maghribMeta),
      );
    } else if (isInserting) {
      context.missing(_maghribMeta);
    }
    if (data.containsKey('isya')) {
      context.handle(
        _isyaMeta,
        isya.isAcceptableOrUnknown(data['isya']!, _isyaMeta),
      );
    } else if (isInserting) {
      context.missing(_isyaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
    {cityId, date},
  ];
  @override
  ScheduleEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ScheduleEntityData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      cityId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}city_id'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      parsedDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}parsed_date'],
      )!,
      imsak: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}imsak'],
      )!,
      subuh: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}subuh'],
      )!,
      terbit: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}terbit'],
      )!,
      dhuha: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}dhuha'],
      )!,
      dzuhur: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}dzuhur'],
      )!,
      ashar: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ashar'],
      )!,
      maghrib: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}maghrib'],
      )!,
      isya: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}isya'],
      )!,
    );
  }

  @override
  $ScheduleEntityTable createAlias(String alias) {
    return $ScheduleEntityTable(attachedDatabase, alias);
  }
}

class ScheduleEntityData extends DataClass
    implements Insertable<ScheduleEntityData> {
  final int id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int cityId;
  final DateTime date;
  final String parsedDate;
  final String imsak;
  final String subuh;
  final String terbit;
  final String dhuha;
  final String dzuhur;
  final String ashar;
  final String maghrib;
  final String isya;
  const ScheduleEntityData({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.cityId,
    required this.date,
    required this.parsedDate,
    required this.imsak,
    required this.subuh,
    required this.terbit,
    required this.dhuha,
    required this.dzuhur,
    required this.ashar,
    required this.maghrib,
    required this.isya,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['city_id'] = Variable<int>(cityId);
    map['date'] = Variable<DateTime>(date);
    map['parsed_date'] = Variable<String>(parsedDate);
    map['imsak'] = Variable<String>(imsak);
    map['subuh'] = Variable<String>(subuh);
    map['terbit'] = Variable<String>(terbit);
    map['dhuha'] = Variable<String>(dhuha);
    map['dzuhur'] = Variable<String>(dzuhur);
    map['ashar'] = Variable<String>(ashar);
    map['maghrib'] = Variable<String>(maghrib);
    map['isya'] = Variable<String>(isya);
    return map;
  }

  ScheduleEntityCompanion toCompanion(bool nullToAbsent) {
    return ScheduleEntityCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      cityId: Value(cityId),
      date: Value(date),
      parsedDate: Value(parsedDate),
      imsak: Value(imsak),
      subuh: Value(subuh),
      terbit: Value(terbit),
      dhuha: Value(dhuha),
      dzuhur: Value(dzuhur),
      ashar: Value(ashar),
      maghrib: Value(maghrib),
      isya: Value(isya),
    );
  }

  factory ScheduleEntityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ScheduleEntityData(
      id: serializer.fromJson<int>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      cityId: serializer.fromJson<int>(json['cityId']),
      date: serializer.fromJson<DateTime>(json['date']),
      parsedDate: serializer.fromJson<String>(json['parsedDate']),
      imsak: serializer.fromJson<String>(json['imsak']),
      subuh: serializer.fromJson<String>(json['subuh']),
      terbit: serializer.fromJson<String>(json['terbit']),
      dhuha: serializer.fromJson<String>(json['dhuha']),
      dzuhur: serializer.fromJson<String>(json['dzuhur']),
      ashar: serializer.fromJson<String>(json['ashar']),
      maghrib: serializer.fromJson<String>(json['maghrib']),
      isya: serializer.fromJson<String>(json['isya']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'cityId': serializer.toJson<int>(cityId),
      'date': serializer.toJson<DateTime>(date),
      'parsedDate': serializer.toJson<String>(parsedDate),
      'imsak': serializer.toJson<String>(imsak),
      'subuh': serializer.toJson<String>(subuh),
      'terbit': serializer.toJson<String>(terbit),
      'dhuha': serializer.toJson<String>(dhuha),
      'dzuhur': serializer.toJson<String>(dzuhur),
      'ashar': serializer.toJson<String>(ashar),
      'maghrib': serializer.toJson<String>(maghrib),
      'isya': serializer.toJson<String>(isya),
    };
  }

  ScheduleEntityData copyWith({
    int? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? cityId,
    DateTime? date,
    String? parsedDate,
    String? imsak,
    String? subuh,
    String? terbit,
    String? dhuha,
    String? dzuhur,
    String? ashar,
    String? maghrib,
    String? isya,
  }) => ScheduleEntityData(
    id: id ?? this.id,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    cityId: cityId ?? this.cityId,
    date: date ?? this.date,
    parsedDate: parsedDate ?? this.parsedDate,
    imsak: imsak ?? this.imsak,
    subuh: subuh ?? this.subuh,
    terbit: terbit ?? this.terbit,
    dhuha: dhuha ?? this.dhuha,
    dzuhur: dzuhur ?? this.dzuhur,
    ashar: ashar ?? this.ashar,
    maghrib: maghrib ?? this.maghrib,
    isya: isya ?? this.isya,
  );
  ScheduleEntityData copyWithCompanion(ScheduleEntityCompanion data) {
    return ScheduleEntityData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      cityId: data.cityId.present ? data.cityId.value : this.cityId,
      date: data.date.present ? data.date.value : this.date,
      parsedDate: data.parsedDate.present
          ? data.parsedDate.value
          : this.parsedDate,
      imsak: data.imsak.present ? data.imsak.value : this.imsak,
      subuh: data.subuh.present ? data.subuh.value : this.subuh,
      terbit: data.terbit.present ? data.terbit.value : this.terbit,
      dhuha: data.dhuha.present ? data.dhuha.value : this.dhuha,
      dzuhur: data.dzuhur.present ? data.dzuhur.value : this.dzuhur,
      ashar: data.ashar.present ? data.ashar.value : this.ashar,
      maghrib: data.maghrib.present ? data.maghrib.value : this.maghrib,
      isya: data.isya.present ? data.isya.value : this.isya,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ScheduleEntityData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('cityId: $cityId, ')
          ..write('date: $date, ')
          ..write('parsedDate: $parsedDate, ')
          ..write('imsak: $imsak, ')
          ..write('subuh: $subuh, ')
          ..write('terbit: $terbit, ')
          ..write('dhuha: $dhuha, ')
          ..write('dzuhur: $dzuhur, ')
          ..write('ashar: $ashar, ')
          ..write('maghrib: $maghrib, ')
          ..write('isya: $isya')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    createdAt,
    updatedAt,
    cityId,
    date,
    parsedDate,
    imsak,
    subuh,
    terbit,
    dhuha,
    dzuhur,
    ashar,
    maghrib,
    isya,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ScheduleEntityData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.cityId == this.cityId &&
          other.date == this.date &&
          other.parsedDate == this.parsedDate &&
          other.imsak == this.imsak &&
          other.subuh == this.subuh &&
          other.terbit == this.terbit &&
          other.dhuha == this.dhuha &&
          other.dzuhur == this.dzuhur &&
          other.ashar == this.ashar &&
          other.maghrib == this.maghrib &&
          other.isya == this.isya);
}

class ScheduleEntityCompanion extends UpdateCompanion<ScheduleEntityData> {
  final Value<int> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> cityId;
  final Value<DateTime> date;
  final Value<String> parsedDate;
  final Value<String> imsak;
  final Value<String> subuh;
  final Value<String> terbit;
  final Value<String> dhuha;
  final Value<String> dzuhur;
  final Value<String> ashar;
  final Value<String> maghrib;
  final Value<String> isya;
  const ScheduleEntityCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.cityId = const Value.absent(),
    this.date = const Value.absent(),
    this.parsedDate = const Value.absent(),
    this.imsak = const Value.absent(),
    this.subuh = const Value.absent(),
    this.terbit = const Value.absent(),
    this.dhuha = const Value.absent(),
    this.dzuhur = const Value.absent(),
    this.ashar = const Value.absent(),
    this.maghrib = const Value.absent(),
    this.isya = const Value.absent(),
  });
  ScheduleEntityCompanion.insert({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    required int cityId,
    required DateTime date,
    required String parsedDate,
    required String imsak,
    required String subuh,
    required String terbit,
    required String dhuha,
    required String dzuhur,
    required String ashar,
    required String maghrib,
    required String isya,
  }) : cityId = Value(cityId),
       date = Value(date),
       parsedDate = Value(parsedDate),
       imsak = Value(imsak),
       subuh = Value(subuh),
       terbit = Value(terbit),
       dhuha = Value(dhuha),
       dzuhur = Value(dzuhur),
       ashar = Value(ashar),
       maghrib = Value(maghrib),
       isya = Value(isya);
  static Insertable<ScheduleEntityData> custom({
    Expression<int>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? cityId,
    Expression<DateTime>? date,
    Expression<String>? parsedDate,
    Expression<String>? imsak,
    Expression<String>? subuh,
    Expression<String>? terbit,
    Expression<String>? dhuha,
    Expression<String>? dzuhur,
    Expression<String>? ashar,
    Expression<String>? maghrib,
    Expression<String>? isya,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (cityId != null) 'city_id': cityId,
      if (date != null) 'date': date,
      if (parsedDate != null) 'parsed_date': parsedDate,
      if (imsak != null) 'imsak': imsak,
      if (subuh != null) 'subuh': subuh,
      if (terbit != null) 'terbit': terbit,
      if (dhuha != null) 'dhuha': dhuha,
      if (dzuhur != null) 'dzuhur': dzuhur,
      if (ashar != null) 'ashar': ashar,
      if (maghrib != null) 'maghrib': maghrib,
      if (isya != null) 'isya': isya,
    });
  }

  ScheduleEntityCompanion copyWith({
    Value<int>? id,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<int>? cityId,
    Value<DateTime>? date,
    Value<String>? parsedDate,
    Value<String>? imsak,
    Value<String>? subuh,
    Value<String>? terbit,
    Value<String>? dhuha,
    Value<String>? dzuhur,
    Value<String>? ashar,
    Value<String>? maghrib,
    Value<String>? isya,
  }) {
    return ScheduleEntityCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      cityId: cityId ?? this.cityId,
      date: date ?? this.date,
      parsedDate: parsedDate ?? this.parsedDate,
      imsak: imsak ?? this.imsak,
      subuh: subuh ?? this.subuh,
      terbit: terbit ?? this.terbit,
      dhuha: dhuha ?? this.dhuha,
      dzuhur: dzuhur ?? this.dzuhur,
      ashar: ashar ?? this.ashar,
      maghrib: maghrib ?? this.maghrib,
      isya: isya ?? this.isya,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (cityId.present) {
      map['city_id'] = Variable<int>(cityId.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (parsedDate.present) {
      map['parsed_date'] = Variable<String>(parsedDate.value);
    }
    if (imsak.present) {
      map['imsak'] = Variable<String>(imsak.value);
    }
    if (subuh.present) {
      map['subuh'] = Variable<String>(subuh.value);
    }
    if (terbit.present) {
      map['terbit'] = Variable<String>(terbit.value);
    }
    if (dhuha.present) {
      map['dhuha'] = Variable<String>(dhuha.value);
    }
    if (dzuhur.present) {
      map['dzuhur'] = Variable<String>(dzuhur.value);
    }
    if (ashar.present) {
      map['ashar'] = Variable<String>(ashar.value);
    }
    if (maghrib.present) {
      map['maghrib'] = Variable<String>(maghrib.value);
    }
    if (isya.present) {
      map['isya'] = Variable<String>(isya.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ScheduleEntityCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('cityId: $cityId, ')
          ..write('date: $date, ')
          ..write('parsedDate: $parsedDate, ')
          ..write('imsak: $imsak, ')
          ..write('subuh: $subuh, ')
          ..write('terbit: $terbit, ')
          ..write('dhuha: $dhuha, ')
          ..write('dzuhur: $dzuhur, ')
          ..write('ashar: $ashar, ')
          ..write('maghrib: $maghrib, ')
          ..write('isya: $isya')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CityEntityTable cityEntity = $CityEntityTable(this);
  late final $ScheduleEntityTable scheduleEntity = $ScheduleEntityTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    cityEntity,
    scheduleEntity,
  ];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$CityEntityTableCreateCompanionBuilder =
    CityEntityCompanion Function({
      Value<int> id,
      required String name,
      Value<String?> region,
    });
typedef $$CityEntityTableUpdateCompanionBuilder =
    CityEntityCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String?> region,
    });

final class $$CityEntityTableReferences
    extends BaseReferences<_$AppDatabase, $CityEntityTable, CityEntityData> {
  $$CityEntityTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ScheduleEntityTable, List<ScheduleEntityData>>
  _scheduleEntityRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.scheduleEntity,
    aliasName: $_aliasNameGenerator(db.cityEntity.id, db.scheduleEntity.cityId),
  );

  $$ScheduleEntityTableProcessedTableManager get scheduleEntityRefs {
    final manager = $$ScheduleEntityTableTableManager(
      $_db,
      $_db.scheduleEntity,
    ).filter((f) => f.cityId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_scheduleEntityRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$CityEntityTableFilterComposer
    extends Composer<_$AppDatabase, $CityEntityTable> {
  $$CityEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get region => $composableBuilder(
    column: $table.region,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> scheduleEntityRefs(
    Expression<bool> Function($$ScheduleEntityTableFilterComposer f) f,
  ) {
    final $$ScheduleEntityTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.scheduleEntity,
      getReferencedColumn: (t) => t.cityId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ScheduleEntityTableFilterComposer(
            $db: $db,
            $table: $db.scheduleEntity,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CityEntityTableOrderingComposer
    extends Composer<_$AppDatabase, $CityEntityTable> {
  $$CityEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get region => $composableBuilder(
    column: $table.region,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CityEntityTableAnnotationComposer
    extends Composer<_$AppDatabase, $CityEntityTable> {
  $$CityEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get region =>
      $composableBuilder(column: $table.region, builder: (column) => column);

  Expression<T> scheduleEntityRefs<T extends Object>(
    Expression<T> Function($$ScheduleEntityTableAnnotationComposer a) f,
  ) {
    final $$ScheduleEntityTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.scheduleEntity,
      getReferencedColumn: (t) => t.cityId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ScheduleEntityTableAnnotationComposer(
            $db: $db,
            $table: $db.scheduleEntity,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CityEntityTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CityEntityTable,
          CityEntityData,
          $$CityEntityTableFilterComposer,
          $$CityEntityTableOrderingComposer,
          $$CityEntityTableAnnotationComposer,
          $$CityEntityTableCreateCompanionBuilder,
          $$CityEntityTableUpdateCompanionBuilder,
          (CityEntityData, $$CityEntityTableReferences),
          CityEntityData,
          PrefetchHooks Function({bool scheduleEntityRefs})
        > {
  $$CityEntityTableTableManager(_$AppDatabase db, $CityEntityTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CityEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CityEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CityEntityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> region = const Value.absent(),
              }) => CityEntityCompanion(id: id, name: name, region: region),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                Value<String?> region = const Value.absent(),
              }) => CityEntityCompanion.insert(
                id: id,
                name: name,
                region: region,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$CityEntityTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({scheduleEntityRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (scheduleEntityRefs) db.scheduleEntity,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (scheduleEntityRefs)
                    await $_getPrefetchedData<
                      CityEntityData,
                      $CityEntityTable,
                      ScheduleEntityData
                    >(
                      currentTable: table,
                      referencedTable: $$CityEntityTableReferences
                          ._scheduleEntityRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$CityEntityTableReferences(
                            db,
                            table,
                            p0,
                          ).scheduleEntityRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.cityId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$CityEntityTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CityEntityTable,
      CityEntityData,
      $$CityEntityTableFilterComposer,
      $$CityEntityTableOrderingComposer,
      $$CityEntityTableAnnotationComposer,
      $$CityEntityTableCreateCompanionBuilder,
      $$CityEntityTableUpdateCompanionBuilder,
      (CityEntityData, $$CityEntityTableReferences),
      CityEntityData,
      PrefetchHooks Function({bool scheduleEntityRefs})
    >;
typedef $$ScheduleEntityTableCreateCompanionBuilder =
    ScheduleEntityCompanion Function({
      Value<int> id,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      required int cityId,
      required DateTime date,
      required String parsedDate,
      required String imsak,
      required String subuh,
      required String terbit,
      required String dhuha,
      required String dzuhur,
      required String ashar,
      required String maghrib,
      required String isya,
    });
typedef $$ScheduleEntityTableUpdateCompanionBuilder =
    ScheduleEntityCompanion Function({
      Value<int> id,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> cityId,
      Value<DateTime> date,
      Value<String> parsedDate,
      Value<String> imsak,
      Value<String> subuh,
      Value<String> terbit,
      Value<String> dhuha,
      Value<String> dzuhur,
      Value<String> ashar,
      Value<String> maghrib,
      Value<String> isya,
    });

final class $$ScheduleEntityTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $ScheduleEntityTable,
          ScheduleEntityData
        > {
  $$ScheduleEntityTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $CityEntityTable _cityIdTable(_$AppDatabase db) =>
      db.cityEntity.createAlias(
        $_aliasNameGenerator(db.scheduleEntity.cityId, db.cityEntity.id),
      );

  $$CityEntityTableProcessedTableManager get cityId {
    final $_column = $_itemColumn<int>('city_id')!;

    final manager = $$CityEntityTableTableManager(
      $_db,
      $_db.cityEntity,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_cityIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ScheduleEntityTableFilterComposer
    extends Composer<_$AppDatabase, $ScheduleEntityTable> {
  $$ScheduleEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get parsedDate => $composableBuilder(
    column: $table.parsedDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imsak => $composableBuilder(
    column: $table.imsak,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get subuh => $composableBuilder(
    column: $table.subuh,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get terbit => $composableBuilder(
    column: $table.terbit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get dhuha => $composableBuilder(
    column: $table.dhuha,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get dzuhur => $composableBuilder(
    column: $table.dzuhur,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get ashar => $composableBuilder(
    column: $table.ashar,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get maghrib => $composableBuilder(
    column: $table.maghrib,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get isya => $composableBuilder(
    column: $table.isya,
    builder: (column) => ColumnFilters(column),
  );

  $$CityEntityTableFilterComposer get cityId {
    final $$CityEntityTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.cityId,
      referencedTable: $db.cityEntity,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CityEntityTableFilterComposer(
            $db: $db,
            $table: $db.cityEntity,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ScheduleEntityTableOrderingComposer
    extends Composer<_$AppDatabase, $ScheduleEntityTable> {
  $$ScheduleEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get parsedDate => $composableBuilder(
    column: $table.parsedDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imsak => $composableBuilder(
    column: $table.imsak,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get subuh => $composableBuilder(
    column: $table.subuh,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get terbit => $composableBuilder(
    column: $table.terbit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get dhuha => $composableBuilder(
    column: $table.dhuha,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get dzuhur => $composableBuilder(
    column: $table.dzuhur,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get ashar => $composableBuilder(
    column: $table.ashar,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get maghrib => $composableBuilder(
    column: $table.maghrib,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get isya => $composableBuilder(
    column: $table.isya,
    builder: (column) => ColumnOrderings(column),
  );

  $$CityEntityTableOrderingComposer get cityId {
    final $$CityEntityTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.cityId,
      referencedTable: $db.cityEntity,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CityEntityTableOrderingComposer(
            $db: $db,
            $table: $db.cityEntity,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ScheduleEntityTableAnnotationComposer
    extends Composer<_$AppDatabase, $ScheduleEntityTable> {
  $$ScheduleEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get parsedDate => $composableBuilder(
    column: $table.parsedDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get imsak =>
      $composableBuilder(column: $table.imsak, builder: (column) => column);

  GeneratedColumn<String> get subuh =>
      $composableBuilder(column: $table.subuh, builder: (column) => column);

  GeneratedColumn<String> get terbit =>
      $composableBuilder(column: $table.terbit, builder: (column) => column);

  GeneratedColumn<String> get dhuha =>
      $composableBuilder(column: $table.dhuha, builder: (column) => column);

  GeneratedColumn<String> get dzuhur =>
      $composableBuilder(column: $table.dzuhur, builder: (column) => column);

  GeneratedColumn<String> get ashar =>
      $composableBuilder(column: $table.ashar, builder: (column) => column);

  GeneratedColumn<String> get maghrib =>
      $composableBuilder(column: $table.maghrib, builder: (column) => column);

  GeneratedColumn<String> get isya =>
      $composableBuilder(column: $table.isya, builder: (column) => column);

  $$CityEntityTableAnnotationComposer get cityId {
    final $$CityEntityTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.cityId,
      referencedTable: $db.cityEntity,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CityEntityTableAnnotationComposer(
            $db: $db,
            $table: $db.cityEntity,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ScheduleEntityTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ScheduleEntityTable,
          ScheduleEntityData,
          $$ScheduleEntityTableFilterComposer,
          $$ScheduleEntityTableOrderingComposer,
          $$ScheduleEntityTableAnnotationComposer,
          $$ScheduleEntityTableCreateCompanionBuilder,
          $$ScheduleEntityTableUpdateCompanionBuilder,
          (ScheduleEntityData, $$ScheduleEntityTableReferences),
          ScheduleEntityData,
          PrefetchHooks Function({bool cityId})
        > {
  $$ScheduleEntityTableTableManager(
    _$AppDatabase db,
    $ScheduleEntityTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ScheduleEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ScheduleEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ScheduleEntityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> cityId = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<String> parsedDate = const Value.absent(),
                Value<String> imsak = const Value.absent(),
                Value<String> subuh = const Value.absent(),
                Value<String> terbit = const Value.absent(),
                Value<String> dhuha = const Value.absent(),
                Value<String> dzuhur = const Value.absent(),
                Value<String> ashar = const Value.absent(),
                Value<String> maghrib = const Value.absent(),
                Value<String> isya = const Value.absent(),
              }) => ScheduleEntityCompanion(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                cityId: cityId,
                date: date,
                parsedDate: parsedDate,
                imsak: imsak,
                subuh: subuh,
                terbit: terbit,
                dhuha: dhuha,
                dzuhur: dzuhur,
                ashar: ashar,
                maghrib: maghrib,
                isya: isya,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                required int cityId,
                required DateTime date,
                required String parsedDate,
                required String imsak,
                required String subuh,
                required String terbit,
                required String dhuha,
                required String dzuhur,
                required String ashar,
                required String maghrib,
                required String isya,
              }) => ScheduleEntityCompanion.insert(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                cityId: cityId,
                date: date,
                parsedDate: parsedDate,
                imsak: imsak,
                subuh: subuh,
                terbit: terbit,
                dhuha: dhuha,
                dzuhur: dzuhur,
                ashar: ashar,
                maghrib: maghrib,
                isya: isya,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ScheduleEntityTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({cityId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (cityId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.cityId,
                                referencedTable: $$ScheduleEntityTableReferences
                                    ._cityIdTable(db),
                                referencedColumn:
                                    $$ScheduleEntityTableReferences
                                        ._cityIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ScheduleEntityTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ScheduleEntityTable,
      ScheduleEntityData,
      $$ScheduleEntityTableFilterComposer,
      $$ScheduleEntityTableOrderingComposer,
      $$ScheduleEntityTableAnnotationComposer,
      $$ScheduleEntityTableCreateCompanionBuilder,
      $$ScheduleEntityTableUpdateCompanionBuilder,
      (ScheduleEntityData, $$ScheduleEntityTableReferences),
      ScheduleEntityData,
      PrefetchHooks Function({bool cityId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CityEntityTableTableManager get cityEntity =>
      $$CityEntityTableTableManager(_db, _db.cityEntity);
  $$ScheduleEntityTableTableManager get scheduleEntity =>
      $$ScheduleEntityTableTableManager(_db, _db.scheduleEntity);
}
