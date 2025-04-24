import 'package:resume/domain/entities/enum/bottom_navigation_bar_enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_navigation_state_provider.g.dart';

@Riverpod(keepAlive: true)
class BottomNavigationState extends _$BottomNavigationState {
  @override
  BottomNavigationBarEnum build() {
    return BottomNavigationBarEnum.home;
  }

  void update({required BottomNavigationBarEnum bottomNavigationEnum}) {
    state = bottomNavigationEnum;
  }
}
