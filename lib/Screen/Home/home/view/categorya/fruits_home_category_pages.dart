
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';import 'package:organico_exem_/Screen/Home/home/cubit/main_home_cubit.dart';
import 'package:organico_exem_/Screen/Home/home/state/main_home_state.dart';
import 'package:organico_exem_/core/constants/const.dart';

class FruitsCategoryPage extends StatelessWidget {
  const FruitsCategoryPage({Key? key}) : super(key: key);

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
                        "Fruits",
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
