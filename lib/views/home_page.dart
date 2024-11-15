import 'package:fast_contacts/fast_contacts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telegram/controllers/contact_controller.dart';
import 'package:telegram/utils/color.dart';
import 'package:telegram/utils/style.dart';
import 'package:telegram/widgets/custom_drawer.dart';
import 'package:telegram/widgets/story_widget.dart';

import '../widgets/contact_tile.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ContactController _controller = Get.put(ContactController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            // mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.15,
                child: Stack(
                  children: [
                    StoryWidget(img: "assets/images/u1.jpeg"),
                    Positioned(
                      width: 60,
                      left: 0,
                      child: StoryWidget(img: "assets/images/e7.jpeg"),
                    )
                  ],
                ),
              ),
              const Text(
                "2 Strories",
                style: kLargeTextStyle,
              )
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.lock_open_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        drawer: const CustomDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Obx(
            () => _controller.contacts.isNotEmpty
                ? ListView.builder(
                    itemCount: _controller.contacts.length,
                    itemBuilder: (context, index) {
                      Contact contact = _controller.contacts[index];
                      return ContactTile(contact: contact);
                    })
                : const Text("Have no data"),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColor.primaryDark),
                  child: const Icon(
                    Icons.edit,
                    size: 20,
                  )),
              const SizedBox(
                height: 8,
              ),
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColor.primaryBlue),
                  child: const Icon(Icons.camera_alt)),
            ],
          ),
        ));
  }
}
