import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gbk_tour/config/extensions/height_width_box_extension.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';
import 'package:gbk_tour/core/blocs/auth/auth_bloc.dart';
import 'package:gbk_tour/core/blocs/auth/auth_event.dart';
import 'package:gbk_tour/core/colors/color_palette.dart';
import 'package:gbk_tour/gen/assets.gen.dart';
import 'package:gbk_tour/utils/app_text.dart';
import 'package:gbk_tour/utils/background.dart';
import 'package:gbk_tour/utils/text_button.dart';
import 'package:gbk_tour/utils/text_field.dart';

class ForgetPasswordForm extends HookWidget {
  const ForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController();
    final _value = useState<String>('');
    List<String> tabList = <String>['Email', 'Phone Number'];
    final _selectedTab = useState<int>(0);
    void _onTabChange(int index) {
      _selectedTab.value = index;
      _controller.clear();
      _value.value = '';
      FocusScope.of(context).unfocus();
    }

    return background(
      context: context,
      child: PopScope(
        canPop: false,
        onPopInvoked: (val) {
          if (val == false) {
            context.read<AuthBloc>().add( AuthNavigationEvent(index: 1));
          }
        },
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            context.heightBox(h: 0.05),
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  context
                      .read<AuthBloc>()
                      .add( AuthNavigationEvent(index: 1));
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: ColorPalette.white,
                ),
              ),
            ),
            Assets.images.logo.image(height: context.getSize.height * 0.2),
            appText(
              context: context,
              text: "Forget Password",
              align: TextAlign.left,
              fontSize: 36,
              fontWeight: FontWeight.w800,
            ),
            context.heightBox(h: 0.005),
            appText(
              context: context,
              align: TextAlign.left,
              text:
                  'Please enter your email or phone no  to reset the password',
              fontSize: 14,
            ),
            context.heightBox(h: 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(tabList.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {
                      print(index);
                      _onTabChange(index);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: ColorPalette.white,
                              )),
                          child: Container(
                            height: context.getSize.height * 0.03,
                            width: context.getSize.width * 0.03,
                            decoration: BoxDecoration(
                                color: _selectedTab.value == index
                                    ? ColorPalette.white
                                    : ColorPalette.transparent,
                                shape: BoxShape.circle),
                          ),
                        ),
                        context.widthBox(w: 0.01),
                        appText(context: context, text: tabList[index])
                      ],
                    ),
                  ),
                );
              }),
            ),
            context.heightBox(h: 0.008),
            textField(
              controller: _controller,
              textInputType: _selectedTab.value == 0
                  ? TextInputType.emailAddress
                  : TextInputType.number,
              onChange: (val) {
                _value.value = val;
              },
              hintText: 'Enter Your Phone Number / Email',
              context: context,
            ),
            context.heightBox(h: 0.1),
            textButton(
              bgColor:
                  _value.value == '' ? ColorPalette.grey : ColorPalette.black,
              context: context,
              title: 'SEND',
              onTap: () {
                if (_value.value != '') {
                  context.read<AuthBloc>().add(AuthNavigationEvent(
                        index: 4,
                        isEmail: _selectedTab.value == 0 ? true : false,
                        value: _value.value,
                      ));
                }
              },
            ),
            context.heightBox(h: 0.02),
          ],
        ),
      ),
    );
  }
}
