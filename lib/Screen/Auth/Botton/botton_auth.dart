import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organico_exem_/core/constants/const.dart';
import 'package:flutter/material.dart';

Container authButton(text) {
  return Container(
    alignment: Alignment.center,
    height: ScreenUtil().setHeight(52),
    decoration: BoxDecoration(
      color: ColorConst.redConst, 
      borderRadius: BorderRadius.circular(100),
    ),
    child: Text(
      text,
      style: TextStyle(
          fontSize: FontConst.kMediumFont,
          color: ColorConst.whiteConst,
          fontWeight: FontWeight.w700),
    ),
  );
}
