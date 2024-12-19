import 'package:flutter/material.dart';
import 'package:resume/page/cv/screen/cv_education_screen.dart';
import 'package:resume/page/cv/screen/cv_fire_ant_screen.dart';
import 'package:resume/page/cv/screen/cv_hecto_screen.dart';
import 'package:resume/page/cv/screen/cv_investar_back_office_screen.dart';
import 'package:resume/page/cv/screen/cv_investar_screen.dart';
import 'package:resume/page/cv/screen/cv_sbl_screen.dart';
import 'package:resume/util/extension/build_context_extension.dart';

enum CvEnum {
  fireAnt,
  investarBackOffice,
  sbl,
  investar,
  hecto,
  education;

  String label(BuildContext context) => switch (this) {
    CvEnum.fireAnt => context.locale!.cvFireAnt,
    CvEnum.investarBackOffice => context.locale!.cvInvestarBackOffice,
    CvEnum.sbl => context.locale!.cvSbl,
    CvEnum.investar => context.locale!.cvInvestarBackOffice,
    CvEnum.hecto => context.locale!.cvHectoFinancial,
    CvEnum.education => context.locale!.cvEducationBootCamp,
  };

  Widget get widget => switch (this) {
    CvEnum.fireAnt => const CvFireAntScreen(),
    CvEnum.investarBackOffice => const CvInvestarBackOfficeScreen(),
    CvEnum.sbl => const CvSblScreen(),
    CvEnum.investar => const CvInvestarScreen(),
    CvEnum.hecto => const CvHectoScreen(),
    CvEnum.education => const CvEducationScreen(),
  };
}