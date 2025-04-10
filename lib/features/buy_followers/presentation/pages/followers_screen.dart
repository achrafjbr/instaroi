import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core_component/core_wigets/footer_widget.dart';
import '../../../../core/core_component/core_wigets/page_parts.dart';
import '../../../../core/responsiveness/responsive_component/app_padding.dart';
import '../../../../core/responsiveness/responsive_component/box.dart';
import '../../../../core/responsiveness/responsive_component/dimensions.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/functions.dart';
import '../../../../utils/image_route.dart';
import '../../../../utils/moved_container.dart';
import '../../../buy_likes/presentation/manager/likes_cubit.dart';
import '../../../buy_likes/presentation/widgets/likes_button_widget.dart';
import '../../../buy_likes/presentation/widgets/likes_expansion_tile_widget.dart';
import '../../../buy_likes/presentation/widgets/likes_text_widget.dart';
import '../../../home/presentation/widgets/home_text_widget.dart';
import '../widgets/followers_card_widget.dart';

class FollowersScreen extends StatelessWidget {
  const FollowersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LikesCubit instance = LikesCubit.instance(context);

    return ListView(
      physics: BouncingScrollPhysics(),

      children: [
        // First Top part.
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
                      title: 'Buy Instagram Followers',
                      color: AppColors.kWhite,
                      fontWeight: FontWeight.bold,
                    ),
                    // We provide high-quality followers that will allow you to grow your social media presence through your Instagram account.
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.04,
                      title:
                          'We provide high-quality followers that will allow you to grow your social media presence through your Instagram account.',
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
              child: Column(
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: Dimensions.setWidth(
                        context: context,
                        width: 0.4,
                      ),
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
                                      Icons.people,
                                      color: AppColors.kPrimaryColor,
                                      size: Dimensions.setFontDimension(
                                        context: context,
                                        value: 0.06,
                                      ),
                                    ),
                                    LikesTextWidget(
                                      fontSize: 0.04,
                                      title: "Instagram Followers",
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
                                    Box.verticalBox(
                                      context: context,
                                      height: 0.02,
                                    ),
                                    // Text : e.g: 100 Followers
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
                                          'Followers',
                                          textAlign: TextAlign.left,
                                          color: AppColors.kWhite,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ],
                                    ),
                                    // V.space.
                                    Box.verticalBox(
                                      context: context,
                                      height: 0.01,
                                    ),

