import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/core/utils/routes.dart';
import 'package:flutter_projects/data/models/models.dart';
import 'package:flutter_projects/data/repository/repository.dart';
import 'package:flutter_projects/presentation/login/controller/states/states.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginCubit extends Cubit<LoginStates>{
  LoginCubit(this.appRepository):super(InitialState());
  static LoginCubit get(context)=>BlocProvider.of(context);
  AppRepository appRepository;

  TextEditingController phoneController=TextEditingController();
  TextEditingController nameController=TextEditingController();
  VerifyPhoneRequestModel? verifyPhoneRequestModel;
  VerifyPhoneResponseModel? responseModel;
  Future<VerifyPhoneResponseModel> signUp( context)async{
    print("object");
    phoneNumber=phoneController.text;
    verifyPhoneRequestModel  =VerifyPhoneRequestModel(int.parse(phoneController.text),nameController.text);
    var response = await appRepository.signUp( verifyPhoneRequestModel: verifyPhoneRequestModel!);
    response.when(
      success: (data) {
        emit(VerifyPhoneNumberSuccessState());
        responseModel=data;
        showToastMessage("you register successfully and the code is ${data.code}",Colors.green);
        Navigator.of(context).pushReplacementNamed(RoutesConstant.verify);



      },
      failure: (networkExceptions) {
        emit(VerifyPhoneNumberErrorState());
        showToastMessage("try again",Colors.red);
      },
    );
    phoneController.clear();
    nameController.clear();
    return responseModel!;
  }
String phoneNumber="";
  void showToastMessage(String message,Color color)=>
     Fluttertoast.showToast(msg:message ,
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor:color,
            textColor: Colors.white,
            fontSize: 16.0);


}