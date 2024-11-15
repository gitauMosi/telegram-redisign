import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:telegram/widgets/custom_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage("assets/images/u1.jpeg"), fit: BoxFit.cover)),
                          ),
                        ),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.sunny))
                      ],
                    ),
          
                    //name
                    const ListTile(
                      contentPadding: EdgeInsets.only(
                        left: 5,
                        bottom: 8
                      ),
                      title: Text("Mosi Ethans"),
                      subtitle: Text("+254115088899"),
                      trailing: Icon(Icons.arrow_drop_down_outlined),
                    )
                  ],
                ),
              ),
              //tiles
              
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
        ),
      ),
    );
  }
}
