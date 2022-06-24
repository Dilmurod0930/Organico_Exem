import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organico_exem_/Screen/Auth/Cubit/auth_cubit.dart';
import 'package:organico_exem_/Screen/Auth/ImputFilde/imput_fild.dart';
import 'package:organico_exem_/Screen/Auth/State/auth_state.dart';
import 'package:organico_exem_/core/base/base_view.dart';
import 'package:organico_exem_/core/constants/const.dart';

class OTACNummberPage extends StatefulWidget {
  const OTACNummberPage({Key? key}) : super(key: key);

  @override
  State<OTACNummberPage> createState() => _OTACNummberPageState();
}

class _OTACNummberPageState extends State<OTACNummberPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController smsController =
        context.watch<AuthCubit>().smsController;
    TextEditingController passwordController =
        context.watch<AuthCubit>().passwordController;
    TextEditingController nameController =
        context.watch<AuthCubit>().nameController;
    TextEditingController phoneNumberController =
        context.watch<AuthCubit>().phoneNumberController;
    return BaseView(
      viewModal: OTACNummberPage,
      onPageBuildre: (context, widget) {
        return BlocBuilder<AuthCubit, AuhtState>(
          builder: (context, state) {
            if (state is AuthInitial) {
              return Scaffold(
                body: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.045,
                      ),
                       Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, "/forgot", (route) => false);
                              },
                              icon: const Icon(
                                Icons.chevron_left,
                                size: FontConst.kExtraLargeFont,
                              ),
                            ),
                            const SizedBox(width: 55),
                            const Text(
                              "OTAC Number ",
                              style: TextStyle(
                                fontSize: FontConst.kLargeFont,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.029,
                      ),
                      const Text("Enter Authorization code",
                          style: TextStyle(
                              fontSize: FontConst.kLargeFont,
                              fontWeight: FontWeight.w700)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.029,
                      ),
                      const Text("We have sent SMS to: ",
                          style: TextStyle(fontSize: FontConst.kMediumFont)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.010,
                      ),
                      const Text("+998(XX) XXX-XX-XX",
                          style: TextStyle(
                              fontSize: FontConst.kMediumFont + 2,
                              fontWeight: FontWeight.w700)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.029,
                      ),
                      TextFormField(
                        controller: smsController,
                        decoration: InputDecoration(
                          hintText: "6 Digit Code ",
                          hintStyle: hStyle(),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        validator: (v) {},
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.029,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.55),
                        child: TextButton(
                            onPressed: () {},
                            child: Text("Resend code",
                                style: TextStyle(
                                    fontSize: FontConst.kMediumFont,
                                    fontWeight: FontWeight.w700,
                                    color: ColorConst.greenConst))),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.042,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.060,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            color: ColorConst.redConst,
                            borderRadius: BorderRadius.circular(25)),
                        child: TextButton(
                          child: Text(
                            "Next",
                            style: TextStyle(
                                color: ColorConst.whiteConst,
                                fontWeight: FontWeight.bold,
                                fontSize: FontConst.kMediumFont),
                          ),
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                                context, '/reset_password', (route) => false);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return const Text("Hato confirm cubitda");
            }
          },
        );
      },
    );
    // }
    // FirebaseFirestore firestore = FirebaseFirestore.instance;
    // Future writeTodb(String phoneNumberController,String nameController, String passwordController) async{
    //  await firestore.collection("users").doc(phoneNumberController).set(
    //     {
    //       "code" : passwordController,
    //       "name" : nameController,
    //     }
    //   )
    //   .then((value) {
    //     debugPrint("Successfully writed to DB");
    //   }).onError((error, stackTrace){
    //     debugPrint("Error on Write: $error");
    //   });
  }
}
