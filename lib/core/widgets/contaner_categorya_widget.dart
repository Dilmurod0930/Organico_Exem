import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          debugPrint(HomeScreenCubit.randoms.toString());
        },
        child: Container(
            height: MediaQuery.of(context).size.height * 0.16,
            width: MediaQuery.of(context).size.width * 0.32,
            // decoration: AllStyles.instance
                // .productStyel(color: context.watch<HomeScreenCubit>().colorList[index]),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(context.watch<HomeScreenCubit>().categoriesList[index],
                      width: 80),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    context.watch<HomeScreenCubit>().categoriesName[index].toString(),
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)  ,
                  ),
                ],
              ),
            ),),
      ),
    );
  }
}
