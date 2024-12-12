import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class CvScreen extends StatelessWidget {
  static const String path = '/cv';
  const CvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        const Gap(200),
        Text(
          context.locale!.cvDirectional,
        ),
        Text(
          '2023-April ~ Now',
        ),
        Text(
          context.locale!.homeFireAnt1,
        ),
        Text(
          '2024-June ~ 2024-November',
        ),
        Text(context.locale!.cvFireAnt1,),
        Text(context.locale!.cvFireAnt2,),
        Text(context.locale!.cvFireAnt3,),
        Text(context.locale!.cvFireAnt4,),
        Text(context.locale!.cvFireAnt5,),
        Text(context.locale!.cvFireAnt6,),
        Text(context.locale!.cvFireAnt7,),
        Text(context.locale!.cvFireAnt8,),
        Text(context.locale!.cvFireAnt9,),
        Text(context.locale!.cvFireAnt10,),
        Text(context.locale!.cvFireAnt11,),
        Text(context.locale!.cvFireAnt12,),
        Text(context.locale!.cvFireAnt13,),
        Text(context.locale!.cvFireAnt14,),
        Text(context.locale!.cvFireAnt15,),
        Text(context.locale!.cvFireAnt16,),
        Text(context.locale!.cvFireAnt17,),
        Text(
          context.locale!.homeInvestarBackoffice1,
        ),
        Text(
          '2024-May ~ 2024-July',
        ),
        Text(
          context.locale!.cvInvestarBackOffice1,
        ),Text(
          context.locale!.cvInvestarBackOffice2,
        ),
        Text(context.locale!.homeSbl1,),
        Text(
          '2023-August ~ 2024-December',
        ),
        Text(context.locale!.cvSbl,),
        Text(context.locale!.cvSbl1,),
        Text(context.locale!.cvSbl2,),
        Text(context.locale!.cvSbl3,),
        Text(context.locale!.cvSbl4,),
        Text(context.locale!.cvSbl5,),
        Text(context.locale!.cvSbl6,),
        Text(context.locale!.cvSbl7,),
        Text(context.locale!.cvSbl8,),
        Text(context.locale!.homeInvestar1,),
        Text(
          '2023-April ~ 2024-November',
        ),
        Text(context.locale!.cvInvestar),
        Text(context.locale!.cvInvestarDailyCoin1,),
        Text(context.locale!.cvInvestarDailyCoin2,),
        Text(context.locale!.cvInvestarDailyCoin3,),
        Text(context.locale!.cvInvestarDailyCoin4,),
        Text(context.locale!.cvInvestarDailyCoin5,),
        Text(context.locale!.cvInvestarRisingScore1,),
        Text(context.locale!.cvInvestarRisingScore2,),
        Text(context.locale!.cvInvestarRisingScore3,),
        Text(context.locale!.cvInvestarRisingScore4,),
        Text(context.locale!.cvInvestarRisingScore5,),
        Text(context.locale!.cvInvestarCarousel1,),
        Text(context.locale!.cvInvestarCarousel2,),
        Text(context.locale!.cvInvestarCarousel3,),
        Text(context.locale!.cvInvestarWhale1,),
        Text(context.locale!.cvInvestarWhale2,),
        Text(context.locale!.cvInvestarWhale3,),
        Text(context.locale!.cvInvestarWhale4,),
        Text(context.locale!.cvInvestarFavorite1,),
        Text(context.locale!.cvInvestarFavorite2,),
        Text(context.locale!.cvInvestarCommunity1,),
        Text(context.locale!.cvInvestarCommunity2,),
        Text(context.locale!.cvInvestarCommunity3,),
        Text(context.locale!.cvInvestarMy1,),
        Text(context.locale!.cvInvestarMy2,),
        Text(context.locale!.cvInvestarMy3,),
        Text(context.locale!.cvInvestarSearch1,),
        Text(context.locale!.cvInvestarSearch2,),
        Text(context.locale!.cvInvestarSearch3,),
        Text(context.locale!.cvInvestarGlobal1,),
        Text(context.locale!.cvInvestarGlobal2,),
        Text(context.locale!.cvInvestarAll,),
        Text(context.locale!.cvHectoFinancial1,),
        Text(
          '2021-November ~ 2022-August',
        ),
        Text(context.locale!.cvHectoFinancial2,),
        Text(context.locale!.cvHectoFinancial3,),
        Text(context.locale!.cvHectoFinancial4,),
        Text(context.locale!.cvHectoFinancial5,),
        Text(context.locale!.cvUniversity1,),
        Text(context.locale!.cvUniversity2,),
        Text(
          '2020-March ~ 2020-August',
        ),
        Text(context.locale!.cvUniversity3,),
        Text(
          '2013-March ~ 2020-Fabruary',
        ),
      ],
    );
  }
}
