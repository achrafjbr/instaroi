import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:insta_roi/core/core_component/core_wigets/footer_widget.dart';
import 'package:insta_roi/core/core_component/core_wigets/page_parts.dart';
import 'package:insta_roi/core/responsiveness/responsive_component/box.dart';
import 'package:insta_roi/features/buy_likes/presentation/widgets/likes_card_widget.dart';
import 'package:insta_roi/utils/image_route.dart';

import '../../../../core/responsiveness/responsive_component/app_padding.dart';
import '../../../../core/responsiveness/responsive_component/dimensions.dart';
import '../widgets/likes_button_widget.dart';
import '../widgets/likes_text_widget.dart';

class LikesScreen extends StatelessWidget {
  const LikesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
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
                  maxWidth: Dimensions.setWidth(context: context, width: 0.35),
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

        // Second part
        PageParts(
          color: Colors.blueAccent,
          children: [
            //Left part.
            AppPadding.onlyPadding(
              context: context,
              top: 0.15,
              left: 0.05,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: Dimensions.setWidth(context: context, width: 0.35),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    // Text: InstaRoi: Buy Instagram likes from \$1.00
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.06,
                      title: 'InstaRoi: Buy Instagram likes from \$1.00',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    // Text : The Instagram logo has become the symbol of success in today's online influencer world. As a result, many are flooding the TikTok platform to grab the chance to mesmerize their target audience and garner fame.
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.04,
                      title:
                          "The Instagram logo has become the symbol of success in today's online influencer world. As a result, many are flooding the TikTok platform to grab the chance to mesmerize their target audience and garner fame.",
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                    // Text: Almost everything that goes up in the TikTok algorithm is ranked based on how many people liked it, So it's not enough to simply create interesting content anymore. Although social media marketing can help you eventually get there, it can take some time to gain consistent TikTok views.
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.04,
                      title:
                          "Almost everything that goes up in the Instagram algorithm is ranked based on how many people liked it, So it's not enough to simply create interesting content anymore. Although social media marketing can help you eventually get there, it can take some time to gain consistent Instagram views.",
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                    // Text :  What we offer isn't one computer-generated service that eventually gets flagged
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.04,
                      color: Colors.white,
                      title:
                          "What we offer isn't one computer-generated service that eventually gets flagged.",
                      fontWeight: FontWeight.bold,
                    ),
                    // Text : InstaRoi.com exclusive Instagram likes from real active users will help you increase engagement on your Instagram profile at affordable prices.
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.04,
                      title:
                          "InstaRoi.com exclusive Instagram likes from real active users will help you increase engagement on your Instagram profile at affordable prices.",
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
              ),
            ),

