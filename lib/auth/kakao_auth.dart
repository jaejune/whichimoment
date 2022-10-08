import 'package:cloud_functions/cloud_functions.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_talk.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_template.dart';

Future<String?> signInKakao() async {
  if (await isKakaoTalkInstalled()) {
    try {
      OAuthToken token = await UserApi.instance.loginWithKakaoTalk();

      print('카카오톡으로 로그인 성공');
      print('토큰 $token');
      return token.accessToken;
    } catch (error) {
      print('카카오톡으로 로그인 실패 $error');
      // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
      try {
        OAuthToken token = await UserApi.instance.loginWithKakaoAccount();

        print('카카오계정으로 로그인 성공');
        print('토큰 ${token.accessToken}');
        return token.accessToken;
      } catch (error) {
        print('카카오계정으로 로그인 실패 $error');
        return null;
      }
    }
  } else {
    try {
      OAuthToken token = await UserApi.instance.loginWithKakaoAccount();

      print('카카오계정으로 로그인 성공');
      print('토큰 ${token.accessToken}');
      return token.accessToken;
    } catch (error) {
      print('카카오계정으로 로그인 실패 $error');
      return null;
    }
  }
}

Future<void> createCustomToken(String accessToken) async {
  HttpsCallable callable =
      FirebaseFunctions.instanceFor(region: 'asia-northeast3')
          .httpsCallable('kakaoToken');
  final resp =
      await callable.call(<String, dynamic>{'access_token': accessToken});
  print(resp);
}
