import 'package:flutter_bloc/flutter_bloc.dart';


class BottomNavigationCubit extends Cubit<int>{
  BottomNavigationCubit(super.initialState);

  getIndex({required mystate}){
    emit(mystate);
  }
}