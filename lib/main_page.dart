import 'package:flutter_bloc/flutter_bloc.dart';

class MainPageState {
  String result = "0";
  MainPageState({required this.result});
}

class CounterCubit extends Cubit<MainPageState> {
  CounterCubit() : super(MainPageState(result: ""));

  void btnOne(String n) {
    if (int.parse(n) != 0) {
      int x = int.parse(n) + 1;
      List<String> number = [];
      for (int i = 1; i < x; i++) {
        number.add(i.toString());
      }
      emit(MainPageState(result: state.result = number.toString()));
    } else {
      emit(MainPageState(result: state.result = "Data Tidak Boleh 0"));
    }
  }

  void btnTwo(String n) {
    if (int.parse(n) != 0) {
      List<String> number = [];
      for (int i = 1; i < int.parse(n) + 1; i++) {
        number.add(i.toString());
        if (i == int.parse(n)) {
          for (int j = i - 1; j > 0; j--) {
            number.add(j.toString());
          }
        }
      }
      emit(MainPageState(result: state.result = number.toString()));
    } else {
      emit(MainPageState(result: state.result = "Data Tidak Boleh 0"));
    }
  }

  void btnThree(String n) {
    if (int.parse(n) != 0) {
      List<String> number = [];
      int initiateeFirstValue = int.parse(n) * 2;
      number.add(initiateeFirstValue.toString());
      for (int i = 1; i < int.parse(n); i++) {
        initiateeFirstValue = initiateeFirstValue + 11;
        number.add(initiateeFirstValue.toString());
      }
      emit(MainPageState(result: state.result = number.toString()));
    } else {
      emit(MainPageState(result: state.result = "Data Tidak Boleh 0"));
    }
  }

  void btnFour(String n) {
    if (int.parse(n) != 0) {
      List<String> number = [];
      for (int i = 1; i < int.parse(n) + 1; i++) {
        if (i % 5 == 0) {
          number.add("LIMA");
        } else if (i % 7 == 0) {
          number.add("TUJUH");
        } else {
          number.add(i.toString());
        }
      }
      emit(MainPageState(result: state.result = number.toString()));
    } else {
      emit(MainPageState(result: state.result = "Data Tidak Boleh 0"));
    }
  }
}
