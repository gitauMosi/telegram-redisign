import 'package:flutter/material.dart';
import 'package:telegram/utils/color.dart';
import 'package:telegram/utils/style.dart';
import 'package:telegram/widgets/story_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  StoryWidget(img: "assets/icons/logo.png"),
                  Positioned(
                    right: 0.0,
                    child: StoryWidget(img: "assets/images/e7.jpeg"),
                  )
                ],
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
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
        ),
        floatingActionButton: Column(
          children: [
            Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: AppColor.primaryDark),
                child: const Icon(
                  Icons.edit,
                  size: 15,
                )),
            Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: AppColor.primaryBlue),
                child: const Icon(Icons.camera_alt)),
          ],
        ));
  }
}
