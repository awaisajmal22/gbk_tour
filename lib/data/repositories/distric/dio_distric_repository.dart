import 'package:flutter/src/widgets/framework.dart';
import 'package:gbk_tour/data/models/distric/distric_res_model.dart';
import 'package:gbk_tour/data/network/api_services.dart';
import 'package:gbk_tour/data/network/api_url.dart';
import 'package:gbk_tour/data/repositories/distric/distric_respository.dart';

class DioDistricRepository implements DistricRespository {
  @override
  Future<List<DistricResModel>> getDistric(
      {required BuildContext context,
      required int id,
      required String token}) async {
    List<DistricResModel> modelList = <DistricResModel>[];
    try {
      print(id);
      final response = await API()
          .getRequestHeader(context, ApiUrl.distric + id.toString(), token);
      if (response.statusCode == 200) {
        final data = response.data;
        print("Data Distric $data");
        data['data'].forEach((d) => modelList.add(DistricResModel.fromJson(d)));
        print("Data Distric ${modelList.length}");
      } else {}
    } catch (e) {}
    return modelList;
  }
}
