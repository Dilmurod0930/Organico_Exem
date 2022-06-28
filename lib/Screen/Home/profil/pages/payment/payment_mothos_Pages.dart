import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organico_exem_/Screen/Home/home/cubit/main_home_cubit.dart';
import 'package:organico_exem_/core/constants/const.dart';

class AddPaymentMethodPage2 extends StatelessWidget {
  final BuildContext forcontext;
  const AddPaymentMethodPage2({Key? key, required this.forcontext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return addPaymentscaffold(forcontext);
  }

  Scaffold addPaymentscaffold(BuildContext context) {
    var dataFunction = context.read<HomeScreenCubit>();
    var data = context.watch<HomeScreenCubit>();
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // AppBarWidget(
            //   text: "Add Payment Method",
            //   onpressed: () => NavigationService.instance.pop(),
            // ),
            Padding(
                padding: PaddingMargenConst.kMediumPM,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Select Method",
                        style: TextStyle(
                            fontSize: FontConst.kMediumFont,
                            fontFamily: 'Poppin-bold',
                            fontWeight: FontWeight.bold)),
                    // Row(
                    //   children: [
                    //     Expanded(
                    //       child: RadioListTile(
                    //         title: const Text("Credit Card",
                    //             style: TextStyle(
                    //                 fontSize: FontConst.kMediumFont,
                    //                 fontFamily: 'Poppin-bold',
                    //                 fontWeight: FontWeight.bold)),
                    //         value: "1",
                    //         groupValue: dataFunction.groupValue,
                    //         onChanged: (v) {
                    //           dataFunction.radioButton(v);
                    //         },
                    //       ),
                    //     ),
                    //     Expanded(
                    //       child: RadioListTile(
                    //         title: const Text("PayPal",
                    //             style: TextStyle(
                    //                 fontSize: FontConst.kMediumFont,
                    //                 fontFamily: 'Poppin-bold',
                    //                 fontWeight: FontWeight.bold)),
                    //         value: "2",
                    //         groupValue: dataFunction.groupValue,
                    //         onChanged: (v) {
                    //           dataFunction.radioButton(v);
                    //         },
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    // const Text("Details Method",
                    //     style: TextStyle(fontSize: FontConst.kLargeFont)),
                    // SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    // const Text("Name",
                    //     style: TextStyle(fontSize: FontConst.kLargeFont)),
                    // SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    // // TextformFieldWidgets(
                    // //   hintText: "Card Holder Name",
                    // // ),
                    // SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    // const Text("Credit Card Number",
                    //     style: TextStyle(fontSize: FontConst.kLargeFont)),
                    // SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    // // TextformFieldWidgets(
                    // //   hintText: "Credit Card Number",
                    // // ),
                    // SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("CCV",
                                  style: TextStyle(
                                      fontSize: FontConst.kLargeFont)),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.01),
                              // TextformFieldWidgets(hintText: "CCV"),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.02),
                            ],
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.1),
                        // Expanded(
                        //   child: Column(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //       const Text(
                        //         "Expires",
                        //         style:
                        //             TextStyle(fontSize: FontConst.kLargeFont),
                        //       ),
                        //       SizedBox(
                        //           height: MediaQuery.of(context).size.height *
                        //               0.01),
                        //       // TextformFieldWidgets(hintText: "Expires"),
                        //       SizedBox(
                        //           height: MediaQuery.of(context).size.height *
                        //               0.02),
                        //     ],
                        //   ),
                        // )
                      ],
                    )
                  ],
                ),
              ),
          
          ],
        ),
      ),
    );
  }
}
