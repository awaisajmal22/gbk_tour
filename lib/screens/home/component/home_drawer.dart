import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gbk_tour/config/extensions/height_width_box_extension.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';
import 'package:gbk_tour/config/local_storage/storage.dart';
import 'package:gbk_tour/core/colors/color_palette.dart';
import 'package:gbk_tour/core/constant/constant.dart';
import 'package:gbk_tour/data/network/api_services.dart';
import 'package:gbk_tour/data/network/api_url.dart';
import 'package:gbk_tour/main.dart';
import 'package:gbk_tour/utils/app_text.dart';
import 'package:gbk_tour/utils/background.dart';
import 'package:image_picker/image_picker.dart';

class HomeDrawer extends StatefulWidget {
  final VoidCallback onTap;
  const HomeDrawer({
    super.key,
    required this.onTap,
  });

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  late Storage storage;
  String image = '';
  String name = '';

  @override
  void initState() {
    storage = getIt();
    getData();
    super.initState();
  }

  getData() async {
    final a = await storage.getImage();
    final b = await storage.getName();
    print("MY NAme $b");
    setState(() {
      image = a;
      name = b;
    });
  }

  uploadImage(
    String path,
  ) async {
    final id = await storage.getId();
    try {
      FormData formData = FormData.fromMap({
        'user_id': id,
        'profile_image': await MultipartFile.fromFile(
          path,
        ),
      });
      final response = await API().postRequestHeader(
          context, ApiUrl.uploadImage, formData, await storage.getAuthToken());
      if (response.statusCode == 200) {
        final decodedData = jsonDecode(response.data);
        await storage
            .setImage(decodedData['data']['profile_image'])
            .whenComplete(() {
          getData();
        });
      }
    } catch (e) {
      print("Catch error $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50), bottomRight: Radius.circular(50)),
          border: Border(
              right: BorderSide(
            color: ColorPalette.white,
          ))),
      height: context.getSize.height * 0.8,
      child: Drawer(
        shadowColor: ColorPalette.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                topRight: Radius.circular(50))),
        width: context.getSize.width * 0.4,
        child: background(
          context: context,
          child: Column(
            children: [
              context.heightBox(h: 0.05),
              if (image != '')
                GestureDetector(
                  onTap: () async {
                    final ImagePicker picker = ImagePicker();
                    final data =
                        await picker.pickImage(source: ImageSource.gallery);
                    if (data != null) {
                      uploadImage(data.path);
                    }
                  },
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(Constant.serverUrl + image),
                  ),
                )
              else
                GestureDetector(
                  onTap: () async {
                    final ImagePicker picker = ImagePicker();
                    final data =
                        await picker.pickImage(source: ImageSource.gallery);
                    if (data != null) {
                      uploadImage(data.path);
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: ColorPalette.black.withOpacity(0.3),
                              blurRadius: 30,
                              spreadRadius: 0)
                        ],
                        shape: BoxShape.circle,
                        border: Border.all(color: ColorPalette.white)),
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: ColorPalette.white,
                    ),
                  ),
                ),
              context.heightBox(h: 0.02),
              appText(maxLines: 3, context: context, text: name),
              Spacer(),
              GestureDetector(
                onTap: widget.onTap,
                child: Container(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.logout,
                    color: ColorPalette.white,
                    size: context.getSize.width * 0.1,
                  ),
                ),
              ),
              context.heightBox(h: 0.03)
            ],
          ),
        ),
      ),
    );
  }
}
