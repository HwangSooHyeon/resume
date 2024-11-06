import 'package:resume/entity/enum/bottom_navigation_enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_navigation_state.g.dart';

@Riverpod(keepAlive: true)
class BottomNavigationState extends _$BottomNavigationState {
  @override
  BottomNavigationEnum build() {
    return BottomNavigationEnum.home;
  }

  void update({required BottomNavigationEnum bottomNavigationEnum}) {
    state = bottomNavigationEnum;
  }
}
