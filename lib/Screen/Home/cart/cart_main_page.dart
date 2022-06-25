import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_exem_/Screen/Home/home/cubit/main_home_cubit.dart';
import 'package:organico_exem_/Screen/Home/home/state/main_home_state.dart';
import 'package:organico_exem_/core/constants/const.dart';
import 'package:organico_exem_/data/exolore_data/product-darat.dart';
import 'package:organico_exem_/model/product_model.dart';

class CartHomePage extends StatefulWidget {
  const CartHomePage({Key? key}) : super(key: key);

  @override
  State<CartHomePage> createState() => _CartHomePageState();
}

class _CartHomePageState extends State<CartHomePage> {
  List son = [1, 1];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenCubit, MainHomeState>(
        builder: (context, state) {
      if (state is MainHomeInitial) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.064),
                const Text("My Cart",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: FontConst.kMediumFont + 2,
                        fontWeight: FontWeight.w600)),
                const SizedBox(height: 48),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: ColorConst.greyConst),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20),
                    child: Column(
                      children: [
                        // ! BU BIRINCHISI
                        Row(
                          children: [
                            SvgPicture.asset("assets/icons/icon_home.svg"),
                            const SizedBox(width: 16),
                            const Text("Popey Shop - New york ",
                                style: TextStyle(
                                    fontSize: FontConst.kMediumFont,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),

                        //! IKKINCHISI BU
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.4,
                          child: ListView.builder(
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                height: 114,
                                width: 342,
                                decoration: BoxDecoration(
                                  color: ColorConst.purpleAccent,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 13),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: SvgPicture.asset(ProduckData
                                              .productDataImage[index])),
                                      const SizedBox(width: 20),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                                ProduckData
                                                    .producktDataName[index],
                                                style: const TextStyle(
                                                    fontSize:
                                                        FontConst.kMediumFont,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                            Text(
                                              "1 Kilo",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: ColorConst.greyConst),
                                            ),
                                            const Text("\$4.99 ",
                                                style: TextStyle(
                                                    fontSize:
                                                        FontConst.kMediumFont,
                                                    fontWeight:
                                                        FontWeight.w600))
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: InkWell(
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.05,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.10,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        ColorConst.greenConst,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            9.0),
                                                    child: SvgPicture.asset(
                                                        'assets/icons/minus.svg'),
                                                  ),
                                                ),
                                                onTap: () {
                                                  setState(() {
                                                    if (son[index] != 0) {
                                                      son[index] =
                                                          son[index] - 1;
                                                    }
                                                  });
                                                },
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 12,
                                            ),
                                            Expanded(
                                              child: Text(
                                                "${son[index]}",
                                                style: const TextStyle(
                                                    fontSize:
                                                        FontConst.kMediumFont +
                                                            2,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                            Expanded(
                                              child: InkWell(
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.05,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.10,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        ColorConst.greenConst,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            9.0),
                                                    child: SvgPicture.asset(
                                                        'assets/icons/plus.svg'),
                                                  ),
                                                ),
                                                onTap: () {
                                                  setState(() {
                                                    son[index] = son[index] + 1;
                                                  });
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 2,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total",
                            style: TextStyle(
                                fontSize: FontConst.kMediumFont,
                                color: ColorConst.greyConst,
                                fontWeight: FontWeight.w700)),
                        const Text("\$ 9.98",
                            style: TextStyle(
                                fontSize: FontConst.kExtraLargeFont,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                    InkWell(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.065,
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                              color: ColorConst.redConst,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(child: Text("Add to bag")),
                        ),
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, '/my_bag', (route) => false);
                        },),
                  ],
                ),
              ],
            ),
          ),
        );
      } else if (state is MainHomeLoading) {
        return const Center(child: CircularProgressIndicator.adaptive());
      } else {
        return const Text("Hato my cart cubit ");
      }
    });
  }
}
