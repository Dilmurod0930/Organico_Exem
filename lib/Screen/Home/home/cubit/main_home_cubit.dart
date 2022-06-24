import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:organico_exem_/Screen/Home/home/state/main_home_state.dart';

class HomeScreenCubit extends Cubit<MainHomeState> {
  HomeScreenCubit() : super(MainHomeInitial());
  TextEditingController searchController = TextEditingController();

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
}