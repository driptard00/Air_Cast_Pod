import 'package:aircast_2/screens/playscreen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BottomPlay extends StatelessWidget {
  const BottomPlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: HexColor("0353A4"),
      ),
      child: ListTile(
        title: const Text(
          "The dangers of technology",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
        subtitle: const Text(
          "Elizabeth Colon",
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
        trailing: SizedBox(
          width: 160,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.replay_10, color: Colors.white, size: 40,)
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.pause, color: Colors.white, size: 40,)
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.forward_10, color: Colors.white, size: 40,)
              ),
            ],
          ),
        ),
        onTap: () {
          showModalBottomSheet(
            isScrollControlled: true,
            enableDrag: false,
            context: context,
            builder: (context)=> const PlayScreen()
          );
        },
      ),
    );
  }
}