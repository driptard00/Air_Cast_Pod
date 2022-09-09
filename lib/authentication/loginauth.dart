import 'package:aircast_2/authentication/signupauth.dart';
import 'package:aircast_2/controller/app_state_controller.dart';
import 'package:aircast_2/screens/holderpage.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

class LoginAuth extends StatelessWidget {
  const LoginAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Consumer<AppStateController>(
          builder: (context, appStateController, child) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30,),
                  Image.asset("images/aircastlogo.png", height:150, width: 200,),
                  const Text(
                    "Welcome,",
                    style: TextStyle(
                      fontSize: 20
                    ),
                  ),
                  const Text(
                    "You can Sign in here.",
                    style: TextStyle(
                      fontSize: 20
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    children: [
                      const Text(
                        "Not a member ?",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignUpAuth()
                            )
                          );
                        }, 
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: HexColor("0353A4")
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 50,),
                  Form(
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 400,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: TextFormField(
                            key: appStateController.formKey1,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Username*",
                              hintStyle: TextStyle(color: Colors.grey),
                              suffixIcon: Icon(Iconsax.user_octagon)
                            ),
                            onChanged: (value) {
                              appStateController.usernameValue;
                            },
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          height: 60,
                          width: 400,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: TextFormField(
                            key: appStateController.formKey2,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password*",
                              hintStyle: const TextStyle(color: Colors.grey),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  appStateController.togglePassword();
                                },
                                icon: Icon(
                                  (appStateController.hidePassword == true) ? 
                                  (
                                    Iconsax.eye
                                  ) : 
                                  (
                                    Iconsax.eye_slash
                                  ),
                                  color: Colors.grey,
                                ),
                              )
                            ),
                            obscureText: appStateController.hidePassword,
                          ),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: (){}, 
                              child: Text(
                                "Forgot Password",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: HexColor("0353A4")
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 100,),
                        SizedBox(
                          height: 60,
                          width: 350,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: HexColor("0353A4"),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                              ),
                            ),
                            child: const Text(
                              "Sign in",
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                            onPressed: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const HolderPage()
                                )
                              );
                            },
                          ),
                        )
                      ],
                    )
                  )
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}