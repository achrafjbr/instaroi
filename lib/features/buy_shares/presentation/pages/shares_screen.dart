import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_roi/core/core_component/core_wigets/footer_widget.dart';
import 'package:insta_roi/core/core_component/core_wigets/page_parts.dart';
import 'package:insta_roi/core/responsiveness/responsive_component/box.dart';


import '../../../../core/responsiveness/responsive_component/app_padding.dart';
import '../../../../core/responsiveness/responsive_component/dimensions.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/functions.dart';
import '../../../buy_likes/presentation/manager/likes_cubit.dart';
import '../../../buy_likes/presentation/widgets/likes_button_widget.dart';
import '../../../buy_likes/presentation/widgets/likes_text_widget.dart';
import '../../../home/presentation/widgets/home_capsule_widget.dart';
import '../../../home/presentation/widgets/home_text_widget.dart';
import '../widgets/shares_card_widget.dart';


class SharesScreen extends StatelessWidget {
  const SharesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LikesCubit instance = LikesCubit.instance(context);

    return ListView(
      physics: BouncingScrollPhysics(),

      children: [
        // Part 1
        PageParts(
          color: AppColors.kSecondaryColor,
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
                      title: 'Buy Instagram Shares',
                      color: AppColors.kWhite,
                      fontWeight: FontWeight.bold,
                    ),
                    // We provide high-quality Instagram likes from real and active Instagram users, Join our loyal customer base who already benefits from the best Instagram likes possible.
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.04,
                      title:"Buy Instagram Shares and boost your page’s engagement rates. We provide real Shares for affordable prices. Try our packages today!",
                      color: AppColors.kWhite,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
              ),
            ),

