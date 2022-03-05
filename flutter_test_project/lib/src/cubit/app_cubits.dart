
import 'package:bloc/bloc.dart';

import 'app_cubit_states.dart';


class AppCubits extends Cubit {

  AppCubits() : super(InitialCubitsState()){

    // trigger welcome screen when app is opened
    emit(WelcomeState());
  }


}