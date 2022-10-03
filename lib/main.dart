import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';
import 'package:whichimoment/jitsi_meet/view/jitsi_meet_screen.dart';
import 'auth/firebase_user_provider.dart';
import 'auth/auth_util.dart';

import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'flutter_flow/nav/nav.dart';
import 'index.dart';

import 'dart:io';

import 'package:flutter/foundation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FlutterFlowTheme.initialize();

  runApp(MyApp());
}
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Meeting(),
//     );
//   }
// }

// class Meeting extends StatefulWidget {
//   const Meeting({Key? key}) : super(key: key);

//   @override
//   _MeetingState createState() => _MeetingState();
// }

// class _MeetingState extends State<Meeting> {
final serverText = TextEditingController();
final roomText = TextEditingController(text: "jitsi-meet-wrapper-test-room");
final subjectText = TextEditingController(text: "My Plugin Test Meeting");
final tokenText = TextEditingController();
final userDisplayNameText = TextEditingController(text: "Plugin Test User");
final userEmailText = TextEditingController(text: "fake@email.com");
final userAvatarUrlText = TextEditingController();

bool isAudioMuted = true;
bool isAudioOnly = false;
bool isVideoMuted = true;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Jitsi Meet Wrapper Test')),
//         body: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           child: buildMeetConfig(),
//         ),
//       ),
//     );
//   }

//   Widget buildMeetConfig() {
//     return SingleChildScrollView(
//       child: Column(
//         children: <Widget>[
//           const SizedBox(height: 16.0),
//           _buildTextField(
//             labelText: "Server URL",
//             controller: serverText,
//             hintText: "Hint: Leave empty for meet.jitsi.si",
//           ),
//           const SizedBox(height: 16.0),
//           _buildTextField(labelText: "Room", controller: roomText),
//           const SizedBox(height: 16.0),
//           _buildTextField(labelText: "Subject", controller: subjectText),
//           const SizedBox(height: 16.0),
//           _buildTextField(labelText: "Token", controller: tokenText),
//           const SizedBox(height: 16.0),
//           _buildTextField(
//             labelText: "User Display Name",
//             controller: userDisplayNameText,
//           ),
//           const SizedBox(height: 16.0),
//           _buildTextField(
//             labelText: "User Email",
//             controller: userEmailText,
//           ),
//           const SizedBox(height: 16.0),
//           _buildTextField(
//             labelText: "User Avatar URL",
//             controller: userAvatarUrlText,
//           ),
//           const SizedBox(height: 16.0),
//           CheckboxListTile(
//             title: const Text("Audio Muted"),
//             value: isAudioMuted,
//             onChanged: _onAudioMutedChanged,
//           ),
//           const SizedBox(height: 16.0),
//           CheckboxListTile(
//             title: const Text("Audio Only"),
//             value: isAudioOnly,
//             onChanged: _onAudioOnlyChanged,
//           ),
//           const SizedBox(height: 16.0),
//           CheckboxListTile(
//             title: const Text("Video Muted"),
//             value: isVideoMuted,
//             onChanged: _onVideoMutedChanged,
//           ),
//           const Divider(height: 48.0, thickness: 2.0),
//           SizedBox(
//             height: 64.0,
//             width: double.maxFinite,
//             child: ElevatedButton(
//               onPressed: () => _joinMeeting(),
//               child: const Text(
//                 "Join Meeting",
//                 style: TextStyle(color: Colors.white),
//               ),
//               style: ButtonStyle(
//                 backgroundColor:
//                     MaterialStateColor.resolveWith((states) => Colors.blue),
//               ),
//             ),
//           ),
//           const SizedBox(height: 48.0),
//         ],
//       ),
//     );
//   }

//   _onAudioOnlyChanged(bool? value) {
//     setState(() {
//       isAudioOnly = value!;
//     });
//   }

//   _onAudioMutedChanged(bool? value) {
//     setState(() {
//       isAudioMuted = value!;
//     });
//   }

//   _onVideoMutedChanged(bool? value) {
//     setState(() {
//       isVideoMuted = value!;
//     });
//   }

//   _joinMeeting() async {
//     String? serverUrl = serverText.text.trim().isEmpty ? null : serverText.text;

//     Map<FeatureFlag, Object> featureFlags = {};

//     // Define meetings options here
//     var options = JitsiMeetingOptions(
//       roomNameOrUrl: roomText.text,
//       serverUrl: serverUrl,
//       subject: subjectText.text,
//       token: tokenText.text,
//       isAudioMuted: isAudioMuted,
//       isAudioOnly: isAudioOnly,
//       isVideoMuted: isVideoMuted,
//       userDisplayName: userDisplayNameText.text,
//       userEmail: userEmailText.text,
//       featureFlags: featureFlags,
//     );

