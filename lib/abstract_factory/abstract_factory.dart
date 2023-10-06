import 'package:flutter/material.dart';
import 'package:research/factory_methods/platform_button.dart';
import 'package:research/factory_methods/platform_indicator.dart';

abstract class AbstractFactory{
  Widget buildButton(BuildContext context,VoidCallback onPress,String text);
  Widget buildIndicator(BuildContext context);

}
class AbstractFactoryImpl implements AbstractFactory{
  @override
  Widget buildButton(BuildContext context, VoidCallback onPress, String text) {
      return PlatformButton(TargetPlatform.android).build(onPress, Text(text));
  }

  @override
  Widget buildIndicator(BuildContext context) {
    return PlatformIndicator(TargetPlatform.iOS).build();
  }


}