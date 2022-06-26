import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_exem_/Screen/Home/home/cubit/main_home_cubit.dart';
import 'package:organico_exem_/Screen/Home/home/state/main_home_state.dart';
import 'package:organico_exem_/core/constants/const.dart';
import 'package:organico_exem_/data/exolore_data/explore_data.dart';

class VegetablesCategoryPage extends StatelessWidget {
  const VegetablesCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenCubit, MainHomeState>(
        builder: (context, state) {
      if (state is MainHomeInitial) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.064,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, "/main", (route) => false);
                        },
                        icon: const Icon(
                          Icons.chevron_left,
                          size: FontConst.kExtraLargeFont,
                        ),
                      ),
                      const Text(
                        "Vegetabels",
                        style: TextStyle(
                          fontSize: FontConst.kLargeFont,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                                context, "/main", (route) => false);
                          },
                          icon: SvgPicture.asset("assets/icons/filter.svg")),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.810,
                    child: GridView.builder(
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing:
                              MediaQuery.of(context).size.width * 0.05,
                          mainAxisExtent:
                              MediaQuery.of(context).size.height * 0.32),
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: ColorConst.purpleAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: PaddingMargenConst.kSmallPM,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 80,
                                      child: SvgPicture.asset(
                                          ExploreData.exploreDataImage[index]),
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.015),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(ExploreData.exploreDataName[index],
                                          style: const TextStyle(
                                              fontSize:
                                                  FontConst.kMediumFont + 4,
                                              fontWeight: FontWeight.w600)),
                                     Text(ExploreData.exploreN[index],
                                          style: const TextStyle(
                                              fontSize:
                                                  FontConst.kMediumFont + 4,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.015),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(ExploreData.explotePrice[index],
                                          style: const TextStyle(
                                              fontSize:
                                                  FontConst.kMediumFont + 4,
                                              fontWeight: FontWeight.w600)),
                                      InkWell(
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
                                            color: ColorConst.greenConst,
                                            borderRadius:
                                                BorderRadius.circular(7),
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
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      } else if (state is MainHomeLoading) {
        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
      } else if (state is MainHomeSearch) {
        return Container();
      } else {
        return const Text("Hato state");
      }
    });
  }
}
