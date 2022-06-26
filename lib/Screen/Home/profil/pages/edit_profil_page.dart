import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_exem_/Screen/Home/home/cubit/main_home_cubit.dart';
import 'package:organico_exem_/Screen/Home/home/state/main_home_state.dart';
import 'package:organico_exem_/core/base/base_view.dart';
import 'package:organico_exem_/core/constants/const.dart';

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
                        SizedBox(
                          height: 24,
                        ),
                         Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, '/my_bag', (route) => false);
                              },
                              icon: const Icon(Icons.chevron_left)),
                          const Text("My Orders ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: FontConst.kMediumFont + 2,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                        SizedBox(height: 32),
                        Center(
                          child: SizedBox(
                            height: 170,
                            width: 170,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: CircleAvatar(
                                    radius: 85,
                                  ),
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
                        SizedBox(height: 32),
                        Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // textBeforeInput("Name"),
                              SizedBox(height: 10),
                              TextFormField(
                                controller:
                                    context.watch<HomeScreenCubit>().nameControlller,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal:16,
                                        vertical: 13),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          100),
                                    )),
                              ),
                              SizedBox(height: 16),
                              // textBeforeInput("Phone"),
                              SizedBox(height: 10),
                              // phoneInput(
                              //     context.watch<HomeScreenCubit>().phoneControlller),
                              SizedBox(height:16),
                              // textBeforeInput("Address"),
                              SizedBox(height: 10),
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
                                height: 100,
                              ),
                              InkWell(
                                // child: mainButton("Save"),
                                onTap: () {},
                              ),
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
