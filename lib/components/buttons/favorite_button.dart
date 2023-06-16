import 'package:flutter/material.dart';
import 'package:jawla_app/constants/constants.dart';
import 'package:like_button/like_button.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key, this.iconSize = 12});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
  final double iconSize;
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: widget.iconSize,
      backgroundColor: const Color(0xFFF5F5F5),
      child: LikeButton(
        size: widget.iconSize,
        circleColor:
            const CircleColor(start: secondaryColor, end: secondaryColor),
        bubblesColor: const BubblesColor(
          dotPrimaryColor: primaryColor,
          dotSecondaryColor: secondaryColor,
        ),
        likeBuilder: (bool isLiked) {
          return Icon(
            Icons.favorite,
            color: isLiked ? primaryColor : const Color(0xFFCECECE),
            size: widget.iconSize,
          );
        },
      ),
    );
  }
}
