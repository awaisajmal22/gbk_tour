import 'package:flutter/src/widgets/framework.dart';
import 'package:gbk_tour/data/models/picnicspot/picnic_spot_res_model.dart';
import 'package:gbk_tour/data/network/api_url.dart';
import 'package:gbk_tour/data/repositories/picnicspot/picnic_spot_repository.dart';

import '../../network/api_services.dart';

class DioPicnicSpotRepository implements PicnicSpotRepository{
  @override
  Future<List<PicnicSpotResModel>> getPicnicSpot({required BuildContext context, required int districtId, required String token,}) async{
    List<PicnicSpotResModel> modelList = <PicnicSpotResModel>[];
 try{
  final response = await API().getRequestHeader(context, ApiUrl.picnicspot + districtId.toString(), token);
if(response.statusCode == 200){
        final data = response.data;
        print("Data is $data");
        data['data'].forEach((d)=> modelList.add(PicnicSpotResModel.fromJson(d)));
        print("Data Length ${modelList.length}");
      }else{

      }
 }catch(e){

 }
 return modelList;
  }
  
}