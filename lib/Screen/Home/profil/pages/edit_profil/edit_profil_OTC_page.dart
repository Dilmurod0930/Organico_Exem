import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organico_exem_/Screen/Home/home/cubit/main_home_cubit.dart';
import 'package:organico_exem_/Screen/Home/home/state/main_home_state.dart';
import 'package:organico_exem_/core/base/base_view.dart';
import 'package:organico_exem_/core/constants/const.dart';

class OTCPasswordProfilPage extends StatefulWidget {
  const OTCPasswordProfilPage({Key? key}) : super(key: key);

  @override
  State<OTCPasswordProfilPage> createState() => _OTCPasswordProfilPageState();
}

class _OTCPasswordProfilPageState extends State<OTCPasswordProfilPage> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModal: OTCPasswordProfilPage,
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
                            const Text("Customer Service ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: FontConst.kMediumFont + 2,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        const SizedBox(height: 48),
                        Text(
                          "It looks you changed your phone number.  Please enter the OAC number that we have sent to your new number",
                          style: TextStyle(
                              fontSize: FontConst.kMediumFont,
                              fontWeight: FontWeight.w400,
                              color: ColorConst.greyConst),
                        ),
                        const SizedBox(height: 40),
                        TextFormField(
                          controller:
                              context.watch<HomeScreenCubit>().codeController,
                          decoration: InputDecoration(
                              hintText: " 6 Digit Code",
                              contentPadding:const  EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 13),
                              // hintStyle: hintStyle(),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100))),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            const Expanded(child: SizedBox()),
                            Text("Resend Code",
                                style: TextStyle(
                                    fontSize: FontConst.kMediumFont,
                                    color: ColorConst.greenConst,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                        SizedBox(height: 40),
                         InkWell(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.065,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                                color: ColorConst.bottonRed,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "Confirm",
                                style: TextStyle(color: ColorConst.whiteConst),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, '/main');
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
          });
        });
  }
}
