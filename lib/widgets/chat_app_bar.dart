import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'custom_avatar.dart';
import 'custom_icon_button.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      child: Row(
        children: [
          const CustomAvatar(
            avatar: 'assets/avatars/1.svg',
          ),
          SizedBox(width: 2.w),
          CustomIconButton(
            icon: 'assets/icons/search.png',
            onTap: () {},
          ),
          const Spacer(),
          Text(
            'Chat',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Spacer(),
          CustomIconButton(
            icon: 'assets/icons/add.png',
            onTap: () {},
          ),
          SizedBox(width: 2.w),
          CustomIconButton(
            icon: "assets/icons/ellipsis.png",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
