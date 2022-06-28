import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_exem_/core/constants/const.dart';

class MainProfilePage extends StatefulWidget {
  const MainProfilePage({Key? key}) : super(key: key);

  @override
  State<MainProfilePage> createState() => _MainProfilePageState();
}

class _MainProfilePageState extends State<MainProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.024),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.045,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Profile",
                            style: TextStyle(
                                fontSize: FontConst.kMediumFont + 2,
                                fontWeight: FontWeight.w700)),
                        InkWell(
                            child: SvgPicture.asset(
                                "assets/icons/notification.svg"),
                            onTap: () {
                              Navigator.pushNamed(context,
                                  '/notifi'); //! Hali tugamadi  bu page
                            },)
                      ],),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.0028),
                CircleAvatar(
                  radius: MediaQuery.of(context).size.height * 0.065,
                  backgroundImage: const NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ00TXW0bzYohy2T8N4GXeEU4FXn0blEsommA&usqp=CAU",
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                const Text("Jane Doe",
                    style: TextStyle(
                        fontSize: FontConst.kMediumFont + 2,
                        fontWeight: FontWeight.w700)),
                SizedBox(  
                  height: MediaQuery.of(context).size.height * 0.008,
                ),
                Text("(99) XXX-XX-XX",
                    style: TextStyle(
                        fontSize: FontConst.kMediumFont + 2,
                        fontWeight: FontWeight.w700,
                        color: ColorConst.greyConst)),
                SizedBox(height: MediaQuery.of(context).size.height * 0.044),
                bolmlar("edit_profile", "Edit Profile", "/edit_profil"),
                bolmlar("my_orders", "My orders", "/profil_order"),
                bolmlar("my_wishlist", "My Wishlist", "wishlist"),
                bolmlar("address", "My Address", "/my_adres"),
                bolmlar("payment", "Payment Methos", "/payment_methos"),
                bolmlar("customer_service", "Customer Service",
                    "/customer_password"),
                bolmlar(
                    "change_password", "Change Password", "/change_password"),
                logout("logout", "Logout", "/sing_in"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InkWell bolmlar(icon, text, routeName) {
    return InkWell(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.068,
        child: Row(
          children: [
            SvgPicture.asset("assets/icons/$icon.svg"),
            SizedBox(width: MediaQuery.of(context).size.height * 0.020),
            Text(text,
                style: const TextStyle(
                    fontSize: FontConst.kMediumFont,
                    fontWeight: FontWeight.w600)),
            const Expanded(child: SizedBox()),
            SvgPicture.asset("assets/icons/right.svg"),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }

  InkWell logout(icon, text, routeName) {
    return InkWell(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.068,
        child: Row(
          children: [
            SvgPicture.asset("assets/icons/$icon.svg"),
            SizedBox(width: MediaQuery.of(context).size.height * 0.020),
            Text(text,
                style: const TextStyle(
                    fontSize: FontConst.kMediumFont,
                    fontWeight: FontWeight.w600)),
            const Expanded(child: SizedBox()),
            SvgPicture.asset("assets/icons/right.svg"),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamedAndRemoveUntil(context, routeName, (route) => false);
      },
    );
  }
}
