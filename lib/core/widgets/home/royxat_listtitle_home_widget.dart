
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:organico_exem_/core/constants/const.dart';

Row beforeListCategoryHomeScreen(text, route) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(text,
          style: TextStyle(
              fontSize: FontConst.kMediumFont + 2, fontWeight: FontWeight.w700)),
      InkWell(
          child: Text(
            "See all",
            style: TextStyle(
                color: ColorConst.darkGrey, fontWeight: FontWeight.w400),
          ),
          onTap: () {
            // NavigationService.instance.pushNamed(route);
          })
    ],
  );
}
