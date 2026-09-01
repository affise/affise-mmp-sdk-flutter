import 'dart:async';

import 'package:flutter/scheduler.dart';

import '../native/affise_native.dart';
import 'affise_modules.dart';

abstract class AffiseHasModule {
  Future<bool> hasModule();
}

Future<bool> isModuleInit(AffiseNative native, AffiseModules module) async {
  var completer = Completer<bool>();
  SchedulerBinding.instance.addPostFrameCallback((_) {
    native.getModulesInstalled().then((modules) {
      completer.complete(modules.contains(module));
    }).catchError((error) {
      completer.completeError(error);
    });
  });
  return completer.future;
}