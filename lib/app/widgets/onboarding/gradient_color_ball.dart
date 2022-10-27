import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/values/values.dart';

class GradientColorBall extends StatelessWidget {
  final int selectIndex;
  ValueNotifier<int> valueChanger;
  final List<Color> gradientList;

  GradientColorBall({Key? key, required this.valueChanger, required this.selectIndex, required this.gradientList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = Get.width;
    return InkWell(
      onTap: () {
        valueChanger.value = selectIndex;
      },
      child: ValueListenableBuilder(
          valueListenable: valueChanger,
          builder: (BuildContext context, _, __) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8, right: 8),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: (selectIndex == valueChanger.value)
                        ? Border.all(color: HexColor.fromHex("266FFE"), width: 2)
                        : Border.all(width: 1, color: HexColor.fromHex("181A1F"))),
                child: Center(
                  child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [...gradientList]),
                          shape: BoxShape.circle)),
                ),
              ),
            );
          }),
    );
  }
}
