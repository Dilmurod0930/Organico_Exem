import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organico_exem_/Screen/Auth/Cubit/auth_cubit.dart';
import 'package:organico_exem_/Screen/Auth/ImputFilde/imput_fild.dart';
import 'package:organico_exem_/Screen/Auth/State/auth_state.dart';
import 'package:organico_exem_/core/base/base_view.dart';
import 'package:organico_exem_/core/constants/const.dart';
import 'package:organico_exem_/core/widgets/text_widget.dart';

// ! Sign Up
class NewRegisrationPage extends StatefulWidget {
  const NewRegisrationPage({Key? key}) : super(key: key);

  @override
  State<NewRegisrationPage> createState() => _NewRegisrationPageState();
}

class _NewRegisrationPageState extends State<NewRegisrationPage> {
  @override
  Widget build(BuildContext context) {
    bool isCheked = context.watch<AuthCubit>().isCheked;
    TextEditingController passwordController =
        context.watch<AuthCubit>().passwordController;
    TextEditingController confirmPasswordController =
        context.watch<AuthCubit>().confirmpasswordController;
    TextEditingController nameController =
        context.watch<AuthCubit>().nameController;
    return BaseView(
      viewModal: const NewRegisrationPage(),
      onPageBuildre: (context, widget) {
        return BlocBuilder<AuthCubit, AuhtState>(builder: (contex, state) {
          if (state is AuthInitial) {
            return Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.050),

                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, "/", (route) => false);
                            },
                            icon: const Icon(
                              Icons.chevron_left,
                              size: FontConst.kExtraLargeFont,
                            ),
                          ),
                          const SizedBox(width: 55),
                          const Text(
                            "New Registration",
                            style: TextStyle(
                              fontSize: FontConst.kLargeFont,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.050),
                      Text(
                          "It took like you don't have an account on this number. Please let us know some information for a secure service.",
                          style: TextStyle(
                              fontSize: FontConst.kMediumFont,
                              fontWeight: FontWeight.w400,
                              color: ColorConst.greyConst)),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.046),
                      Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text("Full name"),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.016),
                            TextFormField(
                              controller: nameController,
                              decoration: InputDecoration(
                                hintText: "Full name",
                                hintStyle: hStyle(),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 13),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.016),
                            text("Password"),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.012),
                            inputfield(context, passwordController, "Password",
                                contex.watch<AuthCubit>().obsecureText1),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.016),
                            text("Confirm Password"),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.012),
                            inputfield(
                                contex,
                                confirmPasswordController,
                                "Confirm Passowrd",
                                contex.watch<AuthCubit>().obsecureText2)
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.026),
                      Row(
                        children: [
                          Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                              value: isCheked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isCheked = value!;
                                });
                              }),
                          const Text("I accept the"),
                          Text(
                            "Terms of Use",
                            style: TextStyle(color: ColorConst.greenConst),
                          ),
                          const Text(" and "),
                          Text("Privacy policy",
                              style: TextStyle(color: ColorConst.greenConst)),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.050),
                       Container(
                          height: MediaQuery.of(context).size.height * 0.060,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              color: ColorConst.redConst,
                              borderRadius: BorderRadius.circular(25)),
                          child: TextButton(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: ColorConst.whiteConst,
                                  fontWeight: FontWeight.bold,
                                  fontSize: FontConst.kMediumFont),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, "sign_in");
                            },
                          ),
                        ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.026),
                      Center(
                        child: Text("or use",
                            style: TextStyle(color: ColorConst.greenConst)),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.026),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.060,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            border: Border.all(color: ColorConst.greyConst),
                              color: ColorConst.whiteConst,
                              borderRadius: BorderRadius.circular(25)),
                          child: TextButton(
                            child: Text(
                              "Sign Up with Google",
                              style: TextStyle(
                                  color: ColorConst.blackConst,
                                  fontWeight: FontWeight.bold,
                                  fontSize: FontConst.kMediumFont),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, "sign_in");
                            },
                          ),
                        ),
                      
                    ],
                  ),
                ),
              ),
            );
          } else {
            return Scaffold(
              appBar: AppBar(title: const Text("Hato cubitda")),
            );
          }
        });
      },
    );
  }

  signUpCheck(String passwordController, String confirmPasswordController) {
    if (passwordController == confirmPasswordController) {
      Navigator.pushNamed(context, "forgot_password");
    } else {
      // SnackBarWidget.showSnackBar(
      //     context, "Confirm password incorrect", Colors.red);
    }
  }
}
