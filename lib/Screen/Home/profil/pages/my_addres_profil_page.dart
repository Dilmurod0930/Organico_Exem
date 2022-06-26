import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_exem_/Screen/Home/home/cubit/main_home_cubit.dart';
import 'package:organico_exem_/Screen/Home/home/state/main_home_state.dart';
import 'package:organico_exem_/core/base/base_view.dart';
import 'package:organico_exem_/core/constants/const.dart';

class MyAddressProfilPage extends StatefulWidget {
  const MyAddressProfilPage({Key? key}) : super(key: key);

  @override
  State<MyAddressProfilPage> createState() => _MyAddressProfilPageState();
}

class _MyAddressProfilPageState extends State<MyAddressProfilPage> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModal: MyAddressProfilPage,
      onPageBuildre: (context, widget) {
        return BlocBuilder<HomeScreenCubit, MainHomeState>(
          builder: (context, state) {
            if (state is MainHomeInitial) {
              return Scaffold(
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, '/profil', (route) => false);
                                },
                                icon: const Icon(Icons.chevron_left)),
                            const Text("My Address ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: FontConst.kMediumFont + 2,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        const SizedBox(height: 28),
                        adrs("Home", "375 W gray st utica Pensilvaniya 1234",
                            ),
                        const SizedBox(height: 20),
                        adrs("Work", "2715Ash Dr San Joes , South Dakota 83495",),
                         SizedBox(height: MediaQuery.of(context).size.height * 0.526),
                         InkWell(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.065,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                                color: ColorConst.bottonRed,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "Add address",
                                style: TextStyle(color: ColorConst.whiteConst),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, '/');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            } else if (state is MainHomeLoading) {
              return const Center(child: CircularProgressIndicator.adaptive());
            } else {
              return const Text("Hato edit profile  stateda");
            }
          },
        );
      },
    );
  }

  InkWell adrs(text1, text2, ) {
    return InkWell(
      child: Container(
        height: 91,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: ColorConst.greyConst),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text1,
                    style: const TextStyle(
                        fontSize: FontConst.kMediumFont,
                        fontWeight: FontWeight.w600)),
                const SizedBox(height: 8),
                Text(
                  text2,
                  style: const TextStyle(fontWeight: FontWeight.w400),
                )
              ],
            ),
            SvgPicture.asset("assets/icons/right.svg")
          ],
        ),
      ),
    );
  }
}
