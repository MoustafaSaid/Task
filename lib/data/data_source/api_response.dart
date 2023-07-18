
import 'package:flutter_projects/core/network/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_response.freezed.dart';

@freezed
abstract class ApiResponse<T> with _$ApiResponse<T>{
  const factory ApiResponse.success(T data)=Success<T>;
  const factory ApiResponse.failure(NetworkExceptions networkExceptions)=Failure<T>;
}