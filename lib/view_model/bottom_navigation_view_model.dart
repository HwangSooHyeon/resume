import 'package:resume/model/enum/bottom_navigation_bar_enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_navigation_view_model.g.dart';

@Riverpod(keepAlive: true)
class BottomNavigationViewModel extends _$BottomNavigationViewModel {
  @override
  BottomNavigationBarEnum build() {
    return BottomNavigationBarEnum.home;
  }

  void update({required BottomNavigationBarEnum bottomNavigationEnum}) {
    state = bottomNavigationEnum;
  }
}
