import 'package:flutter/material.dart';
import 'package:insta_roi/features/buy_comments/presentation/pages/comments_screen.dart';
import 'package:insta_roi/features/buy_views/presentation/pages/views_screen.dart';
import 'package:insta_roi/features/home/presentation/widgets/home_text_widget.dart';
import 'package:insta_roi/utils/app_colors.dart';

import '../../responsiveness/responsive_component/app_padding.dart';

class PopupMenu extends StatelessWidget {
  const PopupMenu({super.key, required this.onTap});

  final void Function(Widget) onTap;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      borderRadius: BorderRadius.circular(10),
      popUpAnimationStyle: AnimationStyle(
        duration: Durations.medium1,
        curve: Curves.bounceIn,
        reverseCurve: Curves.linearToEaseOut,
      ),
      position: PopupMenuPosition.under,
      color: AppColors.kWhite,
      onSelected: (value) {
        switch (value) {
          case 0:
            onTap(ViewsScreen());
            break;
          case 1:
            onTap(CommentsScreen());
            break;
          case 2:
            onTap(CommentsScreen());
            break;
          case 3:
            onTap(CommentsScreen());
            break;
        }
      },
      itemBuilder:
          (BuildContext context) => [
        PopupMenuItem(
          value: 0,
          child: PopUpMenuButton(
            title: 'Buy Instagram Views',
            icon: Icons.remove_red_eye_sharp,
          ),
        ),
        PopupMenuItem(
          value: 1,
          child: PopUpMenuButton(
            title: 'Buy Instagram Comments',
            icon: Icons.comment,
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: PopUpMenuButton(
            title: 'Buy Instagram Shares',
            icon: Icons.share,
          ),
        ),
      ],
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.tiktok, color: AppColors.kWhite),
          const SizedBox(width: 4),
          Text(
            'More',
            style: const TextStyle(color: AppColors.kWhite),
          ),
          const SizedBox(width: 4),
          Icon(Icons.arrow_drop_down, color: AppColors.kWhite),
        ],
      ),
    );
  }
}

class PopUpMenuButton extends StatelessWidget {
  const PopUpMenuButton({super.key, required this.title, this.icon});

  final String title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        Icon(icon, color: AppColors.kBlack, size: 17),
        HomeTextWidget(
          fontSize: 0.03,
          title: title,
          textAlign: TextAlign.center,
          color: AppColors.kBlack,
        ),
      ],
    );
  }
}
