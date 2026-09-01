import 'predefined.dart';

enum PredefinedLong {
  AMOUNT,
  DATE_A,
  DATE_B,
  DEPARTING_ARRIVAL_DATE,
  DEPARTING_DEPARTURE_DATE,
  HOTEL_SCORE,
  LEVEL,
  MAX_RATING_VALUE,
  NUM_ADULTS,
  NUM_CHILDREN,
  NUM_INFANTS,
  PREFERRED_NUM_STOPS,
  PREFERRED_STAR_RATINGS,
  QUANTITY,
  RATING_VALUE,
  RETURNING_ARRIVAL_DATE,
  RETURNING_DEPARTURE_DATE,
  SCORE,
  TRAVEL_START,
  TRAVEL_END,
  USER_SCORE,
  EVENT_START,
  EVENT_END,
}

extension PredefinedLongExt on PredefinedLong {
  String get value {
    return "${Predefined.PREFIX}$_value";
  }

  String get _value {
    switch (this) {
      case PredefinedLong.AMOUNT:
        return "amount";
      case PredefinedLong.DATE_A:
        return "date_a";
      case PredefinedLong.DATE_B:
        return "date_b";
      case PredefinedLong.DEPARTING_ARRIVAL_DATE:
        return "departing_arrival_date";
      case PredefinedLong.DEPARTING_DEPARTURE_DATE:
        return "departing_departure_date";
      case PredefinedLong.HOTEL_SCORE:
        return "hotel_score";
      case PredefinedLong.LEVEL:
        return "level";
      case PredefinedLong.MAX_RATING_VALUE:
        return "max_rating_value";
      case PredefinedLong.NUM_ADULTS:
        return "num_adults";
      case PredefinedLong.NUM_CHILDREN:
        return "num_children";
      case PredefinedLong.NUM_INFANTS:
        return "num_infants";
      case PredefinedLong.PREFERRED_NUM_STOPS:
        return "preferred_num_stops";
      case PredefinedLong.PREFERRED_STAR_RATINGS:
        return "preferred_star_ratings";
      case PredefinedLong.QUANTITY:
        return "quantity";
      case PredefinedLong.RATING_VALUE:
        return "rating_value";
      case PredefinedLong.RETURNING_ARRIVAL_DATE:
        return "returning_arrival_date";
      case PredefinedLong.RETURNING_DEPARTURE_DATE:
        return "returning_departure_date";
      case PredefinedLong.SCORE:
        return "score";
      case PredefinedLong.TRAVEL_START:
        return "travel_start";
      case PredefinedLong.TRAVEL_END:
        return "travel_end";
      case PredefinedLong.USER_SCORE:
        return "user_score";
      case PredefinedLong.EVENT_START:
        return "event_start";
      case PredefinedLong.EVENT_END:
        return "event_end";
    }
  }
}
