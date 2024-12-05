import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:resume/l10n/gen_l10n/app_localizations.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/theme/custom_text_theme.dart';

class HomeScreen extends ConsumerWidget {
  static const String path = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: context.height,
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  const Gap(100),
                  Text(
                    context.locale!.homeTitle1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 44),
                  ),
                  const Gap(40),
                  Text(
                    context.locale!.homeTitle2,
                    style: CustomTextTheme.boldTextStyle(fontSize: 44),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 200),
                child: Icon(
                  Icons.expand_more_rounded,
                  size: 50,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: context.height / 2,
          width: context.width,
          color: context.colorScheme.onSecondary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.locale!.homeTitle3,
                style: CustomTextTheme.boldTextStyle(fontSize: 32),
              ),
              const Gap(40),
              Text(
                context.locale!.homeTitle4,
                style: CustomTextTheme.boldTextStyle(fontSize: 32),
              ),
            ],
          ),
        ),
        Container(

        ),
        Text(
          context.locale!.homeInvestar1,
        ),
        Text(
          context.locale!.homeInvestar2,
        ),
        Text(
          context.locale!.homeInvestar3,
        ),
        Text(
          context.locale!.homeInvestar4,
        ),
        Text(
          context.locale!.homeInvestarBackoffice1,
        ),
        Text(
          context.locale!.homeInvestarBackoffice2,
        ),
        Text(
          context.locale!.homeSbl1,
        ),
        Text(
          context.locale!.homeSbl2,
        ),
        Text(
          context.locale!.homeSbl3,
        ),
        Text(
          context.locale!.homeFireAnt1,
        ),
        Text(
          context.locale!.homeFireAnt2,
        ),
        Text(
          context.locale!.homeFireAnt3,
        ),
      ],
    );
  }
}
