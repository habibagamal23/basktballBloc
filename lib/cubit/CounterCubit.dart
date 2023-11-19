
import "package:flutter_bloc/flutter_bloc.dart";

import "StateCubit.dart";


class CounterCubit extends Cubit <CounterState>{
  CounterCubit() : super(CounterAstate());

int counterA =0 ;
int counterB=0;


void incrementA(int numbutton){
  counterA +=numbutton;
  emit(CounterAstate());
}

  void incrementB(int numbutton){
    counterB +=numbutton;
    emit(CounterBstate());
  }


}