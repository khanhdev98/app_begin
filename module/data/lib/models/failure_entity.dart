import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'mongo_model.dart';

part 'failure_entity.freezed.dart';

@freezed
class Failure with _$Failure {
  /// Failure lỗi khi xác thực
  /// [code] Mã code trả về
  /// [response] data trả về
  @Implements<Exception>()
  factory Failure.unauthorized({
    dynamic message,
    dynamic error,
    dynamic response,
  }) = UnauthorizedException;

  /// Lỗi này là lỗi kết nối api
  /// Gồm 2 loại lỗi được gộp chung lại
  /// 1. When the server response, but with a incorrect status, such as 404, 503...
  /// 2. When the server response, but [StatusEntity] code != 200
  /// [code] Mã code trả về
  /// [response] data trả về
  @Implements<Exception>()
  factory Failure.request({
    dynamic message,
    dynamic error,
    dynamic response,
  }) = NetworkFailureException;

  /// Lỗi này để mô tả các quyền truy cập trong application
  /// [code] Mã code trả về
  /// [response] data trả về
  @Implements<Exception>()
  factory Failure.permission({
    dynamic message,
    dynamic error,
    dynamic response,
  }) = PermissionNotGrantedException;

  /// Lỗi parse source
  /// [code] Mã code trả về
  /// [response] data trả về
  @Implements<Exception>()
  factory Failure.parser({
    dynamic message,
    dynamic error,
    dynamic response,
  }) = ParserException;

  /// Lỗi khi không xác định được
  /// loại gì ở bên trên
  @Implements<Exception>()
  factory Failure.other({
    dynamic message,
    dynamic error,
    dynamic response,
  }) = OtherException;
}
