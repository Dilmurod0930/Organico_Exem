import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:organico_exem_/Screen/Auth/State/auth_state.dart';

class AuthCubit extends Cubit<AuhtState> {
  AuthCubit() : super(AuthInitial());
  bool isHidden = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController =
      TextEditingController(text: "+998");
  TextEditingController smsController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  final key = GlobalKey<FormState>();
  bool obsecureText1 = false;
  bool obsecureText2 = false;
  bool isCheked = false;
  changeHiddenPass() {
    isHidden = !isHidden;
    emit(AuthInitial());
  }

  closeEye(bool bool) {
    bool = !bool;
    emit(AuthInitial());
  }
}
