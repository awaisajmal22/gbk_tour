import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gbk_tour/config/extensions/height_width_box_extension.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';
import 'package:gbk_tour/core/colors/color_palette.dart';
import 'package:gbk_tour/core/constant/constant.dart';
import 'package:gbk_tour/data/models/hotels/hotels_res_model.dart';
import 'package:gbk_tour/utils/app_text.dart';

typedef OnTap = VoidCallback;
Widget hotelTile({
  required BuildContext context,
  required OnTap onTap,
  required List<HotelImagesModel> image,
  required String title,
  required String description,
  required Color color,
}) {
  print("HOtel Image length ${image.length}");
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(
            height: context.getSize.height * 0.25,
            width: context.getSize.width,
            child: image.isEmpty
                ? const SizedBox()
                : CarouselSlider.builder(
                    itemCount: image.length,
                    itemBuilder: (context, index1, index2) {
                      HotelImagesModel model = image[index1];
                      return model.image_path == null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                model.image_path!,
                                fit: BoxFit.cover,
                              ),
                            )
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                Constant.serverUrl + model.image_path!,
                                fit: BoxFit.cover,
                              ),
                            );
                    },
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      scrollPhysics: image.length == 1
                          ? const NeverScrollableScrollPhysics()
                          : const BouncingScrollPhysics(),
                      autoPlay: image.length == 1 ? false : true,
                      viewportFraction: image.length == 1 ? 1 : 0.8,
                      // aspectRatio: 2.0,
                      initialPage: 1,
                    )),
          ),
          context.heightBox(h: 0.005),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: ColorPalette.white, width: 4),
                      ),
                      child: Container(
                        height: context.getSize.height * 0.04,
                        width: context.getSize.width * 0.04,
                        decoration:
                            BoxDecoration(shape: BoxShape.circle, color: color),
                      ),
                    ),
                    context.widthBox(
                      w: 0.02,
                    ),
                    appText(
                      context: context,
                      text: title,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                context.heightBox(
                  h: 0.005,
                ),
                appText(
                  align: TextAlign.left,
                  context: context,
                  text: description,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
