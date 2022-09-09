import 'package:aircast_2/controller/app_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var appStateController = Provider.of<AppStateController>(context, listen: false);

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Search",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
                IconButton(
                  onPressed: (){},
                    icon: const Icon(Iconsax.notification, size: 30,)
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              height: 60,
              width: 400,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20)
              ),
              child: InkWell(
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Iconsax.search_normal_1),
                    hintText: "Channels, topics, creators",
                    hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                    enabled: false
                  ),
                ),
                onTap: () {},
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: ((context, index) {
                  return InkWell(
                    child: Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage("images/pod.jpg"), 
                          fit: BoxFit.cover,       
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                            colors: [
                              Colors.black,
                              Colors.transparent
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          )
                        ),
                        child: Text(
                          appStateController.categories[index]["name"],
                              style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold 
                          ),
                        ),
                      ),
                    ),
                    onTap: (){},
                  );
                }), 
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 20,
                  );
                }, 
                itemCount: appStateController.categories.length
              ),
            )
          ],
        ),
      ),
    );
  }
}