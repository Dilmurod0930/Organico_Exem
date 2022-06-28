import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_exem_/Screen/Home/home/cubit/main_home_cubit.dart';
import 'package:organico_exem_/Screen/Home/home/state/main_home_state.dart';
import 'package:organico_exem_/core/base/base_view.dart';
import 'package:organico_exem_/core/constants/const.dart';

class PaymentMethodProfilPage extends StatefulWidget {
  const PaymentMethodProfilPage({Key? key}) : super(key: key);

  @override
  State<PaymentMethodProfilPage> createState() => _PaymentMethodProfilPageState();
}

class _PaymentMethodProfilPageState extends State<PaymentMethodProfilPage> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModal: PaymentMethodProfilPage,
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
                     const    SizedBox(height: 24),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, '/main', (route) => false);
                                },
                                icon: const Icon(Icons.chevron_left)),
                            const Text("Add Payment Method",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: FontConst.kMediumFont + 2,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      const    SizedBox(height: 28),
                      pMethods(
                          "assets/icons/credit_card.svg", "Credit Card"),
                     const  SizedBox(height: 16),
                      pMethods("assets/icons/paypal.svg", "Paypal"),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.566),
                        InkWell(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.065,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                                color: ColorConst.bottonRed,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "Add payment",
                                style: TextStyle(color: ColorConst.whiteConst),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, '/addMthos2');
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

InkWell pMethods(icon, type) {
  return InkWell(
    child: Container(
      height:84,
      decoration: BoxDecoration(
          border: Border.all(color: ColorConst.greyConst),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            SvgPicture.asset(icon),
            SizedBox(width: 20),
            Text(type,
                style: TextStyle(
                    fontSize: FontConst.kMediumFont,
                    fontWeight: FontWeight.w600)),
            const Expanded(child: SizedBox()),
            SvgPicture.asset("assets/icons/right.svg")
          ],
        ),
      ),
    ),
    onTap: () {},
  );
}
}
