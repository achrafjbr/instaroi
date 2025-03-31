import 'package:flutter/material.dart';
import 'package:insta_roi/core/core_component/appbar_component/fixed_appbar.dart';
import 'package:insta_roi/core/core_component/core_wigets/page_parts.dart';
import 'package:insta_roi/core/responsiveness/responsive_component/box.dart';
import 'package:insta_roi/features/home/presentation/widgets/home_button_widget.dart';

import '../../../../../core/responsiveness/responsive_component/app_padding.dart';
import '../../../../../core/responsiveness/responsive_component/dimensions.dart';
import '../../widgets/likes_button_widget.dart';
import '../../widgets/likes_text_widget.dart';

class LikesScreen extends StatelessWidget {
  const LikesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FixedAppbar.navigationBar(context),

      body: ListView(
        children: [
          // First Top part.
          PageParts(
            color: Colors.purpleAccent,
            children: [
              // Left Side.
              AppPadding.onlyPadding(
                context: context,
                top: 0.15,
                left: 0.05,
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: Dimensions.setWidth(
                      context: context,
                      width: 0.35,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      // Buy Instagram Likes
                      LikesTextWidget(
                        textAlign: TextAlign.left,
                        fontSize: 0.06,
                        title: 'Buy Instagram Likes',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      // We provide high-quality TikTok likes from real and active TikTok users, Join our loyal customer base who already benefits from the best TikTok likes possible.
                      LikesTextWidget(
                        textAlign: TextAlign.left,
                        fontSize: 0.04,
                        title:
                            'We provide high-quality Instagram '
                            'likes from real and active Instagram users,'
                            ' Join our loyal customer base who already '
                            'benefits from the best Instagram likes possible.',
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ],
                  ),
                ),
              ),

              // Right Side.
              AppPadding.onlyPadding(
                context: context,
                top: 0.10,
                right: 0.05,
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.white,
                  child: Container(
                    padding: AppPadding.allPaddingGeometry(
                      context: context,
                      value: 0.02,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: Dimensions.setWidth(context: context, width: 0.40),
                    child: Column(
                      children: [
                        // Icons favorite,Text: Instagram Likes
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 6,
                          children: [
                            SizedBox(
                              height: Dimensions.setHeight(
                                context: context,
                                height: 0.04,
                              ),
                              width: Dimensions.setWidth(
                                context: context,
                                width: 0.04,
                              ),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.pinkAccent,
                              ),
                            ),
                            LikesTextWidget(
                              fontSize: 0.05,
                              title: "Instagram likes",
                              textAlign: TextAlign.left,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        // V.space.
                        Box.verticalBox(context: context, height: 0.02),
                        // Text : e.g: 100 Likes
                        LikesTextWidget(
                          fontSize: 0.05,
                          title: "1000 likes",
                          textAlign: TextAlign.left,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                        // V.space.
                        Box.verticalBox(context: context, height: 0.01),

                        // Slider that increase or decrease number of likes,
                        // And up on likes the price of purchase increase or decrease.
                        Slider(
                          value: 1,
                          onChanged: (price) {},
                          thumbColor: Colors.purpleAccent,
                          inactiveColor: Colors.black26,
                          activeColor: Colors.grey.shade400,
                          allowedInteraction: SliderInteraction.tapAndSlide,
                        ),
                        // V.space.
                        Box.verticalBox(context: context, height: 0.01),
                        // price.
                        LikesTextWidget(
                          fontSize: 0.05,
                          title: "12\$",
                          textAlign: TextAlign.left,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        // V.space.
                        Box.verticalBox(context: context, height: 0.01),
                        // V.space.
                        Box.verticalBox(context: context, height: 0.01),
                        // Button : Order Now
                        LikesButtonWidget(
                          label: 'Order Now',
                          fontSize: 0.05,
                          buttonColor: Colors.purpleAccent,
                          onTap: () {},
                          height: 0.10,
                          width: 0.30,
                        ),
                        // V.space.
                        Box.verticalBox(context: context, height: 0.02),
                        // Text : instantly.
                        Container(
                          padding: AppPadding.allPaddingGeometry(
                            context: context,
                            value: 0.01,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.amber,
                          ),
                          child: LikesTextWidget(
                            fontSize: 0.02,
                            title: 'Instantly',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
