import 'package:flutter/material.dart';
import 'package:insta_roi/core/core_component/core_wigets/page_parts.dart';
import 'package:insta_roi/core/responsiveness/responsive_component/app_padding.dart';
import 'package:insta_roi/core/responsiveness/responsive_component/box.dart';
import 'package:insta_roi/core/responsiveness/responsive_component/dimensions.dart';
import 'package:insta_roi/features/home/presentation/widgets/home_button_widget.dart';
import 'package:insta_roi/features/home/presentation/widgets/home_capsule_widget.dart';
import 'package:insta_roi/features/home/presentation/widgets/home_text_widget.dart';
import 'package:insta_roi/utils/image_route.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      //shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: [
        // First top part.
        PageParts(
          color: Colors.deepPurpleAccent,

          children: [
            // Left Side.
            AppPadding.onlyPadding(
              context: context,
              top: 0.10,
              left: 0.05,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: Dimensions.setWidth(context: context, width: 0.35),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    // Buy Instagram Followers and Likes starting at $1.00
                    HomeTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.06,
                      title:
                          'Buy Instagram Followers and Likes starting at \$1.00',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    // Are you jealous of other Tik Instagramers? Our services will strengthen your content and give it the push it needs to go viral.
                    HomeTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.04,
                      title:
                          'Are you jealous of other Instagramers? Our services will strengthen your content and give it the push it needs to go viral.',
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                    Box.verticalBox(context: context, height: 0.04),
                    // BUY INSTAGRAM LIKES
                    HomeButtonWidget(
                      buttonColor: Colors.pinkAccent,
                      label: 'BUY INSTAGRAM LIKES ',
                      fontSize: 0.03,
                      icon: Icons.favorite,
                    ),
                    // BUY INSTAGRAM FOLLOWERS
                    HomeButtonWidget(
                      buttonColor: Colors.pinkAccent,
                      label: 'BUY INSTAGRAM FOLLOWERS ',
                      fontSize: 0.03,
                      icon: Icons.people_alt,
                    ),

                    // ALL SERVICES
                    HomeButtonWidget(
                      buttonColor: Colors.white38,
                      label: 'SEE ALL SERVICES',
                      fontSize: 0.03,
                      icon: Icons.menu,
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
                  height: Dimensions.setHeight(context: context, height: 0.60),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: Dimensions.setWidth(context: context, width: 0.40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // text :@InstaRoi
                      HomeTextWidget(
                        fontSize: 0.05,
                        title: "@InstaRoi",
                        textAlign: TextAlign.left,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // image
                          AppPadding.onlyPadding(
                            child: Container(
                              alignment: Alignment.center,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 2,
                                  color: Colors.pinkAccent,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              height: Dimensions.setHeight(
                                context: context,
                                height: 0.18,
                              ),
                              width: Dimensions.setWidth(
                                context: context,
                                width: 0.08,
                              ),
                              child: // image
                                  CircleAvatar(
                                foregroundImage: AssetImage(
                                  '${ImageRoute.imageRoot}profile.jpg',
                                ),
                                radius: 50,
                              ),
                            ),
                            context: context,
                            top: 0.06,
                          ),
                          // Posts
                          Column(
                            children: [
                              // text : 9,994
                              HomeTextWidget(
                                fontSize: 0.05,
                                title: '9,449',
                                color: Colors.white,
                                textAlign: TextAlign.left,
                                fontWeight: FontWeight.bold,
                              ),
                              // text : Posts
                              HomeTextWidget(
                                fontSize: 0.04,
                                title: 'Posts',
                                color: Colors.grey,
                                textAlign: TextAlign.left,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),

                          // Followers
                          Column(
                            children: [
                              // text : 1 M
                              HomeTextWidget(
                                fontSize: 0.05,
                                title: '1 M',
                                color: Colors.white,
                                textAlign: TextAlign.left,
                                fontWeight: FontWeight.bold,
                              ),
                              // text : Followers
                              HomeTextWidget(
                                fontSize: 0.04,
                                title: 'Followers',
                                color: Colors.grey,
                                textAlign: TextAlign.left,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),

                          // Following
                          Column(
                            children: [
                              // text : 9,994
                              HomeTextWidget(
                                fontSize: 0.05,
                                title: '1,940',
                                color: Colors.white,
                                textAlign: TextAlign.left,
                                fontWeight: FontWeight.bold,
                              ),
                              // text : Following
                              HomeTextWidget(
                                fontSize: 0.04,
                                title: 'Following',
                                color: Colors.grey,
                                textAlign: TextAlign.left,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                        ],
                      ),
                      // disabled buttons.
                      Container(
                        padding: AppPadding.onlyPaddingGeometry(
                          context: context,
                          left: 0.11,
                        ),
                        child: Row(
                          spacing: 6,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.blue,
                              ),
                              width: Dimensions.setWidth(
                                context: context,
                                width: 0.20,
                              ),
                              height: Dimensions.setHeight(
                                context: context,
                                height: 0.08,
                              ),
                              child: HomeTextWidget(
                                fontSize: 0.04,
                                title: 'Follow',
                                color: Colors.white,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.blue,
                              ),
                              width: Dimensions.setWidth(
                                context: context,
                                width: 0.05,
                              ),
                              height: Dimensions.setHeight(
                                context: context,
                                height: 0.08,
                              ),
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

        // Second Part.
        PageParts(
          color: Colors.black45,

          children: [
            AppPadding.onlyPadding(
              context: context,
              top: 0.10,
              left: 0.05,
              child: Column(
                spacing: 30,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: Dimensions.setWidth(
                        context: context,
                        width: 0.40,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        // Dominate Instagram with InstaRoi
                        HomeTextWidget(
                          textAlign: TextAlign.left,
                          fontSize: 0.06,
                          title: 'Dominate Instagram with InstaRoi',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        // Expect top-quality products and rapid growth for your page and videos, securely.
                        HomeTextWidget(
                          textAlign: TextAlign.left,
                          fontSize: 0.04,
                          title:
                              'Expect top-quality products and rapid growth for your page and videos, securely.',
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                        Box.verticalBox(context: context, height: 0.04),
                      ],
                    ),
                  ),

                  HomeCapsuleWidget(
                    leftPartImage: 'images/assets/4.svg',
                    leftPartTitle: 'Trust',
                    leftPartSubTitle:
                        'Our years of experience in the field = your guarantee that we provide top-notch quality products and services.',
                    rightPartImage: 'images/assets/3.svg',
                    rightPartTitle: 'Growth',
                    rightPartSubTitle:
                        'The secret to worldwide success and recognition is showing how big you already are, Come grow with us.',
                  ),
                  HomeCapsuleWidget(
                    leftPartImage: 'images/assets/1.svg',
                    leftPartTitle: 'Quick Shipping',
                    leftPartSubTitle:
                        'You want your services, and you want them NOW, We think the same and dispatch orders as soon as we can.',
                    rightPartImage: 'images/assets/2.svg',
                    rightPartTitle: 'Packages',
                    rightPartSubTitle:
                        'Get access to highly valuable services any page owner needs, including performance insights for even further improvement.',
                  ),
                ],
              ),
            ),
          ],
        ),

        // Third Part.
        PageParts(
          color: Colors.brown,
          children: [
            // Left Side.
            AppPadding.onlyPadding(
              context: context,
              top: 0.10,
              left: 0.05,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: Dimensions.setWidth(context: context, width: 0.35),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    // Best Support
                    HomeTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.06,
                      title: 'Best Support',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),

                    // Do you have any question about your order? You’re never alone.
                    HomeTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.03,
                      title:
                          'Do you have any question about your order? You’re never alone.',
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),

                    // Shoot TikRoyal’s support a message - we’ll get to it soon!
                    HomeTextWidget(
                      textAlign: TextAlign.left,
                      color: Colors.white,
                      title:
                          'Shoot InstaRoi’s support a message - we’ll get to it soon! ',
                      fontSize: 0.03,
                      fontWeight: FontWeight.normal,
                    ),

                    // SUPPORT
                    HomeButtonWidget(
                      buttonColor: Colors.pinkAccent,
                      label: 'SUPPORT',
                      fontSize: 0.03,
                      icon: Icons.people_alt,
                    ),
                  ],
                ),
              ),
            ),

            // Right Side.
            AppPadding.onlyPadding(
              context: context,
              top: 0.2,
              right: 0.05,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Card(
                    elevation: 10,
                    shadowColor: Colors.white,
                    child: Container(
                      height: Dimensions.setHeight(
                        context: context,
                        height: 0.3,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: Dimensions.setWidth(context: context, width: 0.20),
                    ),
                  ),
                  // top left gif
                  Positioned(
                    top: -Dimensions.setHeight(context: context, height: 0.08),
                    left: -Dimensions.setWidth(context: context, width: 0.03),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          // color: Colors.red,
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              '${ImageRoute.imageRoot}sport.gif',
                            ),
                          ),
                        ),
                        width: Dimensions.setWidth(
                          context: context,
                          width: 0.10,
                        ),
                        height: Dimensions.setHeight(
                          context: context,
                          height: 0.16,
                        ),
                      ),
                    ),
                  ),

                  // top right gif
                  Positioned(
                    top: -Dimensions.setHeight(context: context, height: 0.03),
                    right: -Dimensions.setWidth(context: context, width: 0.02),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: ExactAssetImage(
                              '${ImageRoute.imageRoot}dog.gif',
                            ),
                          ),
                        ),
                        width: Dimensions.setWidth(
                          context: context,
                          width: 0.10,
                        ),
                        height: Dimensions.setHeight(
                          context: context,
                          height: 0.16,
                        ),
                      ),
                    ),
                  ),

                  // bottom left gif
                  Positioned(
                    bottom:
                        -Dimensions.setHeight(context: context, height: 0.03),
                    left: -Dimensions.setWidth(context: context, width: 0.02),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: ExactAssetImage(
                              '${ImageRoute.imageRoot}dance.gif',
                            ),
                          ),
                        ),
                        width: Dimensions.setWidth(
                          context: context,
                          width: 0.10,
                        ),
                        height: Dimensions.setHeight(
                          context: context,
                          height: 0.16,
                        ),
                      ),
                    ),
                  ),

                  // bottom right gif
                  Positioned(
                    bottom:
                        -Dimensions.setHeight(context: context, height: 0.08),
                    right: -Dimensions.setWidth(context: context, width: 0.03),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: ExactAssetImage(
                              '${ImageRoute.imageRoot}man.gif',
                            ),
                          ),
                        ),
                        width: Dimensions.setWidth(
                          context: context,
                          width: 0.10,
                        ),
                        height: Dimensions.setHeight(
                          context: context,
                          height: 0.16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