//     debugPrint("JitsiMeetingOptions: $options");
//     await JitsiMeetWrapper.joinMeeting(
//       options: options,
//       listener: JitsiMeetingListener(
//         onOpened: () => debugPrint("onOpened"),
//         onConferenceWillJoin: (url) {
//           debugPrint("onConferenceWillJoin: url: $url");
//         },
//         onConferenceJoined: (url) {
//           debugPrint("onConferenceJoined: url: $url");
//         },
//         onConferenceTerminated: (url, error) {
//           debugPrint("onConferenceTerminated: url: $url, error: $error");
//         },
//         onAudioMutedChanged: (isMuted) {
//           debugPrint("onAudioMutedChanged: isMuted: $isMuted");
//         },
//         onVideoMutedChanged: (isMuted) {
//           debugPrint("onVideoMutedChanged: isMuted: $isMuted");
//         },
//         onScreenShareToggled: (participantId, isSharing) {
//           debugPrint(
//             "onScreenShareToggled: participantId: $participantId, "
//             "isSharing: $isSharing",
//           );
//         },
//         onParticipantJoined: (email, name, role, participantId) {
//           debugPrint(
//             "onParticipantJoined: email: $email, name: $name, role: $role, "
//             "participantId: $participantId",
//           );
//         },
//         onParticipantLeft: (participantId) {
//           debugPrint("onParticipantLeft: participantId: $participantId");
//         },
//         onParticipantsInfoRetrieved: (participantsInfo, requestId) {
//           debugPrint(
//             "onParticipantsInfoRetrieved: participantsInfo: $participantsInfo, "
//             "requestId: $requestId",
//           );
//         },
//         onChatMessageReceived: (senderId, message, isPrivate) {
//           debugPrint(
//             "onChatMessageReceived: senderId: $senderId, message: $message, "
//             "isPrivate: $isPrivate",
//           );
//         },
//         onChatToggled: (isOpen) => debugPrint("onChatToggled: isOpen: $isOpen"),
//         onClosed: () => debugPrint("onClosed"),
//       ),
//     );
//   }

Widget _buildTextField({
  required String labelText,
  required TextEditingController controller,
  String? hintText,
}) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
        hintText: hintText),
  );
}

// }
class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  late Stream<WhichimomentFirebaseUser> userStream;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  final authUserSub = authenticatedUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();
    _appStateNotifier = AppStateNotifier();
    _router = createRouter(_appStateNotifier);
    userStream = whichimomentFirebaseUserStream()
      ..listen((user) => _appStateNotifier.update(user));
    Future.delayed(
      Duration(seconds: 1),
      () => _appStateNotifier.stopShowingSplashImage(),
    );
  }

  @override
  void dispose() {
    authUserSub.cancel();

    super.dispose();
  }

  void setLocale(String language) =>
      setState(() => _locale = createLocale(language));
  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'whichimoment',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('ko'),
      ],
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: _themeMode,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key? key, this.initialPage, this.page}) : super(key: key);

  final String? initialPage;
  final Widget? page;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'Home_page';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'Home_page': HomePageWidget(),
      'pro_page': ProPageWidget(),
      'Community': CommunityWidget(),
      'Contents': ContentsWidget(),
      'MyPage': MyPageWidget(),
      'wellbeinginfo': WellbeinginfoWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);
    return Scaffold(
      body: _currentPage ?? tabs[_currentPageName],
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() {
          _currentPage = null;
          _currentPageName = tabs.keys.toList()[i];
        }),
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        selectedItemColor: Color(0xFF6A5CFD),
        unselectedItemColor: Color(0xFF9ACFF4),
        selectedBackgroundColor: Color(0x00000000),
        borderRadius: 8,
        itemBorderRadius: 8,
        margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
        width: double.infinity,
        elevation: 0,
        items: [
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home_outlined,
                  color:
                      currentIndex == 0 ? Color(0xFF6A5CFD) : Color(0xFF9ACFF4),
                  size: 24,
                ),
                Text(
                  '메인화면',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 0
                        ? Color(0xFF6A5CFD)
                        : Color(0xFF9ACFF4),
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.people_outline,
                  color:
                      currentIndex == 1 ? Color(0xFF6A5CFD) : Color(0xFF9ACFF4),
                  size: 24,
                ),
                Text(
                  '전문가 찾기',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 1
                        ? Color(0xFF6A5CFD)
                        : Color(0xFF9ACFF4),
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.comment,
                  color:
                      currentIndex == 2 ? Color(0xFF6A5CFD) : Color(0xFF9ACFF4),
                  size: 24,
                ),
                Text(
                  '커뮤니티',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 2
                        ? Color(0xFF6A5CFD)
                        : Color(0xFF9ACFF4),
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.video_collection,
                  color:
                      currentIndex == 3 ? Color(0xFF6A5CFD) : Color(0xFF9ACFF4),
                  size: 24,
                ),
                Text(
                  '컨텐츠',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 3
                        ? Color(0xFF6A5CFD)
                        : Color(0xFF9ACFF4),
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          ),
          // FloatingNavbarItem(
          //   customWidget: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Icon(
          //         Icons.accessible,
          //         color:
          //             currentIndex == 4 ? Color(0xFF6A5CFD) : Color(0xFF9ACFF4),
          //         size: 24,
          //       ),
          //       Text(
          //         '복지정보',
          //         overflow: TextOverflow.ellipsis,
          //         style: TextStyle(
          //           color: currentIndex == 4
          //               ? Color(0xFF6A5CFD)
          //               : Color(0xFF9ACFF4),
          //           fontSize: 11.0,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person,
                  color:
                      currentIndex == 5 ? Color(0xFF6A5CFD) : Color(0xFF9ACFF4),
                  size: 24,
                ),
                Text(
                  '마이페이지',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 5
                        ? Color(0xFF6A5CFD)
                        : Color(0xFF9ACFF4),
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
