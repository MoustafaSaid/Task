import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/data/models/models.dart';
import 'package:flutter_projects/data/repository/repository.dart';
import 'package:flutter_projects/presentation/home/controller/states/states.dart';
class HomeCubit extends Cubit<HomeStates>{
 HomeCubit(this.appRepository):super(InitialState());
 static HomeCubit get(context)=>BlocProvider.of(context);
AppRepository appRepository;
 ProductResponseModel? responseModel;
 Future<ProductResponseModel> getProducts()async{
emit(   GetProductsLoadingState());
   var response = await appRepository.getProducts();
   response.when(success: (data) {
     responseModel=data;
     emit(GetProductsSuccessState());

   },  failure: (networkExceptions) {
     emit(GetProductsErrorState());

   },);

return responseModel!;
 }



}