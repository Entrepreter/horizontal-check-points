library check_points;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckPoints extends StatelessWidget {
  final int checkedTill;
  final List<String> checkPoints;
  final Color timelineColor;
  final double circleDia;
  final Icon icon;
  final TextStyle labelStyle;

  CheckPoints(
      {@required this.checkedTill,
      @required this.checkPoints,
      this.icon = const Icon(
        Icons.done,
        color: Colors.white,
      ),
      this.timelineColor,
      this.circleDia = 50.0,
      this.labelStyle}) {
    // assert(circleDia <= 60);
    assert(checkPoints.length <= 7);
  }

  @override
  Widget build(BuildContext context) {
    Color timelineColor = this.timelineColor ?? Theme.of(context).primaryColor;
    TextStyle labelStyle =
        this.labelStyle ?? Theme.of(context).textTheme.bodyText2;
    int count = -1; // check counts
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: checkPoints.map((e) {
          count++;
          return Expanded(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    // color: Colors.red,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: count <= checkedTill
                                ? timelineColor
                                : timelineColor.withOpacity(0.2),
                            height: count == 0 ? 0 : 4,
                            // margin: edgeInsetTopOnly,
                          ),
                        ),
                        Container(
                          width: circleDia ,
                          padding: EdgeInsets.all(4),
                          child: FittedBox(child: icon),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: count <= checkedTill
                                  ? timelineColor
                                  : timelineColor.withOpacity(0.2)),
                        ),
                        Expanded(
                          child: Container(
                            color: count < checkedTill
                                ? timelineColor
                                : timelineColor.withOpacity(0.2),
                            height: count == (checkPoints.length - 1) ? 0 : 4,
                            // margin: edgeInsetTopOnly,
                            // width: cWidth,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    e,
                    textAlign: TextAlign.center,
                    style: labelStyle,
                  )
                ],
              ),
            ),
          );
        }).toList());
  }
}
