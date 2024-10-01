import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gbk_tour/config/extensions/height_width_box_extension.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';
import 'package:gbk_tour/config/router/routes.dart';
import 'package:gbk_tour/core/bloc/auth/auth_bloc.dart';
import 'package:gbk_tour/core/bloc/auth/auth_event.dart';
import 'package:gbk_tour/core/bloc/auth/auth_state.dart';
import 'package:gbk_tour/core/bloc/distric/distric_bloc.dart';
import 'package:gbk_tour/core/bloc/distric/distric_event.dart';
import 'package:gbk_tour/core/bloc/distric/distric_state.dart';
import 'package:gbk_tour/core/bloc/home/home_bloc.dart';
import 'package:gbk_tour/core/bloc/home/home_event.dart';
import 'package:gbk_tour/core/bloc/home/home_state.dart';

import 'package:gbk_tour/core/colors/color_palette.dart';
import 'package:gbk_tour/core/constant/constant.dart';
import 'package:gbk_tour/data/models/province/province_res_model.dart';
import 'package:gbk_tour/gen/assets.gen.dart';
import 'package:gbk_tour/screens/home/component/home_drawer.dart';
import 'package:gbk_tour/screens/home/component/home_tile.dart';
import 'package:gbk_tour/utils/dialog/auth_error_dialog.dart';
import 'package:gbk_tour/utils/loader/loading.dart';

import 'package:gbk_tour/utils/text_button.dart';
import 'package:gbk_tour/utils/app_text.dart';
import 'package:gbk_tour/utils/background.dart';

class HomeScreen extends HookWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        useMemoized(() => GlobalKey<ScaffoldState>());
    final _selectedIndex = useState<int>(-1);
    final _selectedProvince =
        useState<ProvinceResModel>(ProvinceResModel.fromJson({}));
    onChange(int index, ProvinceResModel model) {
      _selectedIndex.value = index;
      _selectedProvince.value = model;
    }

    useEffect(() {
      context.read<HomeBloc>().add(GetHomeDataEvent(context: context));
    });
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          key: _scaffoldKey,
          drawer: HomeDrawer(
            onTap: () {
              _scaffoldKey.currentState?.closeDrawer();
              context.read<AuthBloc>().add(AuthLogoutEvent(context: context));
            },
          ),
          body: background(
              context: context,
              child: BlocConsumer<AuthBloc, AuthState>(
                listener: (BuildContext context, AuthState state) {
                  if (state.isloading) {
                    return LoadingScreen.inatance()
                        .show(context: context, text: 'Loading....');
                  } else {
                    LoadingScreen.inatance().hide();
                  }
                  final error = state.error;
                  if (error != null) {
                    showAuthErrorDailog(
                      authError: error,
                      contxt: context,
                    );
                  }
                },
                builder: (context, stat2) {
                  return Builder(builder: (context) {
                    if (state.isloading) {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: ColorPalette.white,
                        ),
                      );
                    } else {
                      {
                        List<ProvinceResModel> modelList =
                            state.getProvinces ?? [];

                        return SafeArea(
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: GestureDetector(
                                          onTap: () {
                                            _scaffoldKey.currentState
                                                ?.openDrawer();
                                          },
                                          child: Icon(
                                            Icons.menu,
                                            color: ColorPalette.white,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: appText(
                                          context: context,
                                          text:
                                              'Select the Provence whare you want to go..',
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ]),
                                  ),
                                  context.heightBox(h: 0.02),
                                  Expanded(
                                      child: ListView.builder(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          itemCount: 2,
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20, bottom: 80),
                                          itemBuilder: (context, index) {
                                            return homeTile(
                                                color: _selectedIndex.value ==
                                                        index
                                                    ? ColorPalette.white
                                                    : ColorPalette.transparent,
                                                title: modelList[index]
                                                    .province_name!,
                                                description: index == 0
                                                    ? Constant.kashmirDes
                                                    : Constant.gilgitDes,
                                                context: context,
                                                onTap: () => onChange(
                                                    index, modelList[index]),
                                                image: index == 0
                                                    ? Constant.kashmirImage(
                                                        context)
                                                    : Constant.gilgitImage(
                                                        context));
                                          })),
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
                                              .read<DistricBloc>()
                                              .add(DistricLoadEvent());
                                          print(
                                              "Province ID ${_selectedProvince.value.id}");

                                          Navigator.pushNamed(
                                              context, Routes.distric,
                                              arguments:
                                                  _selectedProvince.value);
                                        }
                                      }),
                                ),
                              )
                            ],
                          ),
                        );
                      }
                    }
                  });
                },
              )),
        );
      },
    );
  }
}
