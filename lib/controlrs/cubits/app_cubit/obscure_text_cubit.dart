import 'package:flutter_bloc/flutter_bloc.dart';

class ObscureTextCubit extends Cubit<bool>{
  ObscureTextCubit(super.initialState);

  getObsecure({required obsecure}){
    emit(obsecure);
  }

}

