import 'package:aircast_2/authentication/loginauth.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class SignUpAuth extends StatelessWidget {
  const SignUpAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
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
                "You can Sign up here.",
                style: TextStyle(
                  fontSize: 20
                ),
              ),
              const SizedBox(height: 30,),
              Row(
                children: [
                  const Text(
                    "Already a member?",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginAuth()
                        )
                      );
                    }, 
                    child: Text(
                      "Sign in",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 175,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Firstname*",
                              hintStyle: TextStyle(color: Colors.grey),
                              suffixIcon: Icon(Iconsax.user_octagon)
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 175,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Lastname*",
                              hintStyle: TextStyle(color: Colors.grey),
                              suffixIcon: Icon(Iconsax.user_octagon)
                            ),
                          ),
                        ),
                      ],
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
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email*",
                          hintStyle: TextStyle(color: Colors.grey),
                          suffixIcon: Icon(Icons.mail_outline_rounded)
                        ),
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
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password*",
                          hintStyle: TextStyle(color: Colors.grey),
                          suffixIcon: Icon(Iconsax.eye)
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: true, 
                          onChanged: (value) {

                          },
                        ),
                        const Text(
                          "I agree to the Terms and Conditions"
                        )
                      ],
                    ),
                    const SizedBox(height: 50,),
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
                          "Sign up",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const LoginAuth()
                            )
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Column(
                      children: [
                        const Text(
                          "By clicking the sign up button you have agreed to the",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                          ),
                        ),
                        TextButton(
                          onPressed: (){},
                          child: Text(
                            "Aircast Terms & Conditions",
                            style: TextStyle(
                              color: HexColor("0353A4"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}