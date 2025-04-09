
import 'package:flutter/material.dart';

import '../../../../core/core_component/core_wigets/footer_widget.dart';
import '../../../../core/core_component/core_wigets/page_parts.dart';
import '../../../../core/responsiveness/responsive_component/app_padding.dart';
import '../../../../core/responsiveness/responsive_component/box.dart';
import '../../../../core/responsiveness/responsive_component/dimensions.dart';
import '../../../../utils/app_colors.dart';
import '../../../buy_likes/presentation/widgets/likes_button_widget.dart';
import '../../../buy_likes/presentation/widgets/likes_card_widget.dart';
import '../../../buy_likes/presentation/widgets/likes_expansion_tile_widget.dart';
import '../../../buy_likes/presentation/widgets/likes_text_widget.dart';
import '../../../home/presentation/widgets/home_capsule_widget.dart';
import '../../../home/presentation/widgets/home_text_widget.dart';
import '../widgets/comments_card_widget.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
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
                      title: 'Buy TikTok Comments',
                      color: AppColors.kWhite,
                      fontWeight: FontWeight.bold,
                    ),
                    // We provide high-quality Instagram likes from real and active Instagram users, Join our loyal customer base who already benefits from the best Instagram likes possible.
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.04,
                      title:"Buy TikTok Comments - use our bank of comments or provide your own. Competitive prices are guaranteed. Check our discounts today!",
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
                              Icons.chat_bubble_outline_outlined,
                              color: Colors.pinkAccent,
                            ),
                          ),
                          LikesTextWidget(
                            fontSize: 0.05,
                            title: "Tiktok Comments",
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
        Container(
          padding: AppPadding.allPaddingGeometry(context: context, value: 0.05),
          color: Colors.blueGrey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 30,
            children: [

              LikesTextWidget(
                textAlign: TextAlign.center,
                fontSize: 0.06,
                title: 'How many TikTok comments?',
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
                  title:"These are some of our popular packages, Choose one and get to the checkout page instantly!",
                  color: AppColors.kWhite,
                ),
              ),

              //Likes cards.
              Wrap(
                spacing: 7,
                children: List.generate(
                  10,
                      (index) => CommentsCardWidget(
                    commentNumber: 100,
                    commentPrice: 1,
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

        // part 3
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
                          title: 'Let’s Start - Buy TikTok Comments',
                          color: AppColors.kWhite,
                          fontWeight: FontWeight.bold,
                        ),
                        HomeTextWidget(
                          textAlign: TextAlign.left,
                          fontSize: 0.04,
                          title:"Our exclusive comments will help increase engagement on your TikTok profile.",
                          color: AppColors.kWhite,
                          fontWeight: FontWeight.normal,
                        ),
                        Box.verticalBox(context: context, height: 0.04),
                      ],
                    ),
                  ),

                  HomeCapsuleWidget(
                    leftPartImage: 'images/assets/4.svg',
                    leftPartTitle: 'Fast Delivery',
                    leftPartSubTitle:"Specializing in TikTok comments, we offer a vast selection for you or take your custom ones. Your preference matters to us. Start your journey with us today!",
                    rightPartImage: 'images/assets/3.svg',
                    rightPartTitle: 'Real Comments',
                    rightPartSubTitle:"Elevate your TikTok presence with our authentic comments. Show the world your trending content effortlessly. Becoming popular is now simple with our support.",
                  ),

                  HomeCapsuleWidget(
                    leftPartImage: 'images/assets/1.svg',
                    leftPartTitle: '24/7 Support',
                    leftPartSubTitle:"Have queries? Reach out to our dedicated support team. They're ready to assist with your orders thoroughly. Your satisfaction is our priority. We're here to guide you.",
                    rightPartImage: 'images/assets/2.svg',
                    rightPartTitle: 'Cheap Prices',
                    rightPartSubTitle:"Discover our affordable packages today. Act fast, as prices may change tomorrow. Don't miss out on these incredible deals. We're committed to offering value and quality.",
                  ),
                ],
              ),
            ),
          ],
        ),

        // Part 4.
        Container(
          padding: AppPadding.allPaddingGeometry(context: context, value: 0.05),
          color: AppColors.kBlack,
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
                      title:"Still not convinced? Here are more reasons to buy Comments:",
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.bold,
                      color: AppColors.kWhite,
                    ),
                    LikesTextWidget(
                      fontSize: 0.03,
                      title:"We promise to provide the best comments, so your page will get exactly what it deserves!",
                      textAlign: TextAlign.left,
                      color: AppColors.kWhite,
                    ),
                  ],
                ),
              ),

              LikesExpansionTileWidget(
                title: "Why Should I Buy TikTok Comments?",
                children: [
                  LikesTextWidget(
                    fontSize: 0.03,
                    title:"The algorithm is on the hunt for videos with comments, to know which content performs best.\n Buying comments is the ideal way to get the algorithm’s attention.",
                    textAlign: TextAlign.left,
                    color: AppColors.kWhite,
                  ),
                ],
              ),

              LikesExpansionTileWidget(
                title: "What Happens After I Place My Order?",
                children: [
                  LikesTextWidget(
                    fontSize: 0.03,
                    title:"We emailed you a tracking order link and the invoice, so you’ll keep up with everything there is to know about your order.",
                    textAlign: TextAlign.left,
                    color: AppColors.kWhite,
                  ),
                ],
              ),

              LikesExpansionTileWidget(
                title: "Why Should I Choose TikRoyal?",
                children: [
                  LikesTextWidget(
                    fontSize: 0.03,
                    title:"We’re one of the most dedicated providers in the industry, offering all the services TikTokers need at affordable prices.",
                    textAlign: TextAlign.left,
                    color: AppColors.kWhite,
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
