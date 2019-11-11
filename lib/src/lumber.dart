class Lumber {
  Lumber._internal();
  static Lumber _lumber;

  static Lumber getInstance() {
    if (_lumber == null) {
      _lumber = Lumber._internal();
    }
    return _lumber;
  }

  String packageName;
  String tag;
  String debugTag;
  bool logEnable = false;
  Function onErrorLog;
  Function onInfoLog;
  Function onWarnLog;
  Function onVerboseLog;
  Function onDebugLog;
  Function onWtfLog;

  void init({
    String packageName,
    String tag,
    String debugTag,
    bool logEnable,
    Function onErrorLog,
    Function onInfoLog,
    Function onWarnLog,
    Function onVerboseLog,
    Function onDebugLog,
    Function onWtfLog,
  }) {
    this.packageName = packageName;
    this.tag = tag;
    this.debugTag = debugTag;
    this.logEnable = logEnable;
    this.onErrorLog = onErrorLog;
    this.onInfoLog = onInfoLog;
    this.onWarnLog = onWarnLog;
    this.onVerboseLog = onVerboseLog;
    this.onDebugLog = onDebugLog;
    this.onWtfLog = onWtfLog;
  }
}
