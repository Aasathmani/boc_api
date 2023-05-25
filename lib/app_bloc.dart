import 'package:bloc_project_learning/app_event.dart';
import 'package:bloc_project_learning/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocs extends Bloc<AppEvent,AppState> {
  AppBlocs(): super(InitialState()){
    on<Increment>((event,emit){
      emit(AppState(counter: state.counter+1));

    });

    on<Decrement>((event,emit){
      emit(AppState(counter: state.counter-1));

    });
  }




}