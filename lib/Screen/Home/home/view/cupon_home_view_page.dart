import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_exem_/Screen/Home/home/cubit/main_home_cubit.dart';
import 'package:organico_exem_/Screen/Home/home/state/main_home_state.dart';
import 'package:organico_exem_/core/constants/const.dart';
import 'package:organico_exem_/core/widgets/home/list_tile_home_widget.dart';
import 'package:organico_exem_/data/cupon_data/cupon_data.dart';

class CuponHomePage extends StatelessWidget {
  const CuponHomePage({Key? key}) : super(key: key);

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
                      const SizedBox(width: 55),
                      const Text(
                        "Forgot Password",
                        style: TextStyle(
                          fontSize: FontConst.kLargeFont,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 23, horizontal: 20),
                          margin: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          height: 91,
                          decoration: BoxDecoration(
                            color: CuponData.cuponColor[index],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 24,
                                ),
                                child:
                                    SvgPicture.asset("assets/icons/cupon.svg"),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  listTitile(CuponData.cupon[index]),
                                  listSubtitle(CuponData.subCupon[index]),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
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
