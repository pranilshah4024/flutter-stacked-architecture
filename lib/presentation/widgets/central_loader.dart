/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/
import 'package:my_profile/exports.dart';

class CentralLoader extends StatelessWidget {
  final Widget baseChild;
  final CentralViewState? centralViewState;

  const CentralLoader({
    super.key,
    required this.baseChild,
    this.centralViewState,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        baseChild,
        if (centralViewState == CentralViewState.busy) ...[
          Container(
            color: Colors.white54,
            child: Center(
              child: Assets.lottie.loading.lottie(
                height: SizeConfig.relativeHeight(20),
                width: SizeConfig.relativeHeight(20),
              ),
            ),
          )
        ]
      ],
    ).addGestureTap(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
    );
  }
}
