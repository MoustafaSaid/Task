import 'package:dio/dio.dart';
import 'package:flutter_projects/data/models/models.dart';
import 'package:retrofit/retrofit.dart';

part 'data_source.g.dart';

@RestApi(baseUrl: "https://magdsoft.ahmedshawky.fun/api/")
abstract class DataSource{

  factory DataSource(Dio dio,{String baseUrl}) = _DataSource;

  @POST("verifyPhone")
  Future<VerifyPhoneResponseModel> signUp (@Body() VerifyPhoneRequestModel verifyPhoneRequestModel);

  @POST("otp")
  Future<OtpResponseModel>   sendOtp (@Body() OtpRequestModel otpRequestModel);
  @GET("getProducts")
  Future<ProductResponseModel> getProducts();
  @GET("getHelp")
  Future<HelpResponseModel> getHelp();

}