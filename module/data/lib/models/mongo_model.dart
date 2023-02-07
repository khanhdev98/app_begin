import 'package:freezed_annotation/freezed_annotation.dart';

import 'failure_entity.dart';

part 'mongo_model.g.dart';

part 'mongo_model.freezed.dart';

@freezed
class StatusEntity with _$StatusEntity {
  factory StatusEntity({
    bool? success,
    int? code,
    dynamic errors,
  }) = _StatusEntity;

  factory StatusEntity.fromJson(Map<String, dynamic> json) => _$StatusEntityFromJson(json);
}

///! Base class from response mongo
@Freezed(genericArgumentFactories: true)
class MongoEntity<T> with _$MongoEntity<T> {
  factory MongoEntity.list({
    StatusEntity? status,
    List<T?>? elements,
  }) = MongoEntityList;

  factory MongoEntity.map({
    StatusEntity? status,
    Map<String, T?>? elements,
  }) = MongoEntityMap;

  factory MongoEntity.single({
    StatusEntity? status,
    T? elements,
  }) = MongoEntitySingle;

  factory MongoEntity.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) {
    final elements = json['elements'];
    final status = StatusEntity.fromJson(json['status']);

    if (elements == null) {
      return MongoEntityList(
        status: status,
        elements: null,
      );
    }

    if (elements is List) {
      return _fromJsonList<T>(status, elements, fromJsonT);
    }

    if (elements is Map) {
      return _fromJsonMap<T>(status, elements, fromJsonT);
    }

    if (elements is T) {
      return MongoEntitySingle(
        status: status,
        elements: elements,
      );
    }

    throw Failure.parser(
      error: 'Could not determine the constructor for mapping from JSON',
    );
  }

  static MongoEntity<Map<String, dynamic>> parse(json) {
    return MongoEntity<Map<String, dynamic>>.fromJson(
      json,
      (element) => element as Map<String, dynamic>,
    );
  }
}

MongoEntityList<T> _fromJsonList<T>(
  StatusEntity? status,
  List<dynamic> element,
  T Function(Object?) fromJsonT,
) {
  try {
    final parsedList = element.map(
      (element) => fromJsonT(element),
    );

    return MongoEntityList(
      status: status,
      elements: parsedList.toList(),
    );
  } catch (error) {
    throw Failure.parser(
      error: 'Could not determine the constructor for mapping from JSON',
    );
  }
}

MongoEntityMap<T> _fromJsonMap<T>(
  StatusEntity? status,
  Map element,
  T Function(Object?) fromJsonT,
) {
  try {
    final parserMap = element.map(
      (key, value) => MapEntry(
        key.toString(),
        fromJsonT(value),
      ),
    );

    return MongoEntityMap(
      status: status,
      elements: parserMap,
    );
  } catch (error) {
    throw Failure.parser(
      error: 'Could not determine the constructor for mapping from JSON',
    );
  }
}
