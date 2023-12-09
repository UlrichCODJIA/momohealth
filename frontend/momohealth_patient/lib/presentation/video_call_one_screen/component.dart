import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class VideoCallComponent extends StatefulWidget {
  const VideoCallComponent({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  State<VideoCallComponent> createState() => _VideoCallComponentState();
}

class _VideoCallComponentState extends State<VideoCallComponent> {
  Duration callDuration = Duration.zero;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
        onDispose: () {
          print("vous avez quitter la reunion");
//           rdvController.patchCallDuration(rdvId: widget.callID, data: {
//           "duree_appel": callDuration.toString().split(".").first.padLeft(8, "0")
//          });
        },
        appID: dotenv.env['ZEGO_APP_ID']!
            .toInt(), //zegoAppID, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign: dotenv.env[
            'ZEGO_ADMIN_ID']!, //zegoAdminCode, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: "userId2", //userController.user.id,
        userName: "user2",
        // userController.isMedecin
        //     ? "${userController.user.nom} ${userController.user.prenoms}"
        //     : "${userController.user.nom} ${userController.user.prenoms}, ${DateTime.now().year - userController.user.anneeDeNaissance}ans, ${userController.user.sexe}",
        callID: widget.callID,
        // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
          ..durationConfig = ZegoCallDurationConfig(
            onDurationUpdate: (p0) {
              setState(() {
                callDuration = p0;
              });
            },
          )
          ..bottomMenuBarConfig =
              ZegoBottomMenuBarConfig(hideAutomatically: false)
          ..onOnlySelfInRoom = (context) => Navigator.of(context).pop());
  }
}
