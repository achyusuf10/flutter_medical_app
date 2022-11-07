import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';
part 'failure.g.dart';

@freezed
class Failure with _$Failure {
  const factory Failure({
    @Default('Terjadi Kesalahan, coba lagi') String message,
    @Default(0) int status,
  }) = _Failure;
  factory Failure.fromJson(Map<String, dynamic> json) =>
      _$FailureFromJson(json);
}
