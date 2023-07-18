import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/presentation/product_details/controller/states/states.dart';
class ProductCubit extends Cubit<ProductStates>{
  ProductCubit():super(InitialState());
  static ProductCubit get(context)=>BlocProvider.of(context);
int currentIndex=0;
changeIndex(int value){
  currentIndex=value;
  emit(ChangeIndexState());
}

}