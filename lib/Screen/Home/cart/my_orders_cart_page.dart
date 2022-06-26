import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:organico_exem_/core/base/base_view.dart';
import 'package:organico_exem_/core/constants/const.dart';

class CartMyOrdersPage extends StatefulWidget {
  const CartMyOrdersPage({Key? key}) : super(key: key);

  @override
  State<CartMyOrdersPage> createState() => _CartMyOrdersPageState();
}

class _CartMyOrdersPageState extends State<CartMyOrdersPage> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModal: CartMyOrdersPage,
      onPageBuildre: (context, widget) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: SizedBox(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.height * 0.020),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * 0.06),
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
                      SizedBox(height: MediaQuery.of(context).size.height * 0.028),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
