import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/common/components/center_view.dart';
import 'package:portfolio/core/constants/assets_path.dart';

import '../../../../config/themes/app_color.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return CenterView(
      child: SizedBox(
        height: 600.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 500.0,
              child: DottedBorder(
                borderType: BorderType.RRect,
                color: AppColor.outline,
                dashPattern: const [
                  10,
                  4,
                ],
                radius: const Radius.circular(10.0),
                strokeCap: StrokeCap.round,
                strokeWidth: 2.0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: SvgPicture.asset(
                          SvgImagePath.techStacks,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Have a project in mind?',
                            style: Theme.of(context).textTheme.titleSmall,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'I am open for collaboration or simply sharing of knowledge to widen ones horizon on topic regarding software development.',
                            style: Theme.of(context).textTheme.bodySmall,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 50.0,
                          ),
                          Align(
                            child: Container(
                              padding: const EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  50.0,
                                ),
                                color: AppColor.button,
                              ),
                              child: Text(
                                'Send me an email',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                  fontSize: 10.0,
                                      color: AppColor.buttonText,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: List.generate(
            //     socialLinks.length,
            //     (index) {
            //       final socialLink = socialLinks[index];
            //       return Row(
            //         children: [
            //           UrlIconButton(
            //             iconPath: socialLink.iconPath,
            //             url: socialLink.url,
            //           ),
            //           if (index < socialLinks.length - 1)
            //             const SizedBox(width: 20.0), // Space between buttons
            //         ],
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
