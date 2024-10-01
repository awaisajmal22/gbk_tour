import 'package:flutter/src/widgets/framework.dart';
import 'package:gbk_tour/data/models/province/province_res_model.dart';
import 'package:gbk_tour/data/network/api_services.dart';
import 'package:gbk_tour/data/network/api_url.dart';
import 'package:gbk_tour/data/repositories/province/province_repository.dart';

class DioProvinceRepository implements ProvinceRepository{
  @override
  Future<List<ProvinceResModel>> getProvince({required BuildContext context,required String token}) async{
    List<ProvinceResModel> modelList = <ProvinceResModel>[];
    try{
      final response = await API().getRequestHeader(context, ApiUrl.province,token);
      if(response.statusCode == 200){
        final data = response.data;
        print("Data is $data");
        data['data'].forEach((d)=> modelList.add(ProvinceResModel.fromJson(d)));
        print("Data Length ${modelList.length}");
      }else{

      }

    }catch(e){

    }
    return modelList;
  }
  
}