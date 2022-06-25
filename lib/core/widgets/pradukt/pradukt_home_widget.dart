import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_exem_/Screen/Home/home/cubit/main_home_cubit.dart';
import 'package:organico_exem_/core/constants/const.dart';
import 'package:organico_exem_/data/exolore_data/product-darat.dart';

class PraduktHomeWidget extends StatelessWidget {
  final int index;
  const PraduktHomeWidget({Key? key, required this.index}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingMargenConst.kMediumPM,
      child: InkWell(
        onTap: () {
          if (index == 0) {
            Navigator.pushNamedAndRemoveUntil(
                context, "/paorika", (route) => false);
          } else if (index == 1) {
            Navigator.pushNamedAndRemoveUntil(
                context, "/fruit", (route) => false);
          } else {
            Navigator.pushNamedAndRemoveUntil(
                context, "/poptato", (route) => false);
          }
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.26,
          width: MediaQuery.of(context).size.width * 0.46,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ProduckData.productColor[index]),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                      ProduckData.productDataImage[index],
                      width: 120),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(ProduckData.producktDataName[index],
                          style: const TextStyle(
                              fontSize: FontConst.kMediumFont + 2,
                              fontWeight: FontWeight.w600)),
                      Text(ProduckData.exploreN[index],
                          style: const TextStyle(
            fontSize: FontConst.kMediumFont + 2, fontWeight: FontWeight.w400)),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(ProduckData.explotePrice[index],
                          style: const TextStyle(
                              fontSize: FontConst.kMediumFont + 4,
                              fontWeight: FontWeight.w600)),
                      InkWell(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.10,
                          decoration: BoxDecoration(
                            color: ColorConst.greenConst,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 22,
                            color: ColorConst.whiteConst,
                          ),
                        ),
                        onTap: () {}, //! On tap
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
