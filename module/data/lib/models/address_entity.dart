// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_entity.freezed.dart';

part 'address_entity.g.dart';
@freezed
class AddressEntity with _$AddressEntity {
  const factory AddressEntity({
    String? address,
  }) = _AddressEntity;

  factory AddressEntity.fromJson(Map<String, dynamic> json) =>
      _$AddressEntityFromJson(json);
}
