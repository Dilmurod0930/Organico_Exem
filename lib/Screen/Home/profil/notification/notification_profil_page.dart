import 'package:flutter/material.dart';
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
                              onPressed: () {},
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
                          Navigator.pushNamed(
                              context, '/'); //! Hali tugamadi  bu page
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
