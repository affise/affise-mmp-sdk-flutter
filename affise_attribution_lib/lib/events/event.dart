import 'dart:core';

import '../affise.dart';

/// Base event
abstract class Event {
  /// Event predefined parameters
  final Map<String, dynamic> _predefinedParameters = {};

  /// Serialize event to dynamic
  ///
  /// @return dynamic
  dynamic serialize();

  /// Name of event
  ///
  /// @return name
  String getName();

  /// Category of event
  ///
  /// @return category
  String getCategory();

  /// User data
  ///
  /// @return userData
  String? getUserData();

  /// Is first for user, default false
  ///
  /// @return is first for user or not
  bool isFirstForUser() => false;

  /// Add predefined [parameter] with [value] of double to event
  Event addPredefinedFloat(PredefinedFloat parameter, double value) {
    _predefinedParameters[parameter.value] = value;
    return this;
  }

  /// Add predefined [parameter] with [value] of List &lt; Map &lt; String, dynamic &gt &gt to event
  Event addPredefinedListObject(PredefinedListObject parameter, List<Map<String, dynamic>> value) {
    _predefinedParameters[parameter.value] = value;
    return this;
  }

  /// Add predefined [parameter] with [value] of List of String to event
  Event addPredefinedListString(PredefinedListString parameter, List<String> value) {
    _predefinedParameters[parameter.value] = value;
    return this;
  }

  /// Add predefined [parameter] with [value] of int to event
  Event addPredefinedLong(PredefinedLong parameter, int value) {
    _predefinedParameters[parameter.value] = value;
    return this;
  }

  /// Add predefined [parameter] with [value] of Map of (String, dynamic) to event
  Event addPredefinedObject(PredefinedObject parameter, Map<String, dynamic> value) {
    _predefinedParameters[parameter.value] = value;
    return this;
  }

  /// Add predefined [parameter] with [value] of String to event
  Event addPredefinedString(PredefinedString parameter, String value) {
    _predefinedParameters[parameter.value] = value;
    return this;
  }

  /// Add predefined [parameter] with [value] of List of PredefinedGroup to event
  // addPredefinedListGroup
  // Event addPredefinedListGroup(List<PredefinedGroup> value) {
  //   if (!_predefinedParameters.containsKey(PredefinedGroup.NAME)) {
  //     _predefinedParameters[PredefinedGroup.NAME] = <Map<String, dynamic>>[];
  //   }

  //   for (var group in value) {
  //     tryCast<List<Map<String, dynamic>>>(_predefinedParameters[PredefinedGroup.NAME])
  //         ?.add(group.getPredefinedParameters());
  //   }
  //   return this;
  // }

  /// Store and send this event
  void send() {
    Affise.sendEvent(this);
  }

  /// Send this event now
  void sendNow(OnSendSuccessCallback success, OnSendFailedCallback failed) {
    Affise.sendEventNow(this, success, failed);
  }

  /// Get map of predefined parameter
  ///
  /// @return map of predefined parameter
  Map<String, dynamic> getPredefinedParameters() {
    return _predefinedParameters;
  }
}
