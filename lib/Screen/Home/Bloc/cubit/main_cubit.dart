import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:organico_exem_/Screen/Home/Bloc/state/main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());
  var pageIndex = 0;
  changePage(index) {
    pageIndex = index;
    emit(MainInitial());
  }

  final nameControlller = TextEditingController(text: "Joe doe");
  final phoneControlller = TextEditingController(text: "998994878083");
  final addressControlller = TextEditingController(
      text:
          "rgjnkfgnmdklfgndklfngldfkngdklfgndlkfgndklfgndklfndklfgndlkfngdlkgnldkfngdlkfgndlkgndlkgndf");
  final codeController = TextEditingController();
}
