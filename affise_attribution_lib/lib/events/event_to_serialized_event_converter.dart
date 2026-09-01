import '../converter/converter.dart';
import '../parameters/parameters.dart';
import '../utils/timestamp.dart';
import 'event.dart';

class EventToSerializedEventConverter extends Converter<Event, Map<String, dynamic>> {
  @override
  Map<String, dynamic> convert(Event from) {
    Map<String, dynamic> result = {};

    //Add Id
    // result[Parameters.AFFISE_EVENT_ID] = id;

    //Add name
    result[Parameters.AFFISE_EVENT_NAME] = from.getName();

    //Add category
    result[Parameters.AFFISE_EVENT_CATEGORY] = from.getCategory();

    //Add timestamp
    result[Parameters.AFFISE_EVENT_TIMESTAMP] = timestamp();

   //Add is first for user Or not
    result[Parameters.AFFISE_EVENT_FIRST_FOR_USER] = from.isFirstForUser();

    //Add user data
    result[Parameters.AFFISE_EVENT_USER_DATA] = from.getUserData();

    //Add event data
    result[Parameters.AFFISE_EVENT_DATA] = from.serialize();

    //Add predefined parameters
    result[Parameters.AFFISE_PARAMETERS] = from.getPredefinedParameters();

    return result;
  }
}
