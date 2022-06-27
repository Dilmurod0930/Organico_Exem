import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_exem_/Screen/Auth/ImputFilde/imput_fild.dart';
import 'package:organico_exem_/Screen/Home/home/cubit/main_home_cubit.dart';
import 'package:organico_exem_/Screen/Home/home/state/main_home_state.dart';
import 'package:organico_exem_/core/base/base_view.dart';
import 'package:organico_exem_/core/constants/const.dart';
import 'package:organico_exem_/core/widgets/text_widget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModal: EditProfilePage,
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
                         SizedBox(height: MediaQuery.of(context).size.height *0.024),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, '/main', (route) => false);
                                },
                                icon: const Icon(Icons.chevron_left)),
                            const Text("Edit Profile ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: FontConst.kMediumFont + 2,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.032),
                        Center(
                          child: SizedBox(
                            height: 170,
                            width: 170,
                            child: Stack(
                              children: [
                                const Positioned(
                                  child: CircleAvatar(radius: 85),
                                ),
                                Positioned(
                                  bottom: 2,
                                  right: 0,
                                  child: SvgPicture.asset(
                                      "assets/icons/camera.svg"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.032),
                        Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text("Name"),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.010),
                              TextFormField(
                                controller: context
                                    .watch<HomeScreenCubit>()
                                    .nameControlller,
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 13),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    )),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.016),
                              text("Phone"),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.010),
                              phoneInput(context
                                  .watch<HomeScreenCubit>()
                                  .phoneControlller),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.016),
                              text("Address"),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.010),
                              TextFormField(
                                controller: context
                                    .watch<HomeScreenCubit>()
                                    .addressControlller,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(16))),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.0100),
                            ],
                          ),
                        )
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
