import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:organico_exem_/Screen/Auth/Cubit/auth_cubit.dart';
import 'package:organico_exem_/core/constants/const.dart';

TextFormField inputfield(
    BuildContext context, controller, hint, bool obsecure) {
  return TextFormField(
    obscureText: obsecure,
    controller: controller,
    decoration: InputDecoration(
      hintText: hint,
      hintStyle: hStyle(),
      suffixIcon: IconButton(
          splashRadius: 13,
          onPressed: () {
            context.read<AuthCubit>().closeEye(obsecure);
          },
          icon: obsecure
              ? const Icon(Icons.visibility_off_sharp)
              : const Icon(Icons.remove_red_eye_sharp)),
      contentPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 13),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
      ),
    ),
    validator: (v) {},
  );
}

TextFormField phoneInput(controller) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: ColorConst.greenConst),
        borderRadius: BorderRadius.circular(100),
      ),
    ),
    validator: (v) {},
  );
}

TextStyle hStyle() {
  return TextStyle(
      fontSize: FontConst.kMediumFont,
      fontWeight: FontWeight.w700,
      color: ColorConst.greyConst);
}
