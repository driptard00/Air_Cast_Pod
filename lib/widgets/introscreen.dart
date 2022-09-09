import 'package:aircast_2/authentication/loginauth.dart';
import 'package:aircast_2/authentication/signupauth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 100,),
            Container(
              height: 400,
              width: 350,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("images/pod.jpg"), 
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(30)
              ),
            ),
            const SizedBox(height: 50,),
            const SizedBox(
              width: 500,
              child: Text(
                "Listen your your favorite podcasts anywhere you are",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            const SizedBox(height: 20,),
            const SizedBox(
              width: 300,
              child: Text(
                "Listen your your favorite podcasts anywhere you are",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey
                ),
              ),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    SizedBox(width: 10,),
                    Icon(Iconsax.arrow_right),
                  ],
                ),
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SignUpAuth()
                    )
                  );
                },
              ),
            ),
            const SizedBox(height: 10,),
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
      ),
      // floatingActionButton: FloatingActionButton.large(
      //   onPressed: () {
      //   },
      //   backgroundColor: HexColor("0353A4"),
      //   child: const Icon(Iconsax.arrow_right),
      // ),
      
    );
  }
}