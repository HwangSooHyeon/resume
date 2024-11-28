import 'package:resume/model/enum/bottom_navigation_enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_navigation_view_model.g.dart';

@Riverpod(keepAlive: true)
class BottomNavigationViewModel extends _$BottomNavigationViewModel {
  @override
  BottomNavigationEnum build() {
    return BottomNavigationEnum.home;
  }

  void update({required BottomNavigationEnum bottomNavigationEnum}) {
    state = bottomNavigationEnum;
  }
}
