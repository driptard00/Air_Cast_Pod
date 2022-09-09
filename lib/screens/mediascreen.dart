import 'package:aircast_2/controller/app_state_controller.dart';
import 'package:aircast_2/widgets/bottomplay.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

class MediaScreen extends StatelessWidget {
  const MediaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Consumer<AppStateController>(
          builder: (context, appStateController, child) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: const Icon(Iconsax.arrow_left, size: 30,)
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: (){},
                              icon: const Icon(Iconsax.notification, size: 30,)
                          ),
                          const SizedBox(width: 10,),
                          IconButton(
                            onPressed: (){},
                            icon: const Icon(Icons.more_vert,size: 30,)
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 5,),
                  const Text(
                    "The Dangers Of Technology",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Text(
                    "Eldorado colon",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: HexColor("0353A4")
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 70,
                        width: 180,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: HexColor("0353A4"),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          onPressed: (){}, 
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Iconsax.play),
                              SizedBox(width: 10,),
                              Text(
                                "Play All",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                        width: 180,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                            side: BorderSide(
                              color: HexColor("0353A4"),
                              width: 2
                            ),
                            primary: Colors.white
                          ),
                          onPressed: (){}, 
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.bookmark_outline, color: Colors.black,),
                              SizedBox(width: 10,),
                              Text(
                                "Subscribe",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  ListView.separated(
                    primary: false,
                    shrinkWrap: true,
                    itemBuilder: ((context, index) {
                      return InkWell(
                        onTap: (){
                          showBottomSheet(
                            enableDrag: false,
                            context: context, 
                            builder: (context)=> const BottomPlay()
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  color: Colors.grey,
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      width: 250,
                                      child: Text(
                                        appStateController.newReleases[index]["title"],
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 250,
                                      child: Text(
                                        appStateController.newReleases[index]["subText"],
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                Text(
                                  appStateController.newReleases[index]["day"],
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                const SizedBox(width: 5,),
                                Container(
                                  height: 5,
                                  width: 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey
                                  ),
                                ),
                                const SizedBox(width: 5,),
                                Text(
                                  appStateController.newReleases[index]["duration"],
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                InkWell(
                                  child: const Icon(Iconsax.heart, color: Colors.grey,),
                                  onTap: () {},
                                ),
                                const SizedBox(width: 20,),
                                InkWell(
                                  child: const Icon(Iconsax.receive_square, color: Colors.grey,),
                                  onTap: () {},
                                ),
                                const SizedBox(width: 20,),
                                InkWell(
                                  child: const Icon(Iconsax.share, color: Colors.grey,),
                                  onTap: () {},
                                ),
                                const SizedBox(width: 20,),
                                InkWell(
                                  child: const Icon(Iconsax.more, color: Colors.grey,),
                                  onTap: () {},
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }), 
                    separatorBuilder: (context, index){
                      return const Divider(
                        color: Colors.black,
                      );
                    }, 
                    itemCount: appStateController.newReleases.length
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