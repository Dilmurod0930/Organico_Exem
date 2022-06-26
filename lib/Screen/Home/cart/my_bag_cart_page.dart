import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_exem_/Screen/Home/home/cubit/main_home_cubit.dart';
import 'package:organico_exem_/Screen/Home/home/state/main_home_state.dart';
import 'package:organico_exem_/core/base/base_view.dart';
import 'package:organico_exem_/core/constants/const.dart';
import 'package:organico_exem_/data/exolore_data/product-darat.dart';

class CartMyBagPage extends StatefulWidget {
  const CartMyBagPage({Key? key}) : super(key: key);

  @override
  State<CartMyBagPage> createState() => _CartMyBagPageState();
}

class _CartMyBagPageState extends State<CartMyBagPage> {
  static int son = 1;
  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModal: CartMyBagPage,
        onPageBuildre: (context, widget) {
          return BlocBuilder<HomeScreenCubit, MainHomeState>(
              builder: (context, state) {
            if (state is MainHomeInitial) {
              return Scaffold(
                body: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.height * 0.020),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.06),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, '/main', (route) => false);
                                },
                                icon: const Icon(Icons.chevron_left)),
                            const Text("My Bag",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: FontConst.kMediumFont + 2,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.028),

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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.010),

                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
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
                                    child: SvgPicture.asset(
                                        ProduckData.productDataImage[1])),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(ProduckData.producktDataName[1],
                                          style: const TextStyle(
                                              fontSize: FontConst.kMediumFont,
                                              fontWeight: FontWeight.w600)),
                                      Text(
                                        "1 Kilo",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: ColorConst.greyConst),
                                      ),
                                      const Text("\$4.99 ",
                                          style: TextStyle(
                                              fontSize: FontConst.kMediumFont,
                                              fontWeight: FontWeight.w600))
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
                                              color: ColorConst.greenConst,
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(9.0),
                                              child: SvgPicture.asset(
                                                  'assets/icons/minus.svg'),
                                            ),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              if (son != 0) {
                                                son = son - 1;
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
                                          "${son}",
                                          style: const TextStyle(
                                              fontSize:
                                                  FontConst.kMediumFont + 2,
                                              fontWeight: FontWeight.w600),
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
                                              color: ColorConst.greenConst,
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(9.0),
                                              child: SvgPicture.asset(
                                                  'assets/icons/plus.svg'),
                                            ),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              son = son + 1;
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
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.028),
                        Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.052,
                          decoration: BoxDecoration(
                            border: Border.all(color: ColorConst.redConst),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Add more",
                                  style: TextStyle(
                                      fontSize: FontConst.kMediumFont,
                                      color: ColorConst.redConst,
                                      fontWeight: FontWeight.w700)),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.height * 0.010,
                              ),
                              Icon(
                                Icons.add,
                                color: ColorConst.redConst,
                                size: FontConst.kExtraLargeFont + 6,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.028),
                        textForReseivedPage("Address"),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.020),
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                          maxLines: 3,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.020),
                        textForReseivedPage("Note"),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.020),
                        note(""),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.020),
                        textForReseivedPage("Coupon"),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.020),
                        // coupon(),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.020),
                        textForReseivedPage("Payment  Method"),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.020),
                        // paymentMethods(
                        // "assets/icons/credit_card.svg", "Credit Card"),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.020),
                        totalMethodForREseivedPage("Subtotal", "\$9.98"),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.020),
                        totalMethodForREseivedPage("Delivery change", "\$1"),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.020),
                        totalMethodForREseivedPage("Coupon", "-\$1"),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.020),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Total",
                                style: TextStyle(
                                    fontSize: FontConst.kMediumFont + 2,
                                    fontWeight: FontWeight.w700)),
                            Text(
                              "\$9.98",
                              style: TextStyle(
                                  fontSize: FontConst.kMediumFont,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.040),
                        InkWell(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.065,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                                color: ColorConst.redConst,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "Order now",
                                style: TextStyle(color: ColorConst.whiteConst),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, '/order');
                          },
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.045),
                      ],
                    ),
                  ),
                ),
              );
            } else if (state is MainHomeLoading) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else {
              return const Text("My Bag Hato berdi ");
            }
          });
        });
  }

  Row totalMethodForREseivedPage(text1, text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text1,
            style: TextStyle(
                fontSize: FontConst.kMediumFont + 2,
                fontWeight: FontWeight.w700,
                color: ColorConst.greyConst)),
        Text(text2,
            style: TextStyle(
                fontSize: FontConst.kMediumFont,
                fontWeight: FontWeight.w400,
                color: ColorConst.greyConst)),
      ],
    );
  }

  Text textForReseivedPage(text) => Text(
        text,
        style: const TextStyle(
            fontSize: FontConst.kMediumFont + 2, fontWeight: FontWeight.w700),
      );

  TextFormField note(controller) {
    return TextFormField(
      // controller: controller,
      decoration: InputDecoration(
        hintStyle: const TextStyle(
            fontSize: FontConst.kMediumFont - 2, fontWeight: FontWeight.w400),
        hintText: "Please check the product before the packaging.",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),
      maxLines: 4,
    );
  }
}
