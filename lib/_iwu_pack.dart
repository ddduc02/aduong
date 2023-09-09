import 'package:_iwu_pack/setup/app_base.dart';
import 'package:_iwu_pack/setup/app_setup.dart';
import 'package:firebase_core/firebase_core.dart';

import 'src/constants/constants.dart';
import 'src/utils/utils.dart';

imagineeringwithusPackSetup() {
  AppSetup.initialized(
    value: AppSetup(
      env: AppEnv.preprod,
      appColors: AppColors.instance,
      appPrefs: AppPrefs.instance,
    ),
  );
}

const FirebaseOptions firebaseOptionsPREPROD = FirebaseOptions(
    apiKey: "AIzaSyBZ7dcxtHVOvV-acmmLYLn_CA3RHf2qUsE",
    authDomain: "meta-40f85.firebaseapp.com",
    projectId: "meta-40f85",
    storageBucket: "meta-40f85.appspot.com",
    messagingSenderId: "554971733349",
    appId: "1:554971733349:web:9820b9b626a76e1f38d58c",
    measurementId: "G-SSJZDGB6N6");
