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
                        children: [
                          // SizedBox(),
                          // SizedBox(),
                          Padding(
                            padding: PaddingMargenConst.kMediumPM,
                            child: SvgPicture.asset(
                                'assets/icons/sign_in_icon.svg'),
                          )
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
        });
  }
}
