import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organico_exem_/Screen/Auth/Cubit/auth_cubit.dart';
import 'package:organico_exem_/Screen/Auth/ImputFilde/imput_fild.dart';
import 'package:organico_exem_/Screen/Auth/State/auth_state.dart';
import 'package:organico_exem_/core/base/base_view.dart';
import 'package:organico_exem_/core/constants/const.dart';
import 'package:organico_exem_/core/widgets/text_widget.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController fullNamaController = TextEditingController();
    TextEditingController passwordController =
        context.watch<AuthCubit>().passwordController;
    TextEditingController confirmPasswordController =
        context.watch<AuthCubit>().confirmpasswordController;
    return BaseView(
      viewModal: ResetPasswordPage,
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
                            height: MediaQuery.of(context).size.height * 0.050),
                        // backAndTitleMethod("Reset Password"),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, "/otac_number", (route) => false);
                              },
                              icon: const Icon(
                                Icons.chevron_left,
                                size: FontConst.kExtraLargeFont,
                              ),
                            ),
                            const SizedBox(width: 55),
                            const Text(
                              "Reset Password",
                              style: TextStyle(
                                fontSize: FontConst.kLargeFont,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.050),
                        const Text(
                          "Please fill in the field below to set your current password",
                          style: TextStyle(
                            fontSize: FontConst.kMediumFont,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.050),
                        Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.020),
                              text("New Password"),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.050),
                              inputfield(
                                  context,
                                  passwordController,
                                  "Password",
                                  context.watch<AuthCubit>().obsecureText1),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.020),
                              text("New Password Confirmation"),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.016),
                              inputfield(
                                  context,
                                  confirmPasswordController,
                                  "New password confirmation",
                                  context.watch<AuthCubit>().obsecureText1),
                            ],
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.050),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.060,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              color: ColorConst.redConst,
                              borderRadius: BorderRadius.circular(25)),
                          child: TextButton(
                            child: Text(
                              "Reset password",
                              style: TextStyle(
                                  color: ColorConst.whiteConst,
                                  fontWeight: FontWeight.bold,
                                  fontSize: FontConst.kSmallFont),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, "sign_in");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            } else {
              return const Text("Hato reset Cubitda");
            }
          },
        );
      },
    );
  }
}
