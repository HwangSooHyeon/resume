import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:resume/asset/gen/assets.gen.dart';
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
          height: context.height - 164,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Assets.image.imageMain.image(
                height: context.height,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Positioned(
                child: Column(
                  children: [
                    const Gap(100),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: context.colorScheme.onPrimary,
                      ),
                      child: Text(
                        context.locale!.homeTitle1,
                        style: CustomTextTheme.boldTextStyle(fontSize: 50),
                      ),
                    ),
                    const Gap(10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: context.colorScheme.onPrimary,
                      ),
                      child: Text(
                        context.locale!.homeTitle2,
                        style: CustomTextTheme.boldTextStyle(fontSize: 50),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Icon(
                  Icons.expand_more_rounded,
                  size: 50,
                  color: Colors.white,
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
              const Gap(40),
              Text(
                context.locale!.homeTitle5,
                style: CustomTextTheme.boldTextStyle(fontSize: 32),
              ),
            ],
          ),
        ),
        Container(
          height: 1200,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 120),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    context.locale!.homeInvestar1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 50),
                  ),
                  const Gap(40),
                  Text(
                    context.locale!.homeInvestar2_1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  const Gap(20),
                  Text(
                    context.locale!.homeInvestar2_2,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                ],
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 10,
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(-20, 20),
                        blurRadius: 20,
                        spreadRadius: 5,
                        color: context.colorScheme.onSurface.withOpacity(0.3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Assets.image.imageInvestarKor1.image(),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 10,
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(-20, 20),
                        blurRadius: 20,
                        spreadRadius: 5,
                        color: context.colorScheme.onSurface.withOpacity(0.3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Assets.image.imageInvestarKor2.image(),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      context.locale!.homeInvestar3,
                      style: CustomTextTheme.boldTextStyle(fontSize: 32),
                    ),
                    const Gap(20),
                    Text(
                      context.locale!.homeInvestar4_1,
                      style: CustomTextTheme.boldTextStyle(fontSize: 32),
                    ),
                    const Gap(20),
                    Text(
                      context.locale!.homeInvestar4_2,
                      style: CustomTextTheme.boldTextStyle(fontSize: 32),
                    ),
                    const Gap(30),
                  ],
                ),
              ),
            ],
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Assets.image.imageInvestarBackoffice.image(),
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: context.colorScheme.onPrimary,
                  ),
                  child: Text(
                    context.locale!.homeInvestarBackoffice1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 50),
                  ),
                ),
                const Gap(40),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: context.colorScheme.onPrimary,
                  ),
                  child: Text(
                    context.locale!.homeInvestarBackoffice2_1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                ),
                const Gap(40),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: context.colorScheme.onPrimary,
                  ),
                  child: Text(
                    context.locale!.homeInvestarBackoffice2_2,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 120),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.locale!.homeSbl1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 50),
                  ),
                  const Gap(40),
                  Text(
                    context.locale!.homeSbl2_1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  const Gap(20),
                  Text(
                    context.locale!.homeSbl2_2,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  const Gap(20),
                  Text(
                    context.locale!.homeSbl2_3,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  const Gap(40),
                  Text(
                    context.locale!.homeSbl3_1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  const Gap(20),
                  Text(
                    context.locale!.homeSbl3_2,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 10,
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(-20, 20),
                      blurRadius: 20,
                      spreadRadius: 5,
                      color: context.colorScheme.onSurface.withOpacity(0.3),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Assets.image.imageSblApp1.image(),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 120),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 10,
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(-20, 20),
                      blurRadius: 20,
                      spreadRadius: 5,
                      color: context.colorScheme.onSurface.withOpacity(0.3),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Assets.image.imageFireAnt1.image(),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    context.locale!.homeFireAnt1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 50),
                  ),
                  const Gap(40),
                  Text(
                    context.locale!.homeFireAnt2_1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  const Gap(20),
                  Text(
                    context.locale!.homeFireAnt2_2,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  const Gap(20),
                  Text(
                    context.locale!.homeFireAnt2_3,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  const Gap(40),
                  Text(
                    context.locale!.homeFireAnt3_1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  const Gap(20),
                  Text(
                    context.locale!.homeFireAnt3_2,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
