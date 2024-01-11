import 'package:flutter_bloc/flutter_bloc.dart';

class SignInCubit extends Cubit<int>{
  SignInCubit(super.initialState);

  getIndex({required index}){
    emit(index);
  }
}