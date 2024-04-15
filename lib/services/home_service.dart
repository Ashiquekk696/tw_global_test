import 'package:tw_global_test/helpers/api_base_helper.dart';
import 'package:tw_global_test/models/home_model.dart';

import '../constants/endpoints.dart';
import '../helpers/config.dart';

class HomeService {
  Future<List<HomeModel>> fetchItems(page) async {
    var _helper = ApiBaseHelper();
    List<HomeModel> myGridData = [];
    final response = await _helper
        .get("?key=${AppConfig.ACCESS_TOKEN}&image_type=photo&page=$page");
    response['hits'].forEach((e) {
      myGridData.add(HomeModel.fromJson(e));
    });
    return myGridData;
  }
}
