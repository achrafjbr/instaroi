import 'package:flutter/material.dart';
import 'package:insta_roi/features/support/presentation/widgets/support_text_field.dart';

import '../../../../core/core_component/core_wigets/footer_widget.dart';
import '../../../../core/core_component/core_wigets/page_parts.dart';
import '../../../../core/responsiveness/responsive_component/app_padding.dart';
import '../../../../core/responsiveness/responsive_component/dimensions.dart';
import '../../../buy_likes/presentation/widgets/likes_text_widget.dart';

class SupportScreen extends StatelessWidget {
  SupportScreen({super.key});

  final TextEditingController email = TextEditingController();
  final TextEditingController instagramUsername = TextEditingController();
  final TextEditingController message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        // Part 1.
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
                    // Support
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.06,
                      title: 'Support',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    //Count on us! InstaRoi's team of experts is ready to assist you in placing a new order/ any issues you encounter with an existing one. Taking advantage of our advanced online chat system to maintain consistent communication, we are here to answer your questions and listen to your concerns. Your inquiries will be answered within 24 hours.
                    LikesTextWidget(
                      textAlign: TextAlign.left,
                      fontSize: 0.03,
                      title:
                          "Count on us! InstaRoi's team of experts is ready to assist you in placing a new order/ any issues you encounter with an existing one. Taking advantage of our advanced online chat system to maintain consistent communication, we are here to answer your questions and listen to your concerns. Your inquiries will be answered within 24 hours.",
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        // Part 2.
        PageParts(
          color: Colors.white,
          children: [
            //Left part.
            AppPadding.onlyPadding(
              context: context,
              top: 0.05,
              left: 0.05,
              child: Container(
                padding: EdgeInsets.all(10),
                constraints: BoxConstraints(
                  maxWidth: Dimensions.setWidth(context: context, width: 0.4),
                ),
                child: Card(
                  color: Colors.white,
                  elevation: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        spacing: 5,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          LikesTextWidget(
                            fontSize: 0.03,
                            title: 'Working Hours',
                            textAlign: TextAlign.left,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          LikesTextWidget(
                            fontSize: 0.03,
                            title: 'Monday - Friday',
                            textAlign: TextAlign.left,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),

                          LikesTextWidget(
                            fontSize: 0.03,
                            title: 'Contact Us',
                            textAlign: TextAlign.left,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          LikesTextWidget(
                            fontSize: 0.03,
                            title: 'Reach out to us if you have any questions',
                            textAlign: TextAlign.left,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ],
                      ),
                      LikesTextWidget(
                        fontSize: 0.03,
                        title: '09:00 - 17:00',
                        textAlign: TextAlign.left,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),


                    ],
                  ),
                ),
              ),
            ),

            //Right part.
            AppPadding.onlyPadding(
              context: context,
              top: 0.05,
              right: 0.05,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: Dimensions.setWidth(context: context, width: 0.4),
                ),
                child: Card(
                  color: Colors.white,
                  elevation: 10,
                  child: Form(
                    child: Column(
                      spacing: 10,
                      children: [
                        // Icon / Submit ticket
                        Container(
                          height: Dimensions.setHeight(
                            context: context,
                            height: 0.08,
                          ),
                          color: Colors.purple,
                          child: Row(
                            spacing: 8,
                            children: [
                              Icon(Icons.support, size: 25),
                              LikesTextWidget(
                                fontSize: 0.04,
                                title: 'Submit ticket',
                                textAlign: TextAlign.left,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                        // Email
                        SupportTextField(
                          textEditingController: email,
                          hintText: 'Your Email',
                          prefix: Icon(Icons.mail),
                        ),
                        // Instagram username
                        SupportTextField(
                          textEditingController: instagramUsername,
                          hintText: 'Your Instagram Username',
                          prefix: Icon(Icons.person),
                        ),
                        // Message
                        SupportTextField(
                          textEditingController: message,
                          hintText: 'Message in Details',
                          maxLines: 5,
                        ),
                      ],
                    ),
                  ),
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