            //Right part.
            AppPadding.onlyPadding(
              context: context,
              top: 0.10,
              right: 0.05,
              child: SvgPicture.asset('${ImageRoute.imageRoot}5.svg'),
            ),
          ],
        ),

        // Thired part.
        Container(
          padding: AppPadding.allPaddingGeometry(context: context, value: 0.05),
          color: Colors.blueGrey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 30,
            children: [
              // Text : How Many Instagram likes
              LikesTextWidget(
                textAlign: TextAlign.center,
                fontSize: 0.06,
                title: 'How Many Instagram likes?',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),

              // Text : Boost Your Social Media
              Container(
                padding: AppPadding.allPaddingGeometry(
                  context: context,
                  value: 0.01,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color.fromARGB(255, 14, 13, 13),
                ),
                child: LikesTextWidget(
                  textAlign: TextAlign.center,
                  fontSize: 0.03,
                  title: 'Boost Your Social Media Instantly',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Text : These are some of our popular TikTok likes packages. Choose from our list of TikTok likes services and get to the checkout page instantly!
              Container(
                constraints: BoxConstraints(
                  maxWidth: Dimensions.setWidth(context: context, width: 0.30),
                ),
                child: LikesTextWidget(
                  textAlign: TextAlign.center,
                  fontSize: 0.03,
                  title:
                      'These are some of our popular Instagram likes packages. Choose from our list of TikTok likes services and get to the checkout page instantly!',
                  color: Colors.white,
                ),
              ),

              //Likes cards.
              Wrap(
                spacing: 7,
                children: List.generate(
                  10,
                  (index) => LikesCardWidget(
                    likeNumber: 100,
                    likePrice: 1,
                    onTap: () {
                      print(index);
                    },
                  ),
                ),
              ),

              // Button : Buy Now.
              LikesButtonWidget(
                label: 'Order Now',
                fontSize: 0.04,
                height: 0.11,
                width: 0.15,
                buttonColor: Colors.black12,
                onTap: () {
                  print('orderNow');
                },
              ),
            ],
          ),
        ),

        // Part four.
        PageParts(
          color: Colors.blueAccent,
          children: [
            //Left part.
            AppPadding.onlyPadding(
              context: context,
              top: 0.15,
              left: 0.05,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: Dimensions.setWidth(
                    context: context,
                    width: 0.30,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    // Image: FastDelivery
                    Image.asset(
                      '${ImageRoute.imageRoot}fastDelivery.png',
                      cacheHeight:
                      Dimensions.setHeight(
                        context: context,
                        height: 0.15,
                      ).toInt(),
                      cacheWidth:
                      Dimensions.setWidth(
                        context: context,
                        width: 0.15,
                      ).toInt(),
                      fit: BoxFit.cover,
                    ),
                    // Text : Fast Delivery of Instagram Likes
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.06,
                      title: 'Fast Delivery of Instagram Likes',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    // Text : Get your Instagram likes quickly or at a pace that feels natural to you - the choice is yours! We're more than just speed; we safeguard your efforts. Our deep understanding of Instagram's algorithms helps keep your profile safe.
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.03,
                      title:
                      "Get your Instagram likes quickly or at a pace that feels natural to you - the choice is yours! We're more than just speed; we safeguard your efforts. Our deep understanding of Instagram's algorithms helps keep your profile safe.",
                      color: Colors.white,
                    ),

                    // V.space.
                    Box.verticalBox(context: context, height: 0.03),

                    // Image: Clock Support
                    Image.asset(
                      '${ImageRoute.imageRoot}clockSupport.png',
                      cacheHeight:
                      Dimensions.setHeight(
                        context: context,
                        height: 0.15,
                      ).toInt(),
                      cacheWidth:
                      Dimensions.setWidth(
                        context: context,
                        width: 0.15,
                      ).toInt(),
                      fit: BoxFit.cover,
                    ),
                    // Text : Round-the-Clock Support
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.06,
                      title: 'Round-the-Clock Support',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    // Text :Our exceptional Instagram likes service is backed by 24/7 support. Have questions about buying likes? Just chat with us live! Our expert team is ready to help, offering advice on the best engagement strategies to enhance your Instagram presence.",
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.03,
                      title:
                      "Our exceptional Instagram likes service is backed by 24/7 support. Have questions about buying likes? Just chat with us live! Our expert team is ready to help, offering advice on the best engagement strategies to enhance your Instagram presence.",
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),

            //Right part.
            AppPadding.onlyPadding(
              context: context,
              top: 0.10,
              right: 0.05,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: Dimensions.setWidth(
                    context: context,
                    width: 0.30,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    // Image: reelLikes
                    Image.asset(
                      '${ImageRoute.imageRoot}reelLikes.png',
                      cacheHeight:
                      Dimensions.setHeight(
                        context: context,
                        height: 0.15,
                      ).toInt(),
                      cacheWidth:
                      Dimensions.setWidth(
                        context: context,
                        width: 0.15,
                      ).toInt(),
                      fit: BoxFit.cover,
                    ),
                    // Text : Real Likes, Real Impact
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.06,
                      title: 'Real Likes, Real Impact',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    // Text :Instagram likes are key for your account's success. Avoid fake profiles that harm credibility and risk bans. Real likes boost engagement and build trust, making a meaningful and lasting impression on your audience.
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.03,
                      title:
                      "Instagram likes are key for your account's success. Avoid fake profiles that harm credibility and risk bans. Real likes boost engagement and build trust, making a meaningful and lasting impression on your audience.",
                      color: Colors.white,
                    ),

                    // V.space.
                    Box.verticalBox(context: context, height: 0.03),

                    // Image: cheapPackages
                    Image.asset(
                      '${ImageRoute.imageRoot}cheapPackages.png',
                      cacheHeight:
                      Dimensions.setHeight(
                        context: context,
                        height: 0.15,
                      ).toInt(),
                      cacheWidth:
                      Dimensions.setWidth(
                        context: context,
                        width: 0.15,
                      ).toInt(),
                      fit: BoxFit.cover,
                    ),
                    // Text : Cheap Packages
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.06,
                      title: 'Round-the-Clock Support',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    // Text : Discover the perfect blend of affordability and quality with our likes packages. Designed for real engagement, our packages offer great value without breaking the bank. Join our community for genuine growth and a flourishing Instagram journey.
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.03,
                      title:
                      "Discover the perfect blend of affordability and quality with our likes packages. Designed for real engagement, our packages offer great value without breaking the bank. Join our community for genuine growth and a flourishing Instagram journey.",
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        // Footer
        FooterWidget(),
      ],
    );
  }
}
