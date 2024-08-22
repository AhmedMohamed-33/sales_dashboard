import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tablet_design/gen/assets.gen.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width - 148,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 250,
            height: 40,
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              prefixIcon: Icon(Icons.search),
              labelText: 'Search',
            )),
          ),
          SvgPicture.asset(Assets.images.dashboard),
          const Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Uroos Fatima',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'uroos.design@gmail.com',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 15,
              ),
            ],
          )
        ],
      ),
    );
  }
}
