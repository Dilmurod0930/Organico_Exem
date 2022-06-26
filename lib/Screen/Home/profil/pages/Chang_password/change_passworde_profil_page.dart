import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_exem_/Screen/Auth/ImputFilde/imput_fild.dart';
import 'package:organico_exem_/Screen/Home/home/cubit/main_home_cubit.dart';
import 'package:organico_exem_/Screen/Home/home/state/main_home_state.dart';
import 'package:organico_exem_/Screen/Home/profil/pages/Chang_password/cubit/change_password_cubit.dart';
import 'package:organico_exem_/core/base/base_view.dart';
import 'package:organico_exem_/core/constants/const.dart';
import 'package:organico_exem_/core/widgets/text_widget.dart';

class ChangePasswordProfilPage extends StatefulWidget {
  const ChangePasswordProfilPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordProfilPage> createState() =>
      _ChangePasswordProfilPageState();
}

class _ChangePasswordProfilPageState extends State<ChangePasswordProfilPage> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModal: ChangePasswordProfilPage,
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
                                      context, '/main', (route) => false);
                                },
                                icon: const Icon(Icons.chevron_left)),
                            const Text(
                              "Change Password ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: FontConst.kMediumFont + 2,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(height:  MediaQuery.of(context).size.height *.048),
                     const  Text(
                          "Please fill in the field below to change your current password",
                          style: TextStyle(
                              fontSize: FontConst.kMediumFont,
                              fontWeight: FontWeight.w400)),
                      SizedBox(height:  MediaQuery.of(context).size.height *.048),
                               Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text("Current Password"),
                            SizedBox(height: MediaQuery.of(context).size.height *.017),
                            inputfield(
                                context,
                                context
                                    .watch<ChangePasswordCubit>()
                                    .currentPasswordController,
                                "Current Password",
                                true),
                            SizedBox(height: MediaQuery.of(context).size.height *.019),
                            text("Current Password"),
                            SizedBox(height: MediaQuery.of(context).size.height *.017),
                            inputfield(
                                context,
                                context
                                    .watch<ChangePasswordCubit>()
                                    .passwordConroller,
                                "New Password",
                                true),
                            SizedBox(height:MediaQuery.of(context).size.height *.019),
                            text("Current Password"),
                            SizedBox(height: MediaQuery.of(context).size.height *.017),
                            inputfield(
                                context,
                                context
                                    .watch<ChangePasswordCubit>()
                                    .confirmpasswordController,
                                "New Password Confirmation",
                                true),
                          ],
                        ),
                      ),SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                        InkWell(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.065,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                                color: ColorConst.bottonRed,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "Save password",
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
          });
        });
  }
}
