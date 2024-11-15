import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:telegram/widgets/custom_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/u1.jpeg"))),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.sunny))
                  ],
                ),

                //name
                const ListTile(
                  title: Text("Mosi Ethans"),
                  subtitle: Text("+254115088899"),
                  trailing: Icon(Icons.arrow_drop_down_outlined),
                )
              ],
            ),
          ),
          //tiles
          const SizedBox(
            height: 15,
          ),
          CustomTile(
              title: "My Profile",
              icon: FontAwesomeIcons.person,
              function: () {}),
          CustomTile(
              title: "Wallet", icon: FontAwesomeIcons.wallet, function: () {}),
          CustomTile(
              title: "New Group",
              icon: FontAwesomeIcons.peopleGroup,
              function: () {}),
          CustomTile(
              title: "Contacts", icon: FontAwesomeIcons.user, function: () {}),
          CustomTile(
              title: "Calls", icon: FontAwesomeIcons.phone, function: () {}),
          CustomTile(
              title: "Saved Messages",
              icon: FontAwesomeIcons.bookBookmark,
              function: () {}),
          CustomTile(
              title: "Settings", icon: FontAwesomeIcons.gear, function: () {}),
          const Divider(),
          CustomTile(
              title: "Invite Friends",
              icon: FontAwesomeIcons.personCirclePlus,
              function: () {}),
          CustomTile(
              title: "Telegram features",
              icon: FontAwesomeIcons.info,
              function: () {}),
        ],
      ),
    );
  }
}
