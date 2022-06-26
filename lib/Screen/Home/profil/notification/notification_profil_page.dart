import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_exem_/Screen/Home/Bloc/cubit/main_cubit.dart';
import 'package:organico_exem_/core/constants/const.dart';

class MainProfilNotificationPage extends StatelessWidget {
  const MainProfilNotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.065,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, '/profil', (route) => false);
                              },
                              icon: const Icon(Icons.chevron_left)),
                          const Text("Notification",
                              style: TextStyle(
                                  fontSize: FontConst.kMediumFont + 2,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                      InkWell(
                        child: const Icon(
                          Icons.settings,
                          size: 22,
                        ),
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context,
                              '/notifi_setting',
                              (route) => false); //! Hali tugamadi  bu page
                        },
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    notifications(
                      color: const Color(0xFFF2D9De),
                      context: context,
                      // darkIcon: 'assets/svg/profilesvg/notificationicons/cardark.svg',
                      // lightIcon: 'assets/svg/profilesvg/notificationicons/car.svg',
                      title: 'Order Status',
                      desc:
                          'Congratulations, your order has been sent. You can check here.',
                      date: '25 Feb 2021 06:15 AM',
                      svg: SvgPicture.asset('assets/images/moshin.svg')
                    ),
                    notifications(
                      color: const Color(0xFFF2D9De),
                      context: context,
                      title: 'New Promo',
                      desc:
                          '15% discount for all purchases above  Check it now.',
                      date: '25 Feb 2021 05:00 AM',
                      svg: SvgPicture.asset('assets/images/moshin.svg')
                    ),
                    notifications(
                      color: ColorConst.whiteConst,
                      context: context,
                      title: 'Tips',
                      desc:
                          "Let’s learn how to maximize the use of vouchers in the application.",
                      date: '25 Feb 2021 05:00 AM',
                     svg: SvgPicture.asset('assets/images/email.svg')
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container notifications({
    required BuildContext context,
    required String title,
    required String desc,
    required String date,
    Color? color,
    Icon? icon,
    SvgPicture? svg,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.height * 0.95,
      color: color,
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.068,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: ColorConst.redConst,
            ),
            child: svg,
          ),
          const SizedBox(width: 18),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: FontConst.kMediumFont),
                ),
                const SizedBox(height: 10.0),
                Text(
                  desc,
                  style: TextStyle(color: ColorConst.greyConst),
                ),
                const SizedBox(height: 5.0),
                Text(
                  date,
                  style: TextStyle(color: ColorConst.greyConst),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


/*

  Container notifications(
      {required BuildContext context,
      required String title,
      required String desc,
      required String date,
      required String lightIcon,
      required String darkIcon}) {
    return Container(
      height: context.h * 0.15,
      width: context.h * 0.55,
      color: context.watch<MainCubit>().isDark
          ? Color(0xff2ECC71).withOpacity(0.15)
          : Color(0xffAA0023).withOpacity(0.15),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          context.watch<MainCubit>().isDark
              ? SvgPicture.asset(darkIcon)
              : SvgPicture.asset(lightIcon),
          SizedBox(
            width: context.h * 0.024,
          ),
          SizedBox(
            height: context.h * 0.12,
            width: context.h * 0.35,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: MyTextStyle.textStyle(
                    context: context,
                    size: SizeConst.elevatedbuttontextsize,
                  ),
                ),
                SizedBox(height: 10.0,),
                Text(
                  desc,
                  style: TextStyle(
                    color: ColorConst.greyColor,
                  ),
                ),
                SizedBox(height: 5.0,),
                Text(
                  date,
                  style: TextStyle(
                    color: ColorConst.greyColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
 */