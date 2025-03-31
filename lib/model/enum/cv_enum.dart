import 'package:flutter/material.dart';
import 'package:resume/page/cv/screen/cv_directional_screen.dart';
import 'package:resume/page/cv/screen/cv_fire_ant_screen.dart';
import 'package:resume/page/cv/screen/cv_graduate_school_screen.dart';
import 'package:resume/page/cv/screen/cv_hecto_screen.dart';
import 'package:resume/page/cv/screen/cv_investar_back_office_screen.dart';
import 'package:resume/page/cv/screen/cv_investar_screen.dart';
import 'package:resume/page/cv/screen/cv_it_academy_screen.dart';
import 'package:resume/page/cv/screen/cv_moneytoring_screen.dart';
import 'package:resume/page/cv/screen/cv_sbl_screen.dart';
import 'package:resume/page/cv/screen/cv_university_screen.dart';
import 'package:resume/page/cv/screen/cv_woowa_screen.dart';
import 'package:resume/util/extension/build_context_extension.dart';

enum CvEnum {
  fireAnt,
  investarBackOffice,
  sbl,
  investar,
  directional,
  woowa,
  hecto,
  itAcademy,
  graduateSchool,
  university,
  moneytoring;

  String label(BuildContext context) => switch (this) {
        CvEnum.fireAnt => context.locale!.cvFireAntTitle,
        CvEnum.investarBackOffice => context.locale!.cvInvestarBackOfficeTitle,
        CvEnum.sbl => context.locale!.cvSblTitle,
        CvEnum.investar => context.locale!.cvInvestarTitle,
        CvEnum.hecto => context.locale!.cvHectoFinancialTitle,
        CvEnum.woowa => context.locale!.cvWoowaTitle,
        CvEnum.directional => context.locale!.cvDirectionalTitle,
        CvEnum.itAcademy => context.locale!.cvItAcademyTitle,
        CvEnum.graduateSchool => context.locale!.cvGraduateSchoolTitle,
        CvEnum.university => context.locale!.cvUniversityTitle,
        CvEnum.moneytoring => context.locale!.cvMoneytoringTitle,
      };

  Widget get widget => switch (this) {
        CvEnum.fireAnt => const CvFireAntScreen(),
        CvEnum.investarBackOffice => const CvInvestarBackOfficeScreen(),
        CvEnum.sbl => const CvSblScreen(),
        CvEnum.investar => const CvInvestarScreen(),
        CvEnum.hecto => const CvHectoScreen(),
        CvEnum.woowa => const CvWoowaScreen(),
        CvEnum.directional => const CvDirectionalScreen(),
        CvEnum.itAcademy => const CvItAcademyScreen(),
        CvEnum.graduateSchool => const CvGraduateSchoolScreen(),
        CvEnum.university => const CvUniversityScreen(),
        CvEnum.moneytoring => const CvMoneytoringScreen(),
      };
}
