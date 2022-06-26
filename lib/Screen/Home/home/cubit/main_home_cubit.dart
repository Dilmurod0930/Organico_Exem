import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:organico_exem_/Screen/Home/home/state/main_home_state.dart';
import 'package:organico_exem_/core/constants/const.dart';

class HomeScreenCubit extends Cubit<MainHomeState> {
  HomeScreenCubit() : super(MainHomeInitial());
  TextEditingController searchController = TextEditingController();

  final nameControlller = TextEditingController(text: "Joe doe");
  final phoneControlller =
      TextEditingController(text: "998994878083");
  final addressControlller =
      TextEditingController(text: "rgjnkfgnmdklfgndklfngldfkngdklfgndlkfgndklfgndklfndklfgndlkfngdlkgnldkfngdlkfgndlkgndlkgndf");
  final codeController = TextEditingController();
  

  moveToSearchPage() {
    emit(MainHomeSearch());
  }

  backToHome() {
    emit(MainHomeInitial());
  }

  Set  searchedItems = {};  //!  Model Qo'shish kerak ichiga   Model searchedItemes = {}

  clear() {
    searchedItems.clear();
    emit(MainHomeSearch());
  }

  addToSearchedItems( item) { //!  Model Qo'shish kerak ichiga (Model item)
    searchedItems.add(item);
    emit(MainHomeSearch());
    debugPrint(item.name);
  }
  int random = Random().nextInt(4);
  static List<int> randoms = List.generate(4, (index) => Random().nextInt(4));

   List categoriesName = ['Vegetables', 'Fruits', 'Meats'];
   List categoriesList = [
    'assets/images/broccoli.svg',
    'assets/images/banana.svg',
    'assets/images/meat.svg',
  ];


}