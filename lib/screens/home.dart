import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../data/chats.dart';
import '../widgets/chat_app_bar.dart';
import '../widgets/chat_tile.dart';
import '../widgets/secondary_custom_icon.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool load = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        color: Colors.yellow,
        backgroundColor: Colors.yellow.shade100,
        onRefresh: () async {
          setState(() {
            load = true;
          });
          Future.delayed(
            const Duration(seconds: 2),
            () => setState(() => load = false),
          );
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SafeArea(
              child: Column(
                children: [
                  const ChatAppBar(),
                  Visibility(
                    visible: load,
                    replacement: const SizedBox(height: 0),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.yellow,
                      color: Colors.yellow.shade100,
                      minHeight: 2,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    children: [
                      FilterWidgets(
                        icon: 'assets/icons/chat.png',
                        onTap: () {},
                      ),
                      FilterWidgets(
                        icon: 'assets/icons/live-chat.png',
                        onTap: () {},
                      ),
                      FilterWidgets(
                        icon: 'assets/icons/group.png',
                        onTap: () {},
                      ),
                      FilterWidgets(
                        icon: 'assets/icons/users.png',
                        onTap: () {},
                      ),
                      FilterWidgets(
                        icon: 'assets/icons/plus.png',
                        onTap: () {},
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      children: chats
                          .map(
                            (e) => ChatTile(
                              chat: e,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 100.w,
              height: 8.h,
              decoration: const BoxDecoration(
                color: Colors.black,
                border: Border(
                  top: BorderSide(color: Colors.white30, width: 0.5),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/snap_bottom_image.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SecondayCustomIcon(
                    onTap: () {},
                    icon: 'assets/icons/pin.png',
                  ),
                  SecondayCustomIcon(
                    onTap: () {},
                    icon: 'assets/icons/chat.png',
                  ),
                  SecondayCustomIcon(
                    onTap: () {},
                    icon: 'assets/icons/camera.png',
                  ),
                  SecondayCustomIcon(
                    onTap: () {},
                    icon: 'assets/icons/users.png',
                  ),
                  SecondayCustomIcon(
                    onTap: () {},
                    icon: 'assets/icons/play-button.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 8.h),
        child: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 76, 173, 253),
          onPressed: () {},
          child: Image.asset(
            "assets/icons/comment.png",
            color: Colors.white,
            height: 5.h,
            width: 5.w,
          ),
        ),
      ),
    );
  }
}

class FilterWidgets extends StatelessWidget {
  const FilterWidgets({
    super.key,
    required this.onTap,
    required this.icon,
  });

  final Function onTap;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.7.h),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(50),
      ),
      margin: EdgeInsets.symmetric(horizontal: 1.w),
      child: Image.asset(
        icon,
        height: 2.h,
        width: 4.w,
        color: Colors.white,
        fit: BoxFit.cover,
      ),
    );
  }
}
