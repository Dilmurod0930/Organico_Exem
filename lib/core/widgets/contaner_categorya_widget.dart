import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_exem_/Screen/Home/home/cubit/main_home_cubit.dart';
import 'package:organico_exem_/core/constants/const.dart';

class CategoriesWidget extends StatelessWidget {
  final int index;
  const CategoriesWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingMargenConst.kMediumPM,
      child: InkWell(
        onTap: () {
          if (index == 0) {
            Navigator.pushNamedAndRemoveUntil(
                context, "/vegetables", (route) => false);
          } else if (index == 1) {
            Navigator.pushNamedAndRemoveUntil(
                context, "/fruit", (route) => false);
          } else {
            Navigator.pushNamedAndRemoveUntil(
                context, "/meats", (route) => false);
          }
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.26,
          width: MediaQuery.of(context).size.width * 0.32,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ColorConst.yellowConst),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                    context.watch<HomeScreenCubit>().categoriesList[index],
                    width: 80),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Text(
                  context
                      .watch<HomeScreenCubit>()
                      .categoriesName[index]
                      .toString(),
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
