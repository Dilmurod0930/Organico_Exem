import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_exem_/Screen/Auth/ImputFilde/imput_fild.dart';
import 'package:organico_exem_/Screen/Home/home/cubit/main_home_cubit.dart';
import 'package:organico_exem_/Screen/Home/home/state/main_home_state.dart';
import 'package:organico_exem_/core/widgets/contaner_categorya_widget.dart';
import 'package:organico_exem_/core/widgets/home/list_tile_home_widget.dart';
import 'package:organico_exem_/core/widgets/home/maxsulot_home_widget.dart';
import 'package:organico_exem_/core/widgets/home/royxat_listtitle_home_widget.dart';
import 'package:organico_exem_/service/data_service.dart';

class HomeMainPage extends StatefulWidget {
  const HomeMainPage({Key? key}) : super(key: key);

  @override
  State<HomeMainPage> createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage> {
  // var vegetable = Data.data[0];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenCubit, MainHomeState>(
        builder: (context, state) {
      if (state is MainHomeInitial) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.094,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        hintText: "Search anything here",
                        hintStyle: hStyle(),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 13),
                          child:
                              SvgPicture.asset("assets/icons/search_any.svg"),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        )),
                    onTap: () {
                      context.read<HomeScreenCubit>().moveToSearchPage();
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.035),
                  InkWell(
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: SvgPicture.asset("assets/icons/cupon.svg"),
                      trailing: SvgPicture.asset("assets/icons/right.svg"),
                      title: listTitile("You have 3 coupon"),
                      subtitle: listSubtitle("Let's use this coupon"),
                    ),
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/cupon', (route) => false);
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                  beforeListCategoryHomeScreen("Choose Category", "vegetables"),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.016),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.184,
                    child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CategoriesWidget(index: index);
                      },
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.028),
                  beforeListCategoryHomeScreen("Best Selling", "vegetables"),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.016),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.342,
                    child: Container(),
                  )
                ],
              ),
            ),
          ),
        );
      } else if (state is MainHomeLoading) {
        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
      } else if (state is MainHomeSearch) {
        return Container();
      } else {
        return const Text("Hato state");
      }
    });
  }
}
