import 'package:bloc/bloc.dart';
class ThemCubit extends Cubit<bool>{
  ThemCubit(super.initialState);

   getThem({required them}){
     emit(them);
   }
}