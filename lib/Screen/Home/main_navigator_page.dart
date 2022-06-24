import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_exem_/Screen/Home/Bloc/cubit/main_cubit.dart';
import 'package:organico_exem_/Screen/Home/Bloc/state/main_state.dart';
import 'package:organico_exem_/core/base/base_view.dart';
import 'package:organico_exem_/core/constants/const.dart';

class MainNavigatorPage extends StatefulWidget {
  const MainNavigatorPage({Key? key}) : super(key: key);

  @override
  State<MainNavigatorPage> createState() => _MainNavigatorPageState();
}

class _MainNavigatorPageState extends State<MainNavigatorPage> {
 final pages = [
    Container(),
    Container(),
    Container(),
    Container()
  ];
  @override
  Widget build(BuildContext context) {
    var pageindex = context.watch<MainCubit>().pageIndex;
    return BaseView(
        viewModal: MainNavigatorPage,
        onPageBuildre: (context, widget) {
          return BlocBuilder<MainCubit, MainState>(builder: (context, state) {
            if (state is MainInitial) {
              return Scaffold(
                body: pages[context.watch<MainCubit>().pageIndex],
                bottomNavigationBar: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  selectedLabelStyle: TextStyle(
                    color: ColorConst.blackConst,
                  ),
                  items: [
                    BottomNavigationBarItem(
                        label: "Home",
                        icon: pageindex == 0
                            ? SvgPicture.asset("assets/icons/select_home.svg")
                            : SvgPicture.asset("assets/icons/home.svg")),
                    BottomNavigationBarItem(
                        label: "Explore",
                        icon: pageindex == 1
                            ? SvgPicture.asset("assets/icons/select_search.svg")
                            : SvgPicture.asset("assets/icons/search_icon.svg")),
                    BottomNavigationBarItem(
                        label: "Cart",
                        icon: pageindex == 2
                            ? SvgPicture.asset("assets/icons/select_cart.svg")
                            : SvgPicture.asset("assets/icons/cart_icon.svg")),
                    BottomNavigationBarItem(
                        label: "Profile",
                        icon: pageindex == 3
                            ? SvgPicture.asset(
                                "assets/icons/select_profile.svg")
                            : SvgPicture.asset("assets/icons/profile.svg")),
                  ],
                  currentIndex: context.watch<MainCubit>().pageIndex,
                  onTap: (index) {
                    context.read<MainCubit>().changePage(index);
                  },
                ),
              );
            } else if (state is MainLoading) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else {
              return const Text("Hato bottom cubit ");
            }
          });
        });
  }
}
