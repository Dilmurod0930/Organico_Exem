import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_exem_/Screen/Auth/Cubit/auth_cubit.dart';
import 'package:organico_exem_/Screen/Auth/State/auth_state.dart';
import 'package:organico_exem_/core/base/base_view.dart';
import 'package:organico_exem_/core/constants/const.dart';

class SignInPageAuth extends StatefulWidget {
  const SignInPageAuth({Key? key}) : super(key: key);

  @override
  State<SignInPageAuth> createState() => _SignInPageAuthState();
}

class _SignInPageAuthState extends State<SignInPageAuth> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneNummberController =
        context.watch<AuthCubit>().phoneNumberController;
    TextEditingController passwordController =
        context.watch<AuthCubit>().passwordController;
    GlobalKey key = context.watch<AuthCubit>().key;
    return BaseView(
      viewModal: const SignInPageAuth(),
      onPageBuildre: (context, widget) {
        return BlocBuilder<AuthCubit, AuhtState>(
          builder: (context, state) {
            if (state is AuthInitial) {
              return Scaffold(
                body: SingleChildScrollView(
                  child: Padding(
                    padding: PaddingMargenConst.kExtraLargePM,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.045),
                        Padding(
                          padding: PaddingMargenConst.kMediumPM,
                          child:
                              SvgPicture.asset('assets/icons/sign_in_icon.svg'),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.020),
                        const Text(
                          "Welcome",
                          style: TextStyle(
                            fontSize: FontConst.kLargeFont,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.020),
                        Text(
                          "Welcome to organico Mobile Apps. Please fill in the field delow to sign in",
                          style: TextStyle(
                            fontSize: FontConst.kMediumFont,
                            fontWeight: FontWeight.w400,
                            color: ColorConst.greyConst,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.030),
                        Form(
                          key: key,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: phoneNummberController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 13),
                                  border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: ColorConst.redConst),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                validator: (v) {
                                  if (v!.isEmpty) {
                                    return "Enter new password";
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.027,
                              ),
                              TextFormField(
                                controller: context
                                    .watch<AuthCubit>()
                                    .passwordController,
                                obscureText:
                                    context.watch<AuthCubit>().isHidden,
                                keyboardType: TextInputType.visiblePassword,
                                textInputAction: TextInputAction.done,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 12),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: SvgPicture.asset(
                                        "assets/icons/lock.svg"),
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      context.watch<AuthCubit>().isHidden
                                          ? Icons.visibility_off
                                          : Icons.remove_red_eye,
                                    ),
                                    onPressed: () {
                                      BlocProvider.of<AuthCubit>(context)
                                          .changeHiddenPass();
                                    },
                                  ),
                                  hintText: "Enter your password...",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                validator: (pass) {
                                  if (pass!.isEmpty) {
                                    return "Enter new password";
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.040),
                              Padding(
                                padding: const EdgeInsets.only(left: 200),
                                child: TextButton(
                                  child: Text(
                                    "Forgot password",
                                    style: TextStyle(
                                        fontSize: FontConst.kMediumFont,
                                        fontWeight: FontWeight.w700,
                                        color: ColorConst.greenConst),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamedAndRemoveUntil(context,
                                        "/forgot_pass", (route) => false);
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
              );
            } else {
              return const Text('Hatolik yuz berdi ');
            }
          },
        );
      },
    );
  }
}
