import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../models/chat.dart';
import 'custom_avatar.dart';
import 'custom_divider.dart';
import 'dot_seperator.dart';
import 'secondary_custom_icon.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
    required this.chat,
  });

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    const color2 = Color.fromARGB(255, 225, 91, 248);

    var of = Theme.of(context);
    var textTheme = of.textTheme;
    var bodySmall = textTheme.bodySmall;
    var bodySmallGrey = bodySmall?.copyWith(
      color: Colors.grey.shade400,
      fontWeight: FontWeight.bold,
    );

    var sizedBox = SizedBox(width: 1.1.w);

    return Column(
      children: [
        const CustomDivider(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 0.2.h),
          child: Row(
            children: [
              CustomAvatar(avatar: chat.avatar),
              SizedBox(width: 3.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(chat.name),
                  SizedBox(height: 0.2.h),
                  Row(
                    children: [
                      Icon(
                        Icons.square_rounded,
                        size: 10.sp,
                        color: color2,
                      ),
                      sizedBox,
                      Text(
                        'New Snap',
                        style: bodySmall?.copyWith(
                          color: color2,
                        ),
                      ),
                      sizedBox,
                      const DotSeperator(),
                      sizedBox,
                      Text(
                        '2m',
                        style: bodySmallGrey,
                      ),
                      sizedBox,
                      Visibility(
                        visible: chat.streak != '0',
                        child: const DotSeperator(),
                      ),
                      sizedBox,
                      Visibility(
                        visible: chat.streak != '0',
                        child: Text(
                          '${chat.streak}🔥',
                          style: bodySmallGrey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Visibility(
                visible: chat.isPinned,
                child: SecondayCustomIcon(
                  onTap: () {},
                  icon: 'assets/icons/push-pin.png',
                ),
              ),
              sizedBox,
              sizedBox,
              SecondayCustomIcon(
                icon: "assets/icons/camera.png",
                onTap: () {},
              ),
            ],
          ),
        ),
        SizedBox(
          height: chat.id == 10 ? 20.h : null,
        ),
      ],
    );
  }
}
