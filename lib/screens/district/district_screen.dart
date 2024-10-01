import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gbk_tour/config/extensions/height_width_box_extension.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';
import 'package:gbk_tour/config/router/routes.dart';
import 'package:gbk_tour/core/bloc/distric/distric_bloc.dart';
import 'package:gbk_tour/core/bloc/distric/distric_event.dart';
import 'package:gbk_tour/core/bloc/distric/distric_state.dart';
import 'package:gbk_tour/core/bloc/picnicspot/picnic_spot_bloc.dart';
import 'package:gbk_tour/core/bloc/picnicspot/picnic_spot_event.dart';
import 'package:gbk_tour/core/colors/color_palette.dart';
import 'package:gbk_tour/data/models/distric/distric_res_model.dart';
import 'package:gbk_tour/data/models/province/province_res_model.dart';
import 'package:gbk_tour/utils/app_text.dart';
import 'package:gbk_tour/utils/background.dart';
import 'package:gbk_tour/utils/progress_indicator.dart';
import 'package:gbk_tour/utils/text_button.dart';

class DistrictScreen extends HookWidget {
  final ProvinceResModel model;
  const DistrictScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final _selectedDistric =
        useState<DistricResModel>(DistricResModel.fromJson({}));
    final _selectedIndex = useState<int>(-1);
    useEffect(() {
      context
          .read<DistricBloc>()
          .add(GetDistricEvent(context: context, id: model.id!));
    });
    selectDistrict(int index, DistricResModel model) {
      _selectedIndex.value = index;
      _selectedDistric.value = model;
    }

    return Scaffold(
      body: background(
          context: context,
          child: SafeArea(child: BlocBuilder<DistricBloc, DistricState>(
            builder: (context, state) {
              if (state.isloading) {
                return progressIndicator();
              }
              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: appText(
                          context: context,
                          maxLines: 3,
                          text:
                              'Select the District of\n${model.province_name} ',
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      context.heightBox(h: 0.02),
                      if (state.getDistrics == null)
                        Expanded(
                            child: Center(
                          child: appText(
                              context: context, text: 'No dirstic added yet.'),
                        ))
                      else
                        Expanded(
                          child: ListView.builder(
                              shrinkWrap: true,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              itemCount: state.getDistrics!.length,
                              itemBuilder: (context, index) {
                                final dataModel = state.getDistrics![index];
                                return Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 15),
                                      child: GestureDetector(
                                        onTap: () =>
                                            selectDistrict(index, dataModel),
                                        child: Container(
                                          color: Colors.transparent,
                                          width: context.getSize.width,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(4),
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: ColorPalette.white,
                                                      width: 2,
                                                    )),
                                                child: Container(
                                                  height: 20,
                                                  width: 20,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: _selectedDistric
                                                                .value.id ==
                                                            dataModel.id
                                                        ? ColorPalette.white
                                                        : ColorPalette
                                                            .transparent,
                                                  ),
                                                ),
                                              ),
                                              context.widthBox(w: 0.02),
                                              appText(
                                                  context: context,
                                                  text:
                                                      dataModel.district_name!)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (state.getDistrics!.length - 1 == index)
                                      context.heightBox(h: 0.08)
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
                              context
                                  .read<PicnicSpotBloc>()
                                  .add(LoadPicnicSpotEvent());
                              Navigator.pushNamed(context, Routes.picnicspot,
                                  arguments: _selectedDistric.value);
                            }
                          }),
                    ),
                  )
                ],
              );
            },
          ))),
    );
  }
}
