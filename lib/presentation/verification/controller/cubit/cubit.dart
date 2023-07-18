import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/core/utils/routes.dart';
import 'package:flutter_projects/data/models/models.dart';
import 'package:flutter_projects/data/repository/repository.dart';
import 'package:flutter_projects/presentation/login/controller/cubit/cubit.dart';
import 'package:flutter_projects/presentation/verification/controller/states/states.dart';
class VerifyCubit extends Cubit<VerifyStates>{
  VerifyCubit(this.appRepository):super(InitialState());
  static VerifyCubit get(context)=>BlocProvider.of(context);

  AppRepository appRepository;

  TextEditingController firstNumber=TextEditingController();
  TextEditingController secondNumber=TextEditingController();
  TextEditingController thirdNumber=TextEditingController();
  TextEditingController fourthNumber=TextEditingController();
  OtpResponseModel? otpResponseModel;
  OtpRequestModel? otpRequestModel;
  String code="";
   Future<OtpResponseModel> sendOtp( context)async{
     code=firstNumber.text+secondNumber.text+thirdNumber.text+fourthNumber.text;
    print("object");
    otpRequestModel  =OtpRequestModel(code,int.parse(LoginCubit.get(context).phoneNumber));
    var response = await appRepository.sendOtp( otpRequestModel: otpRequestModel!);
    response.when(
      success: (data) {
        emit(SendCodeNumberSuccessState());
        otpResponseModel=data;
        Navigator.of(context).pushReplacementNamed(RoutesConstant.home);



      },
      failure: (networkExceptions) {
        emit(SendCodeNumberErrorState());
      },
    );
    firstNumber.clear();
    secondNumber.clear();
    thirdNumber.clear();
    fourthNumber.clear();
    return otpResponseModel!;
  }

}