import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gbk_tour/config/extensions/height_width_box_extension.dart';
import 'package:gbk_tour/core/bloc/hotels/hotels_bloc.dart';
import 'package:gbk_tour/core/bloc/hotels/hotels_event.dart';
import 'package:gbk_tour/core/bloc/hotels/hotels_state.dart';
import 'package:gbk_tour/core/colors/color_palette.dart';
import 'package:gbk_tour/data/models/hotels/hotels_res_model.dart';
import 'package:gbk_tour/data/models/picnicspot/picnic_spot_res_model.dart';
import 'package:gbk_tour/screens/hotels/component/hotel_tile.dart';
import 'package:gbk_tour/utils/app_text.dart';
import 'package:gbk_tour/utils/background.dart';
import 'package:gbk_tour/utils/progress_indicator.dart';

class HotelWidget extends HookWidget {
  final PicnicSpotResModel model;

  const HotelWidget({super.key, required this.model,});

  @override
  Widget build(BuildContext context) {
    final _selectedHotel =
        useState<HotelsResModel>(HotelsResModel.fromJson({}));
    final _selectedIndex = useState<int>(-1);
   
    selectHotel(int index, HotelsResModel model) {
      _selectedIndex.value = index;
      _selectedHotel.value = model;
    }

    return Scaffold(
      body: background(
          context: context,
          child:
              BlocBuilder<HotelsBloc, HotelsState>(builder: (context, state) {
            List<HotelsResModel> dataList = state.getHotels ?? [];
            return state.isloading
                ? progressIndicator()
                : SafeArea(
                    child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: appText(
                              maxLines: 5,
                              context: context,
                              text:
                                  'Choose The Best Hotels\nFor You at ${model.title} ',
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          context.heightBox(h: 0.02),
                          if (dataList.isEmpty)
                            Expanded(
                                child: Center(
                              child: appText(
                                  context: context,
                                  text: "No Picnic point spotted."),
                            ))
                          else
                            Expanded(
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: dataList.length,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        hotelTile(
                                          description:
                                              dataList[index].description!,
                                          context: context,
                                          onTap: () {
                                            selectHotel(index, dataList[index]);
                                            context.read<HotelsBloc>().add(
                                                HotelNavigationEvent(
                                                    index: 2,
                                                    context: context,
                                                    hotels: dataList,
                                                    detail: dataList[index]));
                                          },
                                          image: dataList[index].images,
                                          title: dataList[index].title!,
                                          color: _selectedIndex.value == index
                                              ? ColorPalette.white
                                              : ColorPalette.transparent,
                                        ),
                                        if (dataList.length - 1 == index)
                                          context.heightBox(
                                            h: 0.08,
                                          )
                                      ],
                                    );
                                  }),
                            ),
                        ],
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(
                      //       horizontal: 20, vertical: 10),
                      //   child: FittedBox(
                      //     child: textButton(
                      //         bgColor: _selectedIndex.value == -1
                      //             ? ColorPalette.grey
                      //             : Colors.black,
                      //         context: context,
                      //         title: 'NEXT',
                      //         onTap: () {
                      //           if (_selectedIndex.value != -1) {}
                      //         }),
                      //   ),
                      // )
                    ],
                  ));
          })),
    );
  }
}
