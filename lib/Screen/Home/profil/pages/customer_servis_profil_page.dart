import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_exem_/Screen/Home/home/cubit/main_home_cubit.dart';
import 'package:organico_exem_/Screen/Home/home/state/main_home_state.dart';
import 'package:organico_exem_/core/base/base_view.dart';
import 'package:organico_exem_/core/constants/const.dart';

class CustomerServiceProfilPage extends StatefulWidget {
  const CustomerServiceProfilPage({Key? key}) : super(key: key);

  @override
  State<CustomerServiceProfilPage> createState() =>
      _CustomerServiceProfilPageState();
}

class _CustomerServiceProfilPageState extends State<CustomerServiceProfilPage> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModal: CustomerServiceProfilPage,
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
                              "Customer Service ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: FontConst.kMediumFont + 2,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        //!  Chala Page
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
