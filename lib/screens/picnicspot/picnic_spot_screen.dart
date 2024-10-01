import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gbk_tour/config/extensions/height_width_box_extension.dart';
import 'package:gbk_tour/config/router/routes.dart';
import 'package:gbk_tour/core/bloc/hotels/hotels_bloc.dart';
import 'package:gbk_tour/core/bloc/hotels/hotels_event.dart';
import 'package:gbk_tour/core/bloc/picnicspot/picnic_spot_bloc.dart';
import 'package:gbk_tour/core/bloc/picnicspot/picnic_spot_event.dart';
import 'package:gbk_tour/core/bloc/picnicspot/picnic_spot_state.dart';
import 'package:gbk_tour/core/colors/color_palette.dart';
import 'package:gbk_tour/data/models/distric/distric_res_model.dart';
import 'package:gbk_tour/data/models/picnicspot/picnic_spot_res_model.dart';
import 'package:gbk_tour/screens/picnicspot/component/picnic_tile.dart';
import 'package:gbk_tour/utils/app_text.dart';
import 'package:gbk_tour/utils/background.dart';
import 'package:gbk_tour/utils/progress_indicator.dart';
import 'package:gbk_tour/utils/text_button.dart';

class PicnicSpotScreen extends HookWidget {
  final DistricResModel model;
  const PicnicSpotScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final _selectedPicnicSpot =
        useState<PicnicSpotResModel>(PicnicSpotResModel.fromJson({}));
    final _selectedIndex = useState<int>(-1);
    useEffect(() {
      context
          .read<PicnicSpotBloc>()
          .add(GetPicnicSpotEvent(context: context, districId: model.id!));
    });
    selectPicnicSpot(int index, PicnicSpotResModel model) {
      _selectedIndex.value = index;
      _selectedPicnicSpot.value = model;
    }

    return Scaffold(
      body: background(
          context: context,
          child: BlocBuilder<PicnicSpotBloc, PicnicSpotState>(
            builder: (context, state) {
              if (state.isloading) {
                return progressIndicator();
              } else {
                List<PicnicSpotResModel> dataList = state.getPicnicSpots ?? [];
                return SafeArea(
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
                                'Select the Picnic Spot\nof District ${model.district_name} ',
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
                                      picnicTile(
                                        description:
                                            dataList[index].description,
                                        context: context,
                                        onTap: () {
                                          selectPicnicSpot(
                                              index, dataList[index]);
                                        },
                                        image: dataList[index].point_images!,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: FittedBox(
                        child: textButton(
                            bgColor: _selectedIndex.value == -1
                                ? ColorPalette.grey
                                : Colors.black,
                            context: context,
                            title: 'NEXT',
                            onTap: () {
                              if (_selectedIndex.value != -1) {
                                context.read<HotelsBloc>().add(GetHotelsEvent(
                                      context: context,
                                      districId: _selectedPicnicSpot
                                          .value.district_id!,
                                    ));
                                Navigator.pushNamed(context, Routes.hotels,
                                    arguments: _selectedPicnicSpot.value);
                              }
                            }),
                      ),
                    )
                  ],
                ));
              }
            },
          )),
    );
  }
}
