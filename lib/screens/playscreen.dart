import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              HexColor("0353A4"),
              Colors.white
            ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Iconsax.arrow_down_1,
                    color: Colors.black,
                  )
              ),
              const Text(
                "Now Playing",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Iconsax.more,
                    color: Colors.black,
                  )
              ),
            ],
          ),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
              image: const DecorationImage(
                  image: AssetImage("images/pod.jpg"), fit: BoxFit.cover
              )
            ),
          ),
          Column(
            children: const [
              Text(
                "Elizabeth Colon",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Text(
                "The Dangers Of Technology",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "E222. What is Billionaire “Bill Gates” hiding from the world.",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
            ],
          ),
          Slider(
              value: 1,
              activeColor: Colors.black,
              onChanged: (value) {
              }
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.replay_10_outlined,
                  color: Colors.black,
                  size: 40,
                ),
              ),
             FloatingActionButton(
               onPressed: () {},
               backgroundColor: Colors.black,
               child: const Icon(Icons.pause, color: Colors.white,),
             ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.forward_10_outlined,
                  color: Colors.black,
                  size: 40,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.add,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.heart,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.share,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.receive_square,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
