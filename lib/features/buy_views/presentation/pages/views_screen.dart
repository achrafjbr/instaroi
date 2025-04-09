import 'package:flutter/material.dart';

import '../../../../core/core_component/core_wigets/footer_widget.dart';
import '../../../../core/core_component/core_wigets/page_parts.dart';
import '../../../../core/responsiveness/responsive_component/app_padding.dart';
import '../../../../core/responsiveness/responsive_component/box.dart';
import '../../../../core/responsiveness/responsive_component/dimensions.dart';
import '../../../../utils/app_colors.dart';
import '../../../buy_likes/presentation/widgets/likes_button_widget.dart';
import '../../../buy_likes/presentation/widgets/likes_expansion_tile_widget.dart';
import '../../../buy_likes/presentation/widgets/likes_text_widget.dart';
import '../../../home/presentation/widgets/home_capsule_widget.dart';
import '../../../home/presentation/widgets/home_text_widget.dart';
import '../widgets/views_card_widget.dart';

class ViewsScreen extends StatelessWidget {
  const ViewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
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
                      title: 'Buy Instagram Views',
                      color: AppColors.kWhite,
                      fontWeight: FontWeight.bold,
                    ),
                    // We provide high-quality Instagram likes from real and active Instagram users, Join our loyal customer base who already benefits from the best Instagram likes possible.
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.04,
                      title:
                          'We provide high-quality Instagram Views from real and active Instagram users, Join our loyal customer base who already benefits from the best Instagram views possible.',
                      color: AppColors.kWhite,
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
                shadowColor: AppColors.kWhite,
                child: Container(
                  padding: AppPadding.allPaddingGeometry(
                    context: context,
                    value: 0.02,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.kBlack,
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
                              Icons.remove_red_eye,
                              color: Colors.pinkAccent,
                            ),
                          ),
                          LikesTextWidget(
                            fontSize: 0.05,
                            title: "Instagram views",
                            textAlign: TextAlign.left,
                            color: AppColors.kWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      // V.space.
                      Box.verticalBox(context: context, height: 0.02),
                      // Text : e.g: 100 Likes
                      LikesTextWidget(
                        fontSize: 0.05,
                        title: "10,000  Views",
                        textAlign: TextAlign.left,
                        color: AppColors.kWhite,
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
                        color: AppColors.kWhite,
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
                          color: AppColors.kBlack,
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
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.06,
                      title:
                          'Why Should I Choose InstaRoi When I Buy Instagram Views?',
                      color: AppColors.kWhite,
                      fontWeight: FontWeight.bold,
                    ),

                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.03,
                      title:
                          "Tik Tok Views are important on Instagram as they can create a snowball effect. The more views that a post gets, the more likely it is that even larger audiences will be exposed to it. "
                          "\nThat’s basically the reason videos go viral! But even if you’ve been getting a constant increase in your views, you can still benefit from getting additional engagement through our services.",
                      color: AppColors.kWhite,
                      fontWeight: FontWeight.normal,
                    ),

                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.03,
                      title:
                          "Check what your answers will be to these questions:",
                      color: AppColors.kWhite,
                      fontWeight: FontWeight.w400,
                    ),

                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.04,
                      color: AppColors.kWhite,
                      title:
                          "Do you feel like your progress is going too slowly and you’re being surpassed by the competition?\n"
                          " Are you going to run a promotion where extra engagement can mean more sales?\n "
                          "Are you trying to reach out to a new segment of the audience?\n"
                          "Do you want to increase the credibility of your brand?\n "
                          "Do you want to see how paid views work for you?\n "
                          "Are you exploring other strategies to become more influential on Instagram?\n",
                      fontWeight: FontWeight.bold,
                    ),

                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.04,
                      title:
                          "If you answered yes to even one of these questions, we’re confident that you’ll find great value in our services. And for as little as \$1,"
                          " you can get the compounding benefit that views have to offer.",
                      color: AppColors.kWhite,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
              ),
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
                title: 'How Many Instagram views?',
                color: AppColors.kWhite,
                fontWeight: FontWeight.bold,
              ),

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
                  title: "Let's Go!",
                  color: AppColors.kWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Container(
                constraints: BoxConstraints(
                  maxWidth: Dimensions.setWidth(context: context, width: 0.30),
                ),
                child: LikesTextWidget(
                  textAlign: TextAlign.center,
                  fontSize: 0.03,
                  title:
                      "We strive to provide Instagram users with a variety of services so they can find something fitting both their needs and budget. Whether you’re just trying out what we can do for your account or are going for maximum impact, rest assured that the same high-level services will be delivered no matter what. These are some of our popular packages; choose one and get to the checkout page instantly!",
                  color: AppColors.kWhite,
                ),
              ),

              //Likes cards.
              Wrap(
                spacing: 7,
                children: List.generate(
                  10,
                  (index) => ViewsCardWidget(
                    viewNumber: 100,
                    viewPrice: 1,
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

        // part four
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
                        //Let’s Get Started - Buy Instagram Views
                        HomeTextWidget(
                          textAlign: TextAlign.left,
                          fontSize: 0.06,
                          title: 'Let’s Get Started - Buy Instagram Views',
                          color: AppColors.kWhite,
                          fontWeight: FontWeight.bold,
                        ),
                        // Our exclusive views will help increase engagement on your Instagram profile.
                        HomeTextWidget(
                          textAlign: TextAlign.left,
                          fontSize: 0.04,
                          title:"Our exclusive views will help increase engagement on your Instagram profile.",
                          color: AppColors.kWhite,
                          fontWeight: FontWeight.normal,
                        ),
                        Box.verticalBox(context: context, height: 0.04),
                      ],
                    ),
                  ),

                  HomeCapsuleWidget(
                    leftPartImage: 'images/assets/4.svg',
                    leftPartTitle: 'Real Views',
                    leftPartSubTitle:"Gain real views for fast Instagram fan base growth. Our genuine viewers match your niche, boosting algorithm relevance. Never lose paid views. Your success is our priority, ensuring lasting, valuable audience engagement.",
                    rightPartImage: 'images/assets/3.svg',
                    rightPartTitle: 'Fast Delivery',
                    rightPartSubTitle:"Want quick Instagram growth? Count on our dependable service anytime. we're here to help. Choose videos needing boosts; we'll promptly enhance them. Experience simple, effective growth support.",
                  ),

                  HomeCapsuleWidget(
                    leftPartImage: 'images/assets/1.svg',
                    leftPartTitle: '24/7 Support',
                    leftPartSubTitle:"Anytime Instagram views support, we're here. Boosting engagement, offering comprehensive assistance for all concerns. Issues or refunds? Contact InstaRoi. Immediate responses, effective solutions. enhancing your video visibility consistently, reliably.",
                    rightPartImage: 'images/assets/2.svg',
                    rightPartTitle: 'Cheap Prices',
                    rightPartSubTitle:"Beware of free Instagram views; you might be the product. InstaRoi offers an affordable alternative for quality views. Cost-effective, high-quality service guaranteed. Achieve viewer satisfaction without overspending. Trust in our value-driven approach.",
                  ),
                ],
              ),
            ),
          ],
        ),

        // Part five.
        Container(
          padding: AppPadding.allPaddingGeometry(context: context, value: 0.05),
          color: Colors.black45,
          child: Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Title, subTitle.
              Container(
                constraints: BoxConstraints(
                  maxWidth: Dimensions.setWidth(context: context, width: 0.5),
                ),
                child: Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LikesTextWidget(
                      fontSize: 0.05,
                      title:"Still Not Convinced?\n "
                          "Here are More Reasons to Buy Instagram Views from InstaRoi:",
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.bold,
                      color: AppColors.kWhite,
                    ),
                    LikesTextWidget(
                      fontSize: 0.03,
                      title:"As a reputable provider of various types of growth support for your Instagram account, InstaRoi guarantees the delivery of legitimate Instagram views. If you’re not convinced that we’re the best choice for getting views for your posts, there are a number of reasons that should win you over:",
                      textAlign: TextAlign.left,
                      color: AppColors.kWhite,
                    ),
                  ],
                ),
              ),

              LikesExpansionTileWidget(
                title: "How Instagram's Algorithm Works?",
                children: [
                  LikesTextWidget(
                    fontSize: 0.03,
                    title:"Instagram’s algorithms change all the time to better reflect the posts people are interested in. And we’ve seen how free Instagram services seemed to do well at first, only for them to get banned later on, even with creators who have been around for a long time. That’s why you need experts to help you gain traction on your video. The last thing we want to happen is for all your hard work to be for nothing. With InstaRoi, you can be sure that your account isn’t jeopardized. We take all measures necessary to maximize results while minimizing the risks.",
                    textAlign: TextAlign.left,
                    color: AppColors.kWhite,
                  ),
                ],
              ),

              LikesExpansionTileWidget(
                title: "Our Prices Are the Best in the Market",
                children: [
                  LikesTextWidget(
                    fontSize: 0.03,
                    title:"You may not get free Instagram views from us, but it’s the closest that there is. We’re proud to offer the best rates for Instagram video views that you’ll find out there. Partly thanks to the trust of our loyal clientele, we were able to scale our business to offer better prices for what we bring to the market. Our team does this while still delivering top-notch quality services and support. You can purchase from us for as low as just \$1. Once you’re more confident about the results that we can deliver, we can provide greater boosts as well.",
                    textAlign: TextAlign.left,
                    color: AppColors.kWhite,
                  ),
                ],
              ),

              LikesExpansionTileWidget(
                title: "What Other Services Do You Provide?",
                children: [
                  LikesTextWidget(
                    fontSize: 0.03,
                    title:"One part of a strategy may work on its own, but the results are always better when they’re coordinated. Apart from Instagram views, why not consider likes, follows, and shares as well? We can offer all these to improve the impact of the strategy. The process of purchasing these is the same as with views. Everything is available at affordable rates, ensuring that even with multiple support services from us, we won’t burn a hole in your pocket.",
                    textAlign: TextAlign.left,
                    color: AppColors.kWhite,
                  ),
                ],
              ),

            ],
          ),
        ),

        // part sex.
        Container(
          color: Colors.grey,
          padding: AppPadding.symmetricPaddingGeometry(
            context: context,
            horizontal: 0.05,
          ),
          child: Column(
            spacing: 10,
            children: [
              Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    spacing: 5,
                    children: [
                      LikesTextWidget(
                        fontSize: 0.05,
                        title: 'Step 1: Select Your Package',
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kWhite,
                      ),
                      LikesTextWidget(
                        fontSize: 0.03,
                        title: "Choose your desired Instagram views using our slider. For starters, try our affordable 2,500 views for just a dollar. For the best value, our largest package offers significant discounts. Click the order button to proceed to the next step.",
                        textAlign: TextAlign.left,
                        color: AppColors.kWhite,
                      ),
                    ],
                  ),
                  Column(
                    spacing: 5,
                    children: [
                      LikesTextWidget(
                        fontSize: 0.05,
                        title: 'Step 2: Review Your Order Details',
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kWhite,
                      ),
                      LikesTextWidget(
                        fontSize: 0.03,
                        title: "Proceed to checkout and ensure all details, especially your username, are accurate. Remember, purchases are final, with refunds applicable only under specific conditions. Your satisfaction with our service is our priority.",
                        textAlign: TextAlign.left,
                        color: AppColors.kWhite,
                      ),
                    ],
                  ),
                  Column(
                    spacing: 5,
                    children: [
                      LikesTextWidget(
                        fontSize: 0.05,
                        title: 'Step 3: Make Your Payment',
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kWhite,
                      ),
                      LikesTextWidget(
                        fontSize: 0.03,
                        title: "We accept PayPal, Visa, and Mastercard for seamless transactions. After ordering, you'll receive a confirmation email with view delivery details. Please set your Instagram account to public to guarantee a smooth and effective engagement boost.",
                        textAlign: TextAlign.left,
                        color: AppColors.kWhite,
                      ),
                    ],
                  ),
                ],
              ),

              Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    spacing: 5,
                    children: [
                      LikesTextWidget(
                        fontSize: 0.05,
                        title: "Step 4: After Payment",
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kWhite,
                      ),
                      LikesTextWidget(
                        fontSize: 0.03,
                        title:"Once your purchase is complete, relax! Delivery times vary based on your preferences and our algorithm's efficiency. Our dedicated customer support is always available for any queries or specific requests regarding your order.",
                        textAlign: TextAlign.left,
                        color: AppColors.kWhite,
                      ),
                    ],
                  ),
                ],
              ),

            ],
          ),
        ),

        // Clients reviews ...

        // Footer
        FooterWidget(),

      ],
    );
  }
}
