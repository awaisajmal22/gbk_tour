import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gbk_tour/config/extensions/height_width_box_extension.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';
import 'package:gbk_tour/core/bloc/hotels/hotels_bloc.dart';
import 'package:gbk_tour/core/bloc/hotels/hotels_event.dart';
import 'package:gbk_tour/core/bloc/hotels/hotels_state.dart';
import 'package:gbk_tour/core/colors/color_palette.dart';
import 'package:gbk_tour/core/constant/constant.dart';
import 'package:gbk_tour/data/models/hotels/hotels_res_model.dart';
import 'package:gbk_tour/utils/app_text.dart';
import 'package:gbk_tour/utils/background.dart';
import 'package:gbk_tour/utils/progress_indicator.dart';
import 'package:gbk_tour/utils/text_button.dart';
import 'package:url_launcher/url_launcher.dart';

class HotelDetail extends HookWidget {
  const HotelDetail({
    super.key,
  });
  Future<void> _launch(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppBrowserView,
      browserConfiguration: const BrowserConfiguration(showTitle: true),
    )) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: background(
            context: context,
            child: BlocBuilder<HotelsBloc, HotelsState>(
              builder: (context, state) {
                final model = state.getDetail ?? HotelsResModel.fromJson({});
                if (state.isloading) {
                  return progressIndicator();
                }
                return PopScope(
                  canPop: false,
                  onPopInvoked: (val) {
                    if (val == false) {
                      context.read<HotelsBloc>().add(GetHotelsEvent(
                          context: context, districId: model.district_id!));
                    }
                  },
                  child: SafeArea(
                      child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: appText(
                                align: TextAlign.center,
                                context: context,
                                maxLines: 5,
                                text: model.title!,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          context.heightBox(h: 0.01),
                          CarouselSlider.builder(
                              itemBuilder: (context, index1, index2) {
                                return model.images.isEmpty
                                    ? ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          model.images[index1].image_path!,
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    : ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          Constant.serverUrl +
                                              model.images[index1].image_path!,

                                          // width: context.getSize.width * 0.8,
                                        ),
                                      );
                              },
                              itemCount: model.images.length,
                              options: CarouselOptions(
                                enlargeCenterPage: true,
                                scrollPhysics: model.images.length == 1
                                    ? const NeverScrollableScrollPhysics()
                                    : const BouncingScrollPhysics(),
                                autoPlay:
                                    model.images.length == 1 ? false : true,
                                viewportFraction:
                                    model.images.length == 1 ? 0.9 : 0.8,
                                aspectRatio: 2.0,
                                initialPage: 1,
                              )),
                          Expanded(
                            child: SingleChildScrollView(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  context.heightBox(h: 0.03),
                                  appText(
                                      align: TextAlign.left,
                                      context: context,
                                      text: 'Description',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                  appText(
                                      maxLines: 100,
                                      context: context,
                                      text: model.description!,
                                      align: TextAlign.left),
                                  context.heightBox(h: 0.02),
                                  appText(
                                      align: TextAlign.left,
                                      context: context,
                                      text: 'Rent',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                  appText(
                                      align: TextAlign.left,
                                      context: context,
                                      text: model.rent.toString()),
                                  context.heightBox(h: 0.02),
                                  appText(
                                      align: TextAlign.left,
                                      context: context,
                                      text: 'Contact No',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                  GestureDetector(
                                      onTap: () {
                                        _makePhoneCall(
                                            model.contact_no.toString());
                                      },
                                      child: appText(
                                          align: TextAlign.left,
                                          context: context,
                                          text: model.contact_no.toString())),
                                  context.heightBox(h: 0.02),
                                  appText(
                                      align: TextAlign.left,
                                      context: context,
                                      text: 'Address',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                  appText(
                                      align: TextAlign.left,
                                      context: context,
                                      text: model.address.toString()),
                                  context.heightBox(h: 0.02),
                                  appText(
                                      align: TextAlign.left,
                                      context: context,
                                      text: 'Map Location',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                  context.heightBox(h: 0.01),
                                  GestureDetector(
                                      onTap: () {
                                        _launch(Uri.parse(
                                            model.maps_location.toString()));
                                      },
                                      child: Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: ColorPalette.white),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: const Icon(
                                            CupertinoIcons.map_fill,
                                            color: ColorPalette.white,
                                          ))),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: FittedBox(
                          child: textButton(
                              bgColor: Colors.black,
                              context: context,
                              title: 'BOOKING',
                              onTap: () {
                                context.read<HotelsBloc>().add(
                                    HotelNavigationEvent(
                                        index: 3,
                                        hotels: state.getHotels,
                                        detail: state.getDetail));
                              }),
                        ),
                      )
                    ],
                  )),
                );
              },
            )));
  }
}
