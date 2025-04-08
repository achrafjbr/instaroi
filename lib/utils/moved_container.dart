import 'package:flutter/material.dart';
import 'package:insta_roi/core/responsiveness/responsive_component/app_padding.dart';
import 'package:insta_roi/core/responsiveness/responsive_component/dimensions.dart';
import 'package:insta_roi/features/home/presentation/widgets/home_text_widget.dart';

class MovedContainer extends StatefulWidget {
  const MovedContainer({
    super.key,
    required this.title,
    this.isPrefix,
    this.emoji,
    required this.begin,
    required this.end,
  });

  final String title;
  final String? emoji;
  final bool? isPrefix;
  final double begin;

  final double end;

  @override
  State<MovedContainer> createState() => _MovedContainerState();
}

class _MovedContainerState extends State<MovedContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: widget.begin, end: widget.end).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (__, _) {
        return Transform.translate(
          offset: Offset(_animation.value, 0),
          child: CustomMovedContainer(
            title: widget.title,
            emoji: widget.emoji,
            isPrefix: widget.isPrefix,
          ),
        );
      },
    );
  }
}

class CustomMovedContainer extends StatelessWidget {
  const CustomMovedContainer({
    super.key,
    required this.title,
    this.emoji,
    this.isPrefix,
  });

  final String title;
  final String? emoji;
  final bool? isPrefix;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      color: Colors.purpleAccent[100],
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        margin: EdgeInsets.all(8),
        alignment: Alignment.center,
        child: HomeTextWidget(
          fontSize: 0.03,
          title:
              '${isPrefix == true && isPrefix != null ? emoji : ''}$title${isPrefix == false && isPrefix != null ? emoji : ''}',
          color: Colors.white,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
