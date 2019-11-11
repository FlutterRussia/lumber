library lumber;

import 'package:lumber/src/lumber.dart';

extension LogString on String {



  /// Method is used to log errors
  void e() {
    Lumber lumber = Lumber.getInstance();

    if (lumber.logEnable) {
       print("${DateTime.now()}\t${lumber.packageName} | ERROR |: $this");
       lumber.onErrorLog;
    }
  }

  /// Method is used to log warnings
  void w() {
    Lumber lumber = Lumber.getInstance();

   if (lumber.logEnable) {
       print("${DateTime.now()}\t${lumber.packageName} | WARN |: $this");
       lumber.onWarnLog;
    }
  }

  /// Method is used to log informational messages
  void i() {
    Lumber lumber = Lumber.getInstance();

    if (lumber.logEnable) {
       print("${DateTime.now()}\t${lumber.packageName} | INFO |: $this");
      lumber.onInfoLog;
    }
  }

  /// Method is used to log debug messages
  void d(){
    Lumber lumber = Lumber.getInstance();

    if (lumber.logEnable) {
       print("${DateTime.now()}\t${lumber.packageName} | DEBUG |: $this");
       lumber.onDebugLog;
    }
  }

  /// Method is used to log verbose messages
  void v() {
    Lumber lumber = Lumber.getInstance();

    if (lumber.logEnable) {
       print("${DateTime.now()}\t${lumber.packageName} | VERBOSE |: $this");
       lumber.onVerboseLog;
    }
  }


  /// Method is used to log terrible failures that should never happen. ("WTF" stands for "What a Terrible Failure!" of course.)
  void wtf() {
    Lumber lumber = Lumber.getInstance();

    if (lumber.logEnable) {
       print("${DateTime.now()}\t${lumber.packageName} | WTF |: $this");
       lumber.onWtfLog;
    }
  }
}
