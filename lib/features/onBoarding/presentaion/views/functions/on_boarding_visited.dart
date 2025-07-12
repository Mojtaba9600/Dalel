import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/services/service_locator.dart';

// ignore: non_constant_identifier_names
void OnBoadringVisited() {
  getIt<CacheHelper>().saveData(key: "isOnBoardingVisited", value: true);
}
