import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_exem_/Screen/Auth/Cubit/auth_cubit.dart';
import 'package:organico_exem_/Screen/Auth/ImputFilde/imput_fild.dart';
import 'package:organico_exem_/Screen/Auth/State/auth_state.dart';
import 'package:organico_exem_/core/base/base_view.dart';
import 'package:organico_exem_/core/constants/const.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneNumber =
        context.watch<AuthCubit>().phoneNumberController;
    return BaseView(
        viewModal: const ForgotPasswordPage(),
        onPageBuildre: (context, widget) {
          return BlocBuilder<AuthCubit, AuhtState>(
            builder: (context, state) {
              if (state is AuthInitial) {
                return Scaffold(
                  body: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.060,
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, "/sign_in", (route) => false);
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
                            width: MediaQuery.of(context).size.height,
                            height: MediaQuery.of(context).size.width,
                            child: SvgPicture.asset("assets/icons/forgot.svg"),
                          ),
                          const Text(
                            "Enter your phone number",
                            style: TextStyle(
                                fontSize: FontConst.kLargeFont,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.060),
                          Text(
                            "We need to verify you. We will send you a one-time authorization code,",
                            style: TextStyle(
                                fontSize: FontConst.kMediumFont,
                                color: ColorConst.greenConst),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.060),
                                  phoneInput(phoneNumber),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.060),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.060,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                                color: ColorConst.redConst,
                                borderRadius: BorderRadius.circular(25)),
                            child: TextButton(
                              child: Text(
                                "Next",
                                style: TextStyle(
                                    color: ColorConst.whiteConst,
                                    fontWeight: FontWeight.bold,
                                    fontSize: FontConst.kMediumFont),
                              ),
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, '/otac_number', (route) => false);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              } else {
                return const Text("Hato forgot state daa");
              }
            },
          );
        });
  }
}