                                    // Slider that increase or decrease number of likes,
                                    // And up on likes the price of purchase increase or decrease.
                                    Slider(
                                      value:
                                          instance.initialLikesNumber
                                              .toDouble(),
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
                                    Box.verticalBox(
                                      context: context,
                                      height: 0.01,
                                    ),
                                    // price.
                                    LikesTextWidget(
                                      fontSize: 0.05,
                                      title: "${instance.currentPrice}\$",
                                      textAlign: TextAlign.left,
                                      color: AppColors.kWhite,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    // V.space.
                                    Box.verticalBox(
                                      context: context,
                                      height: 0.01,
                                    ),
                                    // V.space.
                                    Box.verticalBox(
                                      context: context,
                                      height: 0.01,
                                    ),
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
                                    Box.verticalBox(
                                      context: context,
                                      height: 0.02,
                                    ),
                                    // Text : instantly.
                                    Container(
                                      padding: AppPadding.allPaddingGeometry(
                                        context: context,
                                        value: 0.01,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          10.0,
                                        ),
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
                  // V.space
                  Box.verticalBox(context: context, height: 0.05),
                  // We’ll help you beat the Instagram algorithm, helping you gain organic followers in no time! So, if you need Instagram followers, buy them from us.Only pay for what you need - Slide the bar to discover the cost of buying Instagram followers..
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: Dimensions.setWidth(
                        context: context,
                        width: 0.4,
                      ),
                    ),
                    child: LikesTextWidget(
                      fontSize: 0.03,
                      title:
                          "We’ll help you beat the Instagram algorithm, helping you gain organic followers in no time! So, if you need Instagram followers, buy them from us.Only pay for what you need - Slide the bar to discover the cost of buying Instagram followers.",
                      textAlign: TextAlign.center,
                      color: AppColors.kWhite,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
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
                    // Text: InstaRoi: Buy Instagram followers for as little as $2.00
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.06,
                      title:
                          'InstaRoi: Buy Instagram followers for as little as \$2.00',
                      color: AppColors.kWhite,
                      fontWeight: FontWeight.bold,
                    ),
                    // Text : Instagram is one of the most sought-after platforms for budding influencers because of its power to make an account reach millions almost overnight.It has become the pinnacle of influencer success. No wonder everyone’s trying to get a piece of the action! Apart from having a video with a lot of likes and views, people look at the followers count to validate whether an account is worth looking at.
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.04,
                      title:
                          "The Instagram logo has become the symbol of success in today's online influencer world. As a result, many are flooding the Instagram platform to grab the chance to mesmerize their target audience and garner fame.",
                      color: AppColors.kWhite,
                      fontWeight: FontWeight.normal,
                    ),
                    // Text: Almost everything that goes up in the Instagram algorithm is ranked based on how many people liked it, So it's not enough to simply create interesting content anymore. Although social media marketing can help you eventually get there, it can take some time to gain consistent Instagram views.
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.04,
                      title:
                          "Almost everything that goes up in the Instagram algorithm is ranked based on how many people liked it, So it's not enough to simply create interesting content anymore. Although social media marketing can help you eventually get there, it can take some time to gain consistent Instagram views.",
                      color: AppColors.kWhite,
                      fontWeight: FontWeight.normal,
                    ),

                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.04,
                      color: AppColors.kWhite,
                      title:
                          "Here’s where InstaRoi comes to the rescue, What we offer is an opportunity to break through social media by making sure you get noticed.",
                      fontWeight: FontWeight.normal,
                    ),
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.04,
                      title:
                          "Through our Instagram followers services, you’ll be able to increase your reputation on the platform, thus encouraging people to engage with your content. We made our packages highly affordable so you can maximize all the benefits of our services!",
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
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Card(
                    elevation: 10,
                    shadowColor: AppColors.kWhite,
                    child: Container(
                      height: Dimensions.setHeight(
                        context: context,
                        height: 0.60,
                      ),
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
                            color: AppColors.kWhite,
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
                                    color: AppColors.kWhite,
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
                                    color: AppColors.kWhite,
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
                                    color: AppColors.kWhite,
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
                                    color: AppColors.kWhite,
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

                  Positioned(
                    top: -10,
                    child: MovedContainer(
                      title: 'So Great',
                      isPrefix: true,
                      emoji: '🥰 ',
                      begin: -50,
                      end: 50,
                    ),
                  ),

                  Positioned(
                    top: 50,
                    child: MovedContainer(
                      title: 'Fantastic',
                      isPrefix: true,
                      emoji: '💪 ',
                      begin: -30,
                      end: 40,
                    ),
                  ),

                  Positioned(
                    bottom: -10,
                    child: MovedContainer(
                      title: 'Best Content',
                      isPrefix: false,
                      emoji: ' 👍',
                      begin: -20,
                      end: 20,
                    ),
                  ),

                  Positioned(
                    top: 0,
                    right: -40,
                    child: MovedContainer(
                      title: 'Perfect',
                      isPrefix: false,
                      emoji: ' 👌',
                      begin: -20,
                      end: 20,
                    ),
                  ),

                  Positioned(
                    top: 70,
                    right: -50,
                    child: MovedContainer(
                      title: 'Growing-up',
                      isPrefix: false,
                      emoji: ' 💥',
                      begin: -40,
                      end: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        // Third part.
        Container(
          padding: AppPadding.allPaddingGeometry(context: context, value: 0.05),
          color: Colors.blueGrey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 30,
            children: [
              // Text : How Many Instagram followers?
              LikesTextWidget(
                textAlign: TextAlign.center,
                fontSize: 0.06,
                title: 'How Many Instagram followers?',
                color: AppColors.kWhite,
                fontWeight: FontWeight.bold,
              ),

              // Text : Legit Instagram Followers for Your Instagram Account!
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
                  title:
                      'Legit Instagram Followers for Your Instagram Account!',
                  color: AppColors.kWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Container(
                constraints: BoxConstraints(
                  maxWidth: Dimensions.setWidth(context: context, width: 0.30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10,
                  children: [
                    LikesTextWidget(
                      textAlign: TextAlign.center,
                      fontSize: 0.03,
                      title:
                          "These are some of our most popular real Instagram followers packages, No matter what the purchase size - we guarantee that you’ll get all the perks of buying Instagram fans from us.",
                      color: AppColors.kWhite,
                    ),
                    LikesTextWidget(
                      textAlign: TextAlign.center,
                      fontSize: 0.03,
                      title:
                          "This includes access to our stellar customer support team and a guarantee of legitimacy for every new account added to your follower count. Choose one, and get to the checkout page instantly!",
                      color: AppColors.kWhite,
                    ),
                  ],
                ),
              ),

              //Followers cards.
              Wrap(
                spacing: 7,
                children: List.generate(
                  10,
                  (index) => FollowersCardWidget(
                    followerNumber: 100,
                    followerPrice: 1,
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
                  maxWidth: Dimensions.setWidth(context: context, width: 0.30),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    // Image: Follow
                    Image.asset(
                      '${ImageRoute.imageRoot}follow.png',
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
                    // Text : Fast Delivery of Instagram Followers
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.06,
                      title: 'Fast Delivery of Instagram Followers',
                      color: AppColors.kWhite,
                      fontWeight: FontWeight.bold,
                    ),
                    // Text : Decide how you want your Instagram followers delivered: instantly or at a natural pace. Each option has its own pros and cons. You're in charge – tell us when to deliver, and we'll be right on time!
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.03,
                      title:
                          "Decide how you want your Instagram followers delivered: instantly or at a natural pace. Each option has its own pros and cons. You're in charge – tell us when to deliver, and we'll be right on time!",
                      color: AppColors.kWhite,
                    ),

                    // V.space.
                    Box.verticalBox(context: context, height: 0.03),

                    // Image: Real Followers
                    Image.asset(
                      '${ImageRoute.imageRoot}realFollow.png',
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
                    // Text : Real Followers
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.06,
                      title: 'Real Followers',
                      color: AppColors.kWhite,
                      fontWeight: FontWeight.bold,
                    ),
                    // Text :
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.03,
                      title:
                          "Join our happy customers enjoying top-notch followers. Boost your Instagram presence with active fans. Choose us for risk-free growth and avoid account bans, thanks to our reliable social media services.",
                      color: AppColors.kWhite,
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
                  maxWidth: Dimensions.setWidth(context: context, width: 0.30),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    // Image: support
                    Image.asset(
                      '${ImageRoute.imageRoot}support.png',
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
                      title: '24/7 Support',
                      color: AppColors.kWhite,
                      fontWeight: FontWeight.bold,
                    ),
                    // Text :Instagram likes are key for your account's success. Avoid fake profiles that harm credibility and risk bans. Real likes boost engagement and build trust, making a meaningful and lasting impression on your audience.
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.03,
                      title:
                          "Craving more followers? Our support team is here to help, responding quickly to all your needs. We guide you on the ideal number of followers and the best delivery speed for your Instagram account.",
                      color: AppColors.kWhite,
                    ),

                    // V.space.
                    Box.verticalBox(context: context, height: 0.03),

                    // Image: Cheap Prices
                    Image.asset(
                      '${ImageRoute.imageRoot}cheapPrice.png',
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
                      title: 'Cheap Prices',
                      color: AppColors.kWhite,
                      fontWeight: FontWeight.bold,
                    ),
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.03,
                      title:
                          "Experience the reality of top-quality Instagram followers with us. Don't miss out on our budget-friendly deals and special discounts. Elevate your presence and enhance your social media strategy.",
                      color: AppColors.kWhite,
                    ),
                  ],
                ),
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
                      title:
                          "Still not convinced? \n Here are more reasons to buy followers from InstaRoi:",
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.bold,
                      color: AppColors.kWhite,
                    ),

                    LikesTextWidget(
                      fontSize: 0.03,
                      title:
                          "We promise to provide the best followers, so your page will get exactly what it deserves! But if you’re not convinced you can buy Instagram followers safely from us, these reasons will help change your mind:",
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
                    title:
                        "We’ve seen horror stories of how someone seemingly rose to instant fame only to have their account banned because of fake accounts. Artificial intelligence may not be perfect, but it’s getting smarter every day. That’s why with the wrong move (even with authentic users!), you can let all your hard work go to waste. To help you continuously increase your Instagram engagement throughout services, we use a drip feed to help you stay under the radar of the watchful eye of the ever-evolving algorithm.",
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
                    title:
                        "From common wisdom, everyone knows that the sum is greater than its parts. Based on the results that we were able to deliver to our customers in increasing follower count, any powerful individual strategy on a social media platform is more effective when there are other efforts undertaken. To make it easier for you to access amazing prices for various related services, you can buy Instagram followers, likes, shares, views, comments, and more on our website.",
                    textAlign: TextAlign.left,
                    color: AppColors.kWhite,
                  ),
                ],
              ),

              LikesExpansionTileWidget(
                title: "We Help You Every Step Of The Way",
                children: [
                  LikesTextWidget(
                    fontSize: 0.03,
                    title:
                        "Because there are other social media platforms that became popular before Instagram, you may not know how to employ social media marketing strategies here. Don’t worry! Even before you buy real Instagram followers from us, you’ll still be able to inquire with our helpful customer support about which options will work well for you.",
                    textAlign: TextAlign.left,
                    color: AppColors.kWhite,
                  ),
                  Box.verticalBox(context: context, height: 0.01),
                ],
              ),

              LikesExpansionTileWidget(
                title: "Popular Payments: How Can You Pay?",
                children: [
                  LikesTextWidget(
                    fontSize: 0.03,
                    title:
                        "We make it easy for you to buy followers for one of the most popular social media platforms today. Right now, we accept Mastercard, Visa, and PayPal in completing your transactions. But rest assured that we’re working on further expanding this to accommodate other popular payment gateways too.",
                    textAlign: TextAlign.left,
                    color: AppColors.kWhite,
                  ),
                ],
              ),
            ],
          ),
        ),

        // parti sex.
        Container(
          color: Colors.grey,
          padding: AppPadding.symmetricPaddingGeometry(
            context: context,
            horizontal: 0.05,
            vertical: 0.05,
          ),
          child: Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                constraints: BoxConstraints(
                  maxWidth: Dimensions.setWidth(context: context, width: 0.25),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 5,
                  children: [
                    LikesTextWidget(
                      fontSize: 0.05,
                      title: 'Step 1: Choose Your Package',
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.bold,
                      color: AppColors.kWhite,
                    ),
                    LikesTextWidget(
                      fontSize: 0.03,
                      title:
                          "Use the sliding bar to select the number of followers you want to buy. You’ll also see the cost here, so you can adjust your purchase based on your budget. You can get started for as little as \$2! Alternatively, you may select from our most popular packages.",
                      textAlign: TextAlign.left,
                      color: AppColors.kWhite,
                    ),
                  ],
                ),
              ),
              Container(
                constraints: BoxConstraints(
                  maxWidth: Dimensions.setWidth(context: context, width: 0.25),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 5,
                  children: [
                    LikesTextWidget(
                      fontSize: 0.05,
                      title: 'Step 2: Review Your Order',
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.bold,
                      color: AppColors.kWhite,
                    ),
                    LikesTextWidget(
                      fontSize: 0.03,
                      title:
                          "Once you click the order button, you’ll be headed straight to the checkout page. Just make sure that all the details are correct before confirming your order. Please note that all orders are final unless they fall within our refund policy.",
                      textAlign: TextAlign.left,
                      color: AppColors.kWhite,
                    ),
                  ],
                ),
              ),
              Container(
                constraints: BoxConstraints(
                  maxWidth: Dimensions.setWidth(context: context, width: 0.3),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,

                  spacing: 5,
                  children: [
                    LikesTextWidget(
                      fontSize: 0.05,
                      title: 'Step 3: Pay for Your Purchase',
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.bold,
                      color: AppColors.kWhite,
                    ),
                    LikesTextWidget(
                      fontSize: 0.03,
                      title:
                          "Now, all that’s left to do is pay! You can pay using your Visa or Mastercard. PayPal payments are accepted as well. We’ll send you an email confirming your purchase once you’re done with this part. Apart from ensuring that your Instagram profile is public, you don’t have to do anything else. We’ll deliver the followers on the username you provided.",
                      textAlign: TextAlign.left,
                      color: AppColors.kWhite,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Clients reviews.

        // Footer
        FooterWidget(),
      ],
    );
  }
}
