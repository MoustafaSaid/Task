
import 'package:dio/dio.dart';
import 'package:flutter_projects/data/data_source/data_source.dart';
import 'package:flutter_projects/data/repository/repository.dart';
import 'package:flutter_projects/presentation/help/controller/cubit/cubit.dart';
import 'package:flutter_projects/presentation/login/controller/cubit/cubit.dart';
import 'package:flutter_projects/presentation/verification/controller/cubit/cubit.dart';
import 'package:get_it/get_it.dart';

final sl=GetIt.instance;
void initGetIt(){
  // sl.registerFactory<LoginCubit>(() => LoginCubit(sl()));
  //<LoginCubit>(() => LoginCubit(sl()));
  sl.registerLazySingleton<ProductCubit>(() => ProductCubit());
  sl.registerLazySingleton<LoginCubit>(() => LoginCubit(sl()));
  sl.registerLazySingleton<VerifyCubit>(() => VerifyCubit(sl()));
  // sl.registerLazySingleton<RegisterCubit>(() => RegisterCubit(sl()));
  sl.registerLazySingleton<DataSource>(() => DataSource(createAndSetupDio()));
  sl.registerLazySingleton<AppRepository>(() => AppRepository(sl()));

}
Dio createAndSetupDio(){
  Dio dio=Dio();
  // dio
    // ..options.connectTimeout=(200*1000) as Duration?
    // ..options.connectTimeout=Duration(seconds: 2)
    // ..options.receiveTimeout=(200*1000) as Duration?;
    // ..options.receiveTimeout=Duration(seconds: 2);

  dio.interceptors.add(LogInterceptor(
      requestBody: true,
      error: true,
      requestHeader: true,
      responseHeader: true,
      responseBody: true
  ));
  return dio;
}

