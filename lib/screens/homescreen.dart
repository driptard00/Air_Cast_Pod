import 'package:aircast_2/controller/app_state_controller.dart';
import 'package:aircast_2/screens/mediascreen.dart';
import 'package:aircast_2/widgets/bottomplay.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var appStateController = Provider.of<AppStateController>(context, listen: false);

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.only(left: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Image.asset("images/aircastlogo.png",),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                           icon: const Icon(Iconsax.notification, size: 30,)
                        ),
                        const SizedBox(width: 10,),
                        InkWell(
                          child: const CircleAvatar(
                            radius: 20,
                          ),
                          onTap: (){},
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Popular Now",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      child: Text(
                        "See all",
                        style: TextStyle(
                          color: HexColor("0353A4"),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 220,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: appStateController.popular.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                          Container(
                            height: 150,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          const SizedBox(height: 5,),
                          SizedBox(
                            width: 200,
                            child: Text(
                              appStateController.popular[index]["title"],
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Text(
                            appStateController.popular[index]["caster"],
                            style: TextStyle(
                              fontSize: 12,
                              color: HexColor("0353A4"),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: ((context) =>const  MediaScreen())
                        )
                        );
                      },
                    );
                  }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "New Releases",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      child: Text(
                        "See all",
                        style: TextStyle(
                          color: HexColor("0353A4"),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: ListView.separated(
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
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10)
                                ),
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}