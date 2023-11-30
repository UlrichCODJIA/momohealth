import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../core/app_export.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
          child: SizedBox(
        height: 50,
        width: 100,
        child: LoadingIndicator(
            indicatorType: Indicator.ballClipRotate,
            colors: [
              theme.colorScheme.onPrimaryContainer,
              theme.colorScheme.background
            ],
            strokeWidth: 2,
            backgroundColor: Colors.transparent,
            pathBackgroundColor: Colors.blue),
      )),
    );
  }
}
