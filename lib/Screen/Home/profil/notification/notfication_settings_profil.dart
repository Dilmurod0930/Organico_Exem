import 'package:flutter/material.dart';
import 'package:organico_exem_/core/constants/const.dart';

class MainProfilNotficatonSettingsPage extends StatelessWidget {
  const MainProfilNotficatonSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.065,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(context, '/notifi',
                            (route) => false); //! Route pageni yozish kerak
                      },
                      icon: const Icon(Icons.chevron_left)),
                  const Text(
                    "Notification Settings",
                    style: TextStyle(
                        fontSize: FontConst.kMediumFont + 2,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SwitchListTile.adaptive(
                title: const Text("In App Notification",
                    style: TextStyle(fontSize: FontConst.kMediumFont)),
                value: true,
                onChanged: (v) {}),
            SwitchListTile.adaptive(
                title: const Text("New Promo",
                    style: TextStyle(fontSize: FontConst.kMediumFont)),
                value: true,
                onChanged: (v) {
                
                }),
            SwitchListTile.adaptive(
                title: const Text("Tips & trick",
                    style: TextStyle(fontSize: FontConst.kMediumFont)),
                value: true,
                onChanged: (v) {}),
            SwitchListTile.adaptive(
                title: const Text("Update Application",
                    style: TextStyle(fontSize: FontConst.kMediumFont)),
                value: false,
                onChanged: (v) {})
          ],
        ),
      ),
    );
  }
}
