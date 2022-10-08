import 'package:flutter/material.dart';
import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';

class JitsiMeetScreen extends StatefulWidget {
  JitsiMeetScreen({Key? key}) : super(key: key);

  @override
  State<JitsiMeetScreen> createState() => _JitsiMeetScreenState();
}

void hideKeyboard(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus) {
    currentFocus.unfocus();
  }
}

class _JitsiMeetScreenState extends State<JitsiMeetScreen> {
  final serverText = TextEditingController(text: 'https://hoca.monster/');
  final roomText = TextEditingController(text: "jitsi-meet-wrapper-test-room");
  final subjectText = TextEditingController();
  final tokenText = TextEditingController();
  final userDisplayNameText = TextEditingController();
  final userEmailText = TextEditingController(text: "fake@email.com");
  final userAvatarUrlText = TextEditingController();

  bool isAudioMuted = true;
  bool isAudioOnly = false;
  bool isVideoMuted = true;

  Widget _buildTextField({
    required String labelText,
    required TextEditingController controller,
    String? hintText,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            //<-- SEE HERE
            borderSide: BorderSide(width: 2, color: Color(0xffE0E0E0)),
          ),
          focusedBorder: OutlineInputBorder(
            //<-- SEE HERE
            borderSide: BorderSide(width: 2, color: Color(0xFF9ACFF4)),
          ),
          labelText: labelText,
          hintText: hintText),
    );
  }

  _onAudioOnlyChanged(bool? value) {
    setState(() {
      isAudioOnly = value!;
    });
  }

  _onAudioMutedChanged(bool? value) {
    setState(() {
      isAudioMuted = value!;
    });
  }

  _onVideoMutedChanged(bool? value) {
    setState(() {
      isVideoMuted = value!;
    });
  }

  _joinMeeting() async {
    String? serverUrl = serverText.text.trim().isEmpty ? null : serverText.text;

    Map<FeatureFlag, Object> featureFlags = {};

    // Define meetings options here
    var options = JitsiMeetingOptions(
      roomNameOrUrl: roomText.text,
      serverUrl: serverUrl,
      subject: subjectText.text,
      token: tokenText.text,
      isAudioMuted: isAudioMuted,
      isAudioOnly: isAudioOnly,
      isVideoMuted: isVideoMuted,
      userDisplayName: userDisplayNameText.text,
      userEmail: userEmailText.text,
      featureFlags: featureFlags,
    );

    debugPrint("JitsiMeetingOptions: $options");
    await JitsiMeetWrapper.joinMeeting(
      options: options,
      listener: JitsiMeetingListener(
        onOpened: () => debugPrint("onOpened"),
        onConferenceWillJoin: (url) {
          debugPrint("onConferenceWillJoin: url: $url");
        },
        onConferenceJoined: (url) {
          debugPrint("onConferenceJoined: url: $url");
        },
        onConferenceTerminated: (url, error) {
          debugPrint("onConferenceTerminated: url: $url, error: $error");
        },
        onAudioMutedChanged: (isMuted) {
          debugPrint("onAudioMutedChanged: isMuted: $isMuted");
        },
        onVideoMutedChanged: (isMuted) {
          debugPrint("onVideoMutedChanged: isMuted: $isMuted");
        },
        onScreenShareToggled: (participantId, isSharing) {
          debugPrint(
            "onScreenShareToggled: participantId: $participantId, "
            "isSharing: $isSharing",
          );
        },
        onParticipantJoined: (email, name, role, participantId) {
          debugPrint(
            "onParticipantJoined: email: $email, name: $name, role: $role, "
            "participantId: $participantId",
          );
        },
        onParticipantLeft: (participantId) {
          debugPrint("onParticipantLeft: participantId: $participantId");
        },
        onParticipantsInfoRetrieved: (participantsInfo, requestId) {
          debugPrint(
            "onParticipantsInfoRetrieved: participantsInfo: $participantsInfo, "
            "requestId: $requestId",
          );
        },
        onChatMessageReceived: (senderId, message, isPrivate) {
          debugPrint(
            "onChatMessageReceived: senderId: $senderId, message: $message, "
            "isPrivate: $isPrivate",
          );
        },
        onChatToggled: (isOpen) => debugPrint("onChatToggled: isOpen: $isOpen"),
        onClosed: () => debugPrint("onClosed"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          hideKeyboard(context);
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      Image.asset(
                        'assets/images/hoca_logo.png',
                        height: 150,
                      ),
                      const SizedBox(height: 16.0),
                      _buildTextField(
                          labelText: "방제목", controller: subjectText),
                      const SizedBox(height: 16.0),
                      _buildTextField(
                        labelText: "표시 이름",
                        controller: userDisplayNameText,
                      ),
                      const SizedBox(height: 16.0),
                      CheckboxListTile(
                        activeColor: Color(0xFF9ACFF4),
                        title: const Text("오디오 전용"),
                        value: isAudioOnly,
                        onChanged: _onAudioOnlyChanged,
                      ),
                      const SizedBox(height: 16.0),
                      CheckboxListTile(
                        title: const Text("카메라 사용안함"),
                        activeColor: Color(0xFF9ACFF4),
                        value: isVideoMuted,
                        onChanged: _onVideoMutedChanged,
                      ),
                      const Divider(height: 48.0, thickness: 2.0),
                      SizedBox(
                        height: 64.0,
                        width: double.maxFinite,
                        child: ElevatedButton(
                          onPressed: () => _joinMeeting(),
                          child: const Text(
                            "미팅 참여",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Color(0xFF9ACFF4)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 48.0),
                    ],
                  )))),
        ));
  }
}
