import 'package:flutter_projects/core/network/network_exceptions.dart';
import 'package:flutter_projects/data/data_source/api_response.dart';
import 'package:flutter_projects/data/data_source/data_source.dart';
import 'package:flutter_projects/data/models/models.dart';

class AppRepository{
  final DataSource dataSource;
  AppRepository(this.dataSource);

  Future<ApiResponse<VerifyPhoneResponseModel>> signUp({required VerifyPhoneRequestModel verifyPhoneRequestModel})async{
    try{
      var response=await dataSource.signUp(verifyPhoneRequestModel);
      return ApiResponse.success(response);

    }catch(error){
      return ApiResponse.failure(NetworkExceptions.getDioException(error));
    }
  }
  Future<ApiResponse<OtpResponseModel>> sendOtp({required OtpRequestModel otpRequestModel})async{
    try{
      var response=await dataSource.sendOtp(otpRequestModel);
      return ApiResponse.success(response);

    }catch(error){
      return ApiResponse.failure(NetworkExceptions.getDioException(error));
    }
  }
  Future<ApiResponse<ProductResponseModel>> getProducts()async{
    try{
      var response=await dataSource.getProducts();
      return ApiResponse.success(response);

    }catch(error){
      return ApiResponse.failure(NetworkExceptions.getDioException(error));
    }
  }
  Future<ApiResponse<HelpResponseModel>> getHelp()async{
    try{
      var response=await dataSource.getHelp();
      return ApiResponse.success(response);

    }catch(error){
      return ApiResponse.failure(NetworkExceptions.getDioException(error));
    }
  }

}