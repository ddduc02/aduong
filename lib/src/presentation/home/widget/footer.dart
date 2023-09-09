import 'package:_iwu_pack/_iwu_pack.dart';
import 'package:_iwu_pack/setup/app_utils.dart';
import 'package:_iwu_pack/setup/index.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: hexColor('4080FF'),
          padding: EdgeInsets.symmetric(
              horizontal: _paddingHorizontal(context), vertical: 32),
          child: Column(
            children: [
              const Gap(12),
              Text(
                'Facebook can help your large, medium or small business grow. Get the latest news for advertisers and more on our Facebook for Business Page.'
                    .tr(),
                style: w300TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const Gap(32),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Facebook technologies'.tr(),
                          style: w500TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(12),
                        Text(
                          'Facebook'.tr(),
                          style: w300TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(12),
                        Text(
                          'Instagram'.tr(),
                          style: w300TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(12),
                        Text(
                          'Messenger'.tr(),
                          style: w300TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(12),
                        Text(
                          'WhatsApp'.tr(),
                          style: w300TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(12),
                        Text(
                          'Audience Network'.tr(),
                          style: w300TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(12),
                        Text(
                          'Oculus'.tr(),
                          style: w300TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Goals'.tr(),
                        style: w500TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      const Gap(12),
                      Text(
                        'Set up a Facebook Page'.tr(),
                        style: w300TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      const Gap(12),
                      Text(
                        'Build brand awareness'.tr(),
                        style: w300TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      const Gap(12),
                      Text(
                        'Promote your local'.tr(),
                        style: w300TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      const Gap(12),
                      Text(
                        'Grow online sales'.tr(),
                        style: w300TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      const Gap(12),
                      Text(
                        'Promote your app'.tr(),
                        style: w300TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      const Gap(12),
                      Text(
                        'Generate leads'.tr(),
                        style: w300TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Facebook technologies'.tr(),
                          style: w500TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(12),
                        Text(
                          'Facebook'.tr(),
                          style: w300TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(12),
                        Text(
                          'Instagram'.tr(),
                          style: w300TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(12),
                        Text(
                          'Messenger'.tr(),
                          style: w300TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(12),
                        Text(
                          'WhatsApp'.tr(),
                          style: w300TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(12),
                        Text(
                          'Audience Network'.tr(),
                          style: w300TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(12),
                        Text(
                          'Oculus'.tr(),
                          style: w300TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Goals'.tr(),
                        style: w500TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      const Gap(12),
                      Text(
                        'Set up a Facebook Page'.tr(),
                        style: w300TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      const Gap(12),
                      Text(
                        'Build brand awareness'.tr(),
                        style: w300TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      const Gap(12),
                      Text(
                        'Promote your local'.tr(),
                        style: w300TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      const Gap(12),
                      Text(
                        'Grow online sales'.tr(),
                        style: w300TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      const Gap(12),
                      Text(
                        'Promote your app'.tr(),
                        style: w300TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      const Gap(12),
                      Text(
                        'Generate leads'.tr(),
                        style: w300TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Facebook technologies'.tr(),
                          style: w500TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(12),
                        Text(
                          'Facebook'.tr(),
                          style: w300TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(12),
                        Text(
                          'Instagram'.tr(),
                          style: w300TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(12),
                        Text(
                          'Messenger'.tr(),
                          style: w300TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(12),
                        Text(
                          'WhatsApp'.tr(),
                          style: w300TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(12),
                        Text(
                          'Audience Network'.tr(),
                          style: w300TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(12),
                        Text(
                          'Oculus'.tr(),
                          style: w300TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        //languages
        Container(
          color: hexColor('E9EAED'),
          padding: EdgeInsets.symmetric(
              horizontal: _paddingHorizontal(context), vertical: 32),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "English (US)",
                    style: w300TextStyle(),
                  ),
                  Text(
                    "Čeština",
                    style: w300TextStyle(),
                  ),
                  Text(
                    "Norsk (bokmål)",
                    style: w300TextStyle(),
                  ),
                  Text(
                    "Nederlands",
                    style: w300TextStyle(),
                  ),
                ],
              ),
              const Gap(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Portugal",
                    style: w300TextStyle(),
                  ),
                  Text(
                    "Română",
                    style: w300TextStyle(),
                  ),
                  Text(
                    "Italiano",
                    style: w300TextStyle(),
                  ),
                  Text(
                    "More languages",
                    style: w300TextStyle(),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  double _paddingHorizontal(BuildContext context) =>
      context.width > 1280 ? (context.width - 1280) / 2 : 16;
}