            // Right Side.
            // Right Side.
            AppPadding.onlyPadding(
              context: context,
              top: 0.10,
              right: 0.05,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: Dimensions.setWidth(context: context, width: 0.4),
                ),
                child: Card(
                  color: AppColors.kBlack,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 10,
                  shadowColor: AppColors.kWhite,
                  child: BlocBuilder<LikesCubit, LikesState>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          // Icons favorite,Text: Instagram Likes
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.kPrimaryColor?.withOpacity(0.3),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                topLeft: Radius.circular(5),
                              ),
                            ),
                            height: Dimensions.setHeight(
                              context: context,
                              height: 0.10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 6,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: AppColors.kPrimaryColor,
                                  size: Dimensions.setFontDimension(
                                    context: context,
                                    value: 0.06,
                                  ),
                                ),
                                LikesTextWidget(
                                  fontSize: 0.04,
                                  title: "Instagram Shares",
                                  textAlign: TextAlign.center,
                                  color: AppColors.kWhite,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                          ),

                          Container(
                            padding: AppPadding.allPaddingGeometry(
                              context: context,
                              value: 0.02,
                            ),
                            child: Column(
                              children: [
                                // V.space.
                                Box.verticalBox(context: context, height: 0.02),
                                // Text : e.g: 100 Shares
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing:3,
                                  children: [
                                    LikesTextWidget(
                                      fontSize: 0.05,
                                      title:
                                      '${context.read<LikesCubit>().initialLikesNumber}',
                                      textAlign: TextAlign.left,
                                      color: AppColors.kWhite,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    LikesTextWidget(
                                      fontSize: 0.04,
                                      title:
                                      'Shares',
                                      textAlign: TextAlign.left,
                                      color: AppColors.kWhite,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ],
                                ),
                                // V.space.
                                Box.verticalBox(context: context, height: 0.01),

                                // Slider that increase or decrease number of Shares,
                                // And up on Shares the price of purchase increase or decrease.
                                Slider(
                                  value: instance.initialLikesNumber.toDouble(),
                                  onChanged:
                                      (likesNumber) =>
                                      instance.defineLikesNumber(
                                        likesNumber.toInt(),
                                      ),
                                  divisions: Functions.divisionSliderSteps(
                                    15000,
                                    1000,
                                    500,
                                  ),
                                  min: 1000,
                                  max: 15000,
                                ),

                                // V.space.
                                Box.verticalBox(context: context, height: 0.01),
                                // price.
                                LikesTextWidget(
                                  fontSize: 0.05,
                                  title: "${instance.currentPrice}\$",
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
                                  fontSize: 0.04,
                                  buttonColor: AppColors.kPrimaryColor,
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
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),

        // Part 2
        PageParts(
          color: AppColors.kWhite,

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
                          color: AppColors.kWhite,
                          fontWeight: FontWeight.bold,
                        ),
                        // Expect top-quality products and rapid growth for your page and videos, securely.
                        HomeTextWidget(
                          textAlign: TextAlign.left,
                          fontSize: 0.04,
                          title:
                          'Expect top-quality products and rapid growth for your page and videos, securely.',
                          color: AppColors.kWhite,
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
                    rightPartSubTitle:'The secret to worldwide success and recognition is showing how big you already are, Come grow with us.',
                  ),
                  HomeCapsuleWidget(
                    leftPartImage: 'images/assets/1.svg',
                    leftPartTitle: 'Quick Shipping',
                    leftPartSubTitle:'You want your services, and you want them NOW, We think the same and dispatch orders as soon as we can.',
                    rightPartImage: 'images/assets/2.svg',
                    rightPartTitle: 'Packages',
                    rightPartSubTitle:'Get access to highly valuable services any page owner needs, including performance insights for even further improvement.',
                  ),
                ],
              ),
            ),
          ],
        ),

        // Part 3
        Container(
          padding: AppPadding.allPaddingGeometry(context: context, value: 0.05),
          color: Colors.blueGrey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 30,
            children: [
              // Text : How Many Instagram shares
              LikesTextWidget(
                textAlign: TextAlign.center,
                fontSize: 0.06,
                title: 'How Many Instagram Shares?',
                color: AppColors.kWhite,
                fontWeight: FontWeight.bold,
              ),

              // Text : LET'S GO
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
                  title: "LET'S GO",
                  color: AppColors.kWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Text
              Container(
                constraints: BoxConstraints(
                  maxWidth: Dimensions.setWidth(context: context, width: 0.30),
                ),
                child: LikesTextWidget(
                  textAlign: TextAlign.center,
                  fontSize: 0.03,
                  title:'These are some of our popular packages, Choose one and get to the checkout page instantly!',
                  color: AppColors.kWhite,
                ),
              ),

              //Share cards.
              Wrap(
                spacing: 7,
                children: List.generate(
                  10,
                      (index) => SharesCardWidget(
                    shareNumber: 100,
                    sharePrice: 1,
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

        // Part 4
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
                        title: 'Speedy Delivery',
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kWhite,
                      ),
                      LikesTextWidget(
                        fontSize: 0.03,
                        title: "Choose us for Instagram services, and just focus on your creative content. Relax while we streamline the process, delivering results in just 30-40 minutes. Experience hassle-free, quick service with us",
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
                        title: '100% Confidential',
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kWhite,
                      ),
                      LikesTextWidget(
                        fontSize: 0.03,
                        title: "Elevate your Instagram presence subtly with our special offers. Enjoy natural growth - just share your username. We respect your privacy, but remember to keep your account public for optimal outcomes.",
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
                        title: 'Lowest Prices',
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kWhite,
                      ),
                      LikesTextWidget(
                        fontSize: 0.03,
                        title: "Join our Instagram community for transparent, value-driven pricing. Our tailored services ensure your profile shows natural growth. We customize each package to meet your specific needs for an organic Instagram presence.",
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
                        title: 'Makes You Viral',
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kWhite,
                      ),
                      LikesTextWidget(
                        fontSize: 0.03,
                        title: "Enhance your Instagram videos with our strategic engagement boost. Likes are key for trendsetting on the For You Page. We'll keep your profile trending and visible, ensuring your content always makes an impact.",
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
                        title: 'Best Service ever',
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kWhite,
                      ),
                      LikesTextWidget(
                        fontSize: 0.03,
                        title:"Keep your Instagram content trending with our expert strategies. We align your videos with high engagement rates for FYP prominence. Prepare to make your Instagram profile the highlight of discussions and trends.",
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
                        title: '24 /7 Support',
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kWhite,
                      ),
                      LikesTextWidget(
                        fontSize: 0.03,
                        title: "Our Instagram customer support is always at your service. For any queries about our packages or assistance, reach out via live chat or email. We're dedicated to making your Instagram experience smooth and successful.",
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
