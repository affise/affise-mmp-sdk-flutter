import 'package:affise_attribution_lib/affise.dart';
import 'package:intl/intl.dart';

import 'events_factory.dart';

class DefaultEventsFactory implements EventsFactory {
  @override
  List<Event> createEvents() {
    return [
      createAchieveLevelEvent(),
      createAddPaymentInfoEvent(),
      createAddToCartEvent(),
      createAddToWishlistEvent(),
      createAdRevenueEvent(),
      createClickAdvEvent(),
      createCompleteRegistrationEvent(),
      createCompleteStreamEvent(),
      createCompleteTrialEvent(),
      createCompleteTutorialEvent(),
      createContactEvent(),
      createContentItemsViewEvent(),
      createCustomId01Event(),
      createCustomId02Event(),
      createCustomId03Event(),
      createCustomId04Event(),
      createCustomId05Event(),
      createCustomId06Event(),
      createCustomId07Event(),
      createCustomId08Event(),
      createCustomId09Event(),
      createCustomId10Event(),
      createCustomizeProductEvent(),
      createDeepLinkedEvent(),
      createDonateEvent(),
      createFindLocationEvent(),
      createInitiateCheckoutEvent(),
      createInitiatePurchaseEvent(),
      createInitiateStreamEvent(),
      createInviteEvent(),
      createLastAttributedTouchEvent(),
      createLeadEvent(),
      createListViewEvent(),
      createLoginEvent(),
      createOpenedFromPushNotificationEvent(),
      createOrderEvent(),
      createOrderItemAddedEvent(),
      createOrderItemRemoveEvent(),
      createOrderCancelEvent(),
      createOrderReturnRequestCancelEvent(),
      createOrderReturnRequestEvent(),
      createPurchaseEvent(),
      createRateEvent(),
      createReEngageEvent(),
      createReserveEvent(),
      createSalesEvent(),
      createScheduleEvent(),
      createSearchEvent(),
      createShareEvent(),
      createSpendCreditsEvent(),
      createStartRegistrationEvent(),
      createStartTrialEvent(),
      createStartTutorialEvent(),
      createSubmitApplicationEvent(),
      createSubscribeEvent(),
      createTravelBookingEvent(),
      createUnlockAchievementEvent(),
      createUnsubscribeEvent(),
      createUpdateEvent(),
      createViewAdvEvent(),
      createViewCartEvent(),
      createViewContentEvent(),
      createViewItemEvent(),
      createViewItemsEvent(),
      createInitialSubscriptionEvent(),
      createInitialTrialEvent(),
      createInitialOfferEvent(),
      createFailedTrialEvent(),
      createFailedOfferiseEvent(),
      createFailedSubscriptionEvent(),
      createFailedTrialFromRetryEvent(),
      createFailedOfferFromRetryEvent(),
      createFailedSubscriptionFromRetryEvent(),
      createTrialInRetryEvent(),
      createOfferInRetryEvent(),
      createSubscriptionInRetryEvent(),
      createConvertedTrialEvent(),
      createConvertedOfferEvent(),
      createReactivatedSubscriptionEvent(),
      createRenewedSubscriptionEvent(),
      createConvertedTrialFromRetryEvent(),
      createConvertedOfferFromRetryEvent(),
      createRenewedSubscriptionFromRetryEvent(),
      createUnsubscriptionEvent(),
    ];
  }

  Event createAchieveLevelEvent() {
    Map<String, dynamic> data = {
      "old_level": 69,
      "new_level": 70,
    };
    return AchieveLevelEvent(userData: "warlock")
        .addPredefinedString(PredefinedString.DEEP_LINK, "https://new-game.lt")
        .addPredefinedLong(PredefinedLong.SCORE, 25013)
        .addPredefinedLong(PredefinedLong.LEVEL, 70)
        .addPredefinedString(PredefinedString.SUCCESS, "true")
        .addPredefinedString(PredefinedString.TUTORIAL_ID, "12")
        .addPredefinedObject(PredefinedObject.CONTENT, data);
  }

  Event createAddPaymentInfoEvent() {
    Map<String, dynamic> data = {
      "card": 4138,
      "type": "phone",
    };
    return AddPaymentInfoEvent(userData: "taxi")
        .addPredefinedString(PredefinedString.PURCHASE_CURRENCY, "USD")
        .addPredefinedObject(PredefinedObject.CONTENT, data);
  }

  Event createAddToCartEvent() {
    List products = ["milk", "cookies", "meat", "vegetables"];

    Map<String, dynamic> data = {
      "items": products,
    };

    return AddToCartEvent()
        .addPredefinedString(PredefinedString.DESCRIPTION, "best before 2029")
        .addPredefinedObject(PredefinedObject.CONTENT, data);
  }

  Event createAddToWishlistEvent() {
    return AddToWishlistEvent(userData: "next year")
        .addPredefinedString(PredefinedString.COUNTRY, "Russia")
        .addPredefinedString(PredefinedString.CITY, "Voronezh")
        .addPredefinedFloat(PredefinedFloat.LAT, 42.0)
        .addPredefinedFloat(PredefinedFloat.LONG, 24.0);
  }

  Event createAdRevenueEvent() {
    return AdRevenueEvent(userData: "next year")
        .addPredefinedString(PredefinedString.SOURCE, AffiseAdSource.ADMOB.type)
        .addPredefinedFloat(PredefinedFloat.REVENUE, 42.0)
        .addPredefinedString(PredefinedString.CURRENCY, "USD")
        .addPredefinedString(PredefinedString.NETWORK, "test")
        .addPredefinedString(PredefinedString.UNIT, "m")
        .addPredefinedString(PredefinedString.PLACEMENT, "end");
  }

  Event createClickAdvEvent() {
    return ClickAdvEvent(userData: "header")
        .addPredefinedString(PredefinedString.PARAM_01, "PARAM_01")
        .addPredefinedString(PredefinedString.PARAM_02, "PARAM_02")
        .addPredefinedString(PredefinedString.PARAM_03, "PARAM_03")
        .addPredefinedString(PredefinedString.PARAM_04, "PARAM_04")
        .addPredefinedString(PredefinedString.PARAM_05, "PARAM_05")
        .addPredefinedString(PredefinedString.PARAM_06, "PARAM_06")
        .addPredefinedString(PredefinedString.PARAM_07, "PARAM_07")
        .addPredefinedString(PredefinedString.PARAM_08, "PARAM_08")
        .addPredefinedString(PredefinedString.PARAM_09, "PARAM_09")
        .addPredefinedString(PredefinedString.PARAM_10, "PARAM_10");
  }

  Event createCompleteRegistrationEvent() {
    Map<String, dynamic> data = {
      "email": "dog@gmail.com",
    };
    return CompleteRegistrationEvent(userData: "promo")
        .addPredefinedString(PredefinedString.VALIDATED, "02.11.2021")
        .addPredefinedString(PredefinedString.REVIEW_TEXT, "approve")
        .addPredefinedString(PredefinedString.CUSTOMER_SEGMENT, "DOG")
        .addPredefinedObject(PredefinedObject.CONTENT, data);
  }

  Event createCompleteStreamEvent() {
    Map<String, dynamic> data = {
      "streamer": "cat",
      "max_viewers": "29",
    };
    return CompleteStreamEvent(userData: "23 hours")
        .addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0)
        .addPredefinedObject(PredefinedObject.CONTENT, data);
  }

  Event createCompleteTrialEvent() {
    return CompleteTrialEvent(userData: "time")
        .addPredefinedString(PredefinedString.REGISTRATION_METHOD, "SMS");
  }

  Event createCompleteTutorialEvent() {
    return CompleteTutorialEvent(userData: "intro")
        .addPredefinedString(PredefinedString.REGISTRATION_METHOD, "SMS");
  }

  Event createContactEvent() {
    return ContactEvent(userData: "contact")
        .addPredefinedString(PredefinedString.REGISTRATION_METHOD, "SMS");
  }

  Event createContentItemsViewEvent() {
    List<Map<String, dynamic>> data = [
      {
        "item": "book",
      },
      {
        "item": "guitar",
      },
    ];

    return ContentItemsViewEvent(userData: "personal")
        .addPredefinedObject(PredefinedObject.CONTENT, {
          "collection": "Greatest Hits",
        })
        .addPredefinedString(PredefinedString.CONTENT_ID, "2561")
        .addPredefinedListObject(PredefinedListObject.CONTENT_LIST, data)
        .addPredefinedString(PredefinedString.CONTENT_TYPE, "MATURE")
        .addPredefinedString(PredefinedString.CURRENCY, "USD");
  }

  Event createCustomId01Event() {
    return CustomId01Event(userData: "custom")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createCustomId02Event() {
    return CustomId02Event(userData: "custom")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createCustomId03Event() {
    return CustomId03Event(userData: "custom")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createCustomId04Event() {
    return CustomId04Event(userData: "custom")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createCustomId05Event() {
    return CustomId05Event(userData: "custom")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createCustomId06Event() {
    return CustomId06Event(userData: "custom")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createCustomId07Event() {
    return CustomId07Event(userData: "custom")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createCustomId08Event() {
    return CustomId08Event(userData: "custom")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createCustomId09Event() {
    return CustomId09Event(userData: "custom")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createCustomId10Event() {
    return CustomId10Event(userData: "custom")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createCustomizeProductEvent() {
    return CustomizeProductEvent(userData: "Customize")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createDeepLinkedEvent() {
    return DeepLinkedEvent(userData: "referrer: google")
        .addPredefinedString(PredefinedString.ADREV_AD_TYPE, "interstitial")
        .addPredefinedString(PredefinedString.REGION, "ASIA")
        .addPredefinedString(PredefinedString.CLASS, "student")
        .addPredefinedObject(PredefinedObject.CONTENT, {"isLinked": true});
  }

  Event createDonateEvent() {
    return DonateEvent(userData: "donate")
        .addPredefinedString(PredefinedString.ORDER_ID, "23123")
        .addPredefinedFloat(PredefinedFloat.PRICE, 2.19)
        .addPredefinedLong(PredefinedLong.QUANTITY, 1);
  }

  Event createFindLocationEvent() {
    return FindLocationEvent(userData: "location")
        .addPredefinedString(PredefinedString.ORDER_ID, "23123")
        .addPredefinedFloat(PredefinedFloat.PRICE, 2.19)
        .addPredefinedLong(PredefinedLong.QUANTITY, 1);
  }

  Event createInitiateCheckoutEvent() {
    return InitiateCheckoutEvent(userData: "checkout")
        .addPredefinedString(PredefinedString.ORDER_ID, "23123")
        .addPredefinedFloat(PredefinedFloat.PRICE, 2.19)
        .addPredefinedLong(PredefinedLong.QUANTITY, 1);
  }

  Event createInitiatePurchaseEvent() {
    return InitiatePurchaseEvent(userData: "best price")
        .addPredefinedString(PredefinedString.ORDER_ID, "23123")
        .addPredefinedFloat(PredefinedFloat.PRICE, 2.19)
        .addPredefinedLong(PredefinedLong.QUANTITY, 1);
  }

  Event createInitiateStreamEvent() {
    return InitiateStreamEvent(userData: "shooter")
        .addPredefinedString(PredefinedString.ORDER_ID, "23123")
        .addPredefinedFloat(PredefinedFloat.PRICE, 2.19)
        .addPredefinedLong(PredefinedLong.QUANTITY, 1);
  }

  Event createInviteEvent() {
    Map<String, dynamic> data = {
      "invitation": "mail",
      "date": "02.03.2021",
    };

    return InviteEvent(userData: "dancing")
        .addPredefinedString(PredefinedString.PARAM_01, "param1")
        .addPredefinedObject(PredefinedObject.CONTENT, data);
  }

  Event createLastAttributedTouchEvent() {
    Map<String, dynamic> data = {
      "touchType": TouchType.CLICK,
      "touchData": {
        "header": 2,
      },
    };
    return LastAttributedTouchEvent(userData: "tablet")
        .addPredefinedString(PredefinedString.SUBSCRIPTION_ID, "lasAK22")
        .addPredefinedObject(PredefinedObject.CONTENT, data);
  }

  Event createLeadEvent() {
    return LeadEvent(userData: "lead")
        .addPredefinedString(PredefinedString.PAYMENT_INFO_AVAILABLE, "card")
        .addPredefinedString(PredefinedString.SEARCH_STRING, "best car wash");
  }

  Event createListViewEvent() {
    return ListViewEvent(userData: "items")
        .addPredefinedString(PredefinedString.PAYMENT_INFO_AVAILABLE, "card")
        .addPredefinedString(PredefinedString.SEARCH_STRING, "best car wash")
        .addPredefinedString(
          PredefinedString.SUGGESTED_DESTINATIONS,
          "crete, spain",
        )
        .addPredefinedString(
          PredefinedString.SUGGESTED_HOTELS,
          "beach resort, marina spa",
        );
  }

  Event createLoginEvent() {
    return LoginEvent(userData: "web")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createOpenedFromPushNotificationEvent() {
    return OpenedFromPushNotificationEvent(userData: "active")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createOrderEvent() {
    return OrderEvent(userData: "apple")
        .addPredefinedString(PredefinedString.ORDER_ID, "23123")
        .addPredefinedFloat(PredefinedFloat.PRICE, 2.19)
        .addPredefinedLong(PredefinedLong.QUANTITY, 1);
  }

  Event createOrderItemAddedEvent() {
    return OrderItemAddedEvent(userData: "apple")
        .addPredefinedString(PredefinedString.ORDER_ID, "23123")
        .addPredefinedFloat(PredefinedFloat.PRICE, 2.19)
        .addPredefinedLong(PredefinedLong.QUANTITY, 1);
  }

  Event createOrderItemRemoveEvent() {
    return OrderItemRemoveEvent(userData: "apple")
        .addPredefinedString(PredefinedString.ORDER_ID, "23123")
        .addPredefinedFloat(PredefinedFloat.PRICE, 2.19)
        .addPredefinedLong(PredefinedLong.QUANTITY, 1);
  }

  Event createOrderCancelEvent() {
    return OrderCancelEvent(userData: "apple")
        .addPredefinedString(PredefinedString.ORDER_ID, "23123")
        .addPredefinedFloat(PredefinedFloat.PRICE, 2.19)
        .addPredefinedLong(PredefinedLong.QUANTITY, 1);
  }

  Event createOrderReturnRequestCancelEvent() {
    return OrderReturnRequestCancelEvent(userData: "apple")
        .addPredefinedString(PredefinedString.ORDER_ID, "23123")
        .addPredefinedFloat(PredefinedFloat.PRICE, 2.19)
        .addPredefinedLong(PredefinedLong.QUANTITY, 1);
  }

  Event createOrderReturnRequestEvent() {
    return OrderReturnRequestEvent(userData: "apple")
        .addPredefinedString(PredefinedString.ORDER_ID, "23123")
        .addPredefinedFloat(PredefinedFloat.PRICE, 2.19)
        .addPredefinedLong(PredefinedLong.QUANTITY, 1);
  }

  Event createPurchaseEvent() {
    return PurchaseEvent(userData: "apple")
        .addPredefinedString(PredefinedString.ORDER_ID, "23123")
        .addPredefinedFloat(PredefinedFloat.PRICE, 2.19)
        .addPredefinedLong(PredefinedLong.QUANTITY, 1);
  }

  Event createRateEvent() {
    return RateEvent(userData: "no bugs")
        .addPredefinedString(PredefinedString.PREFERRED_NEIGHBORHOODS, "2")
        .addPredefinedLong(PredefinedLong.PREFERRED_NUM_STOPS, 4)
        .addPredefinedFloat(PredefinedFloat.PREFERRED_PRICE_RANGE, 10.22)
        .addPredefinedLong(PredefinedLong.PREFERRED_STAR_RATINGS, 6);
  }

  Event createReEngageEvent() {
    return ReEngageEvent(userData: "web")
        .addPredefinedString(PredefinedString.CUSTOMER_USER_ID, "4");
  }

  Event createReserveEvent() {
    Map<String, dynamic> data = {
      "ticket": "movie",
    };
    Map<String, dynamic> data2 = {
      "food": "coke",
    };

    return ReserveEvent(userData: "discount")
        .addPredefinedString(PredefinedString.ORDER_ID, "23123")
        .addPredefinedFloat(PredefinedFloat.PRICE, 2.19)
        .addPredefinedLong(PredefinedLong.QUANTITY, 1)
        .addPredefinedListObject(
            PredefinedListObject.CONTENT_LIST, [data, data2]);
  }

  Event createSalesEvent() {
    return SalesEvent(userData: "apple")
        .addPredefinedString(PredefinedString.ORDER_ID, "23123")
        .addPredefinedFloat(PredefinedFloat.PRICE, 2.19)
        .addPredefinedLong(PredefinedLong.QUANTITY, 1);
  }

  Event createScheduleEvent() {
    return ScheduleEvent(userData: "Schedule")
        .addPredefinedString(PredefinedString.ORDER_ID, "23123")
        .addPredefinedFloat(PredefinedFloat.PRICE, 2.19)
        .addPredefinedLong(PredefinedLong.QUANTITY, 1);
  }

  Event createSearchEvent() {
    return SearchEvent(userData: "browser")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createShareEvent() {
    return ShareEvent(userData: "telegram")
        .addPredefinedString(PredefinedString.RECEIPT_ID, "22");
  }

  Event createSpendCreditsEvent() {
    return SpendCreditsEvent(userData: "boosters")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createStartRegistrationEvent() {
    return StartRegistrationEvent(userData: "referrer")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createStartTrialEvent() {
    return StartTrialEvent(userData: "30-days")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createStartTutorialEvent() {
    return StartTutorialEvent(userData: "video-feature")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createSubmitApplicationEvent() {
    return SubmitApplicationEvent(userData: "SubmitApplication")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createSubscribeEvent() {
    return SubscribeEvent(userData: "wire")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createTravelBookingEvent() {
    return TravelBookingEvent(userData: "booking")
        .addPredefinedLong(PredefinedLong.NUM_ADULTS, 1)
        .addPredefinedLong(PredefinedLong.NUM_CHILDREN, 2)
        .addPredefinedLong(PredefinedLong.NUM_INFANTS, 1)
        .addPredefinedLong(PredefinedLong.DATE_A, "30.12.2020".timestamp)
        .addPredefinedLong(PredefinedLong.DATE_B, "01.01.2021".timestamp)
        .addPredefinedLong(
          PredefinedLong.DEPARTING_ARRIVAL_DATE,
          "01.01.2021".timestamp,
        )
        .addPredefinedLong(
          PredefinedLong.DEPARTING_DEPARTURE_DATE,
          "30.12.2020".timestamp,
        )
        .addPredefinedString(PredefinedString.DESTINATION_A, "usa")
        .addPredefinedString(PredefinedString.DESTINATION_B, "mexico")
        .addPredefinedString(PredefinedString.DESTINATION_LIST, "usa, mexico")
        .addPredefinedLong(PredefinedLong.HOTEL_SCORE, 5)
        .addPredefinedLong(PredefinedLong.TRAVEL_START, "01.12.2020".timestamp)
        .addPredefinedLong(PredefinedLong.TRAVEL_END, "01.12.2021".timestamp);
  }

  Event createUnlockAchievementEvent() {
    return UnlockAchievementEvent(userData: "best damage")
        .addPredefinedLong(PredefinedLong.USER_SCORE, 12552)
        .addPredefinedString(PredefinedString.ACHIEVEMENT_ID, "1334-1225-ASDZ");
  }

  Event createUnsubscribeEvent() {
    return UnsubscribeEvent(userData: "02.01.2021")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createUpdateEvent() {
    List<String> data = ["com.facebook"];
    return UpdateEvent(userData: "firmware")
        .addPredefinedLong(PredefinedLong.EVENT_START, "01.02.2021".timestamp)
        .addPredefinedLong(PredefinedLong.EVENT_END, "01.01.2022".timestamp)
        .addPredefinedString(PredefinedString.NEW_VERSION, "8")
        .addPredefinedString(PredefinedString.OLD_VERSION, "1.8")
        .addPredefinedListString(PredefinedListString.CONTENT_IDS, data);
  }

  Event createViewAdvEvent() {
    Map<String, dynamic> data = {
      "source": "amazon",
    };
    return ViewAdvEvent(
      userData: "skip",
      timeStampMillis: DateTime.now().millisecondsSinceEpoch,
    )
        .addPredefinedLong(
          PredefinedLong.RETURNING_ARRIVAL_DATE,
          "01.12.2021".timestamp,
        )
        .addPredefinedLong(
          PredefinedLong.RETURNING_DEPARTURE_DATE,
          "01.12.2020".timestamp,
        )
        .addPredefinedObject(PredefinedObject.CONTENT, data);
  }

  Event createViewCartEvent() {
    return ViewCartEvent(userData: "main")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createViewContentEvent() {
    return ViewContentEvent(userData: "ViewContent")
        .addPredefinedString(PredefinedString.PARAM_01, "param1");
  }

  Event createViewItemEvent() {
    return ViewItemEvent(userData: "main")
        .addPredefinedLong(PredefinedLong.MAX_RATING_VALUE, 5)
        .addPredefinedLong(PredefinedLong.RATING_VALUE, 9);
  }

  Event createViewItemsEvent() {
    return ViewItemsEvent(userData: "main")
        .addPredefinedLong(PredefinedLong.MAX_RATING_VALUE, 5)
        .addPredefinedLong(PredefinedLong.RATING_VALUE, 9);
  }

  Event createInitialSubscriptionEvent() {
    return InitialSubscriptionEvent(
      data: {
        "affise_event_revenue": 2.99,
        "affise_event_currency": "USD",
        "affise_event_product_id": 278459628375,
      },
      userData: "Subscription Plus",
    ).addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0);
  }

  Event createInitialTrialEvent() {
    return InitialTrialEvent(
      data: {
        "affise_event_revenue": 2.99,
        "affise_event_currency": "USD",
        "affise_event_product_id": 278459628375,
      },
      userData: "Subscription Plus",
    ).addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0);
  }

  Event createInitialOfferEvent() {
    return InitialOfferEvent(
      data: {
        "affise_event_revenue": 2.99,
        "affise_event_currency": "USD",
        "affise_event_product_id": 278459628375,
      },
      userData: "Subscription Plus",
    ).addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0);
  }

  Event createFailedTrialEvent() {
    return FailedTrialEvent(
      data: {
        "affise_event_revenue": 2.99,
        "affise_event_currency": "USD",
        "affise_event_product_id": 278459628375,
      },
      userData: "Subscription Plus",
    ).addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0);
  }

  Event createFailedOfferiseEvent() {
    return FailedOfferiseEvent(
      data: {
        "affise_event_revenue": 2.99,
        "affise_event_currency": "USD",
        "affise_event_product_id": 278459628375,
      },
      userData: "Subscription Plus",
    ).addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0);
  }

  Event createFailedSubscriptionEvent() {
    return FailedSubscriptionEvent(
      data: {
        "affise_event_revenue": 2.99,
        "affise_event_currency": "USD",
        "affise_event_product_id": 278459628375,
      },
      userData: "Subscription Plus",
    ).addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0);
  }

  Event createFailedTrialFromRetryEvent() {
    return FailedTrialFromRetryEvent(
      data: {
        "affise_event_revenue": 2.99,
        "affise_event_currency": "USD",
        "affise_event_product_id": 278459628375,
      },
      userData: "Subscription Plus",
    ).addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0);
  }

  Event createFailedOfferFromRetryEvent() {
    return FailedOfferFromRetryEvent(
      data: {
        "affise_event_revenue": 2.99,
        "affise_event_currency": "USD",
        "affise_event_product_id": 278459628375,
      },
      userData: "Subscription Plus",
    ).addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0);
  }

  Event createFailedSubscriptionFromRetryEvent() {
    return FailedSubscriptionFromRetryEvent(
      data: {
        "affise_event_revenue": 2.99,
        "affise_event_currency": "USD",
        "affise_event_product_id": 278459628375,
      },
      userData: "Subscription Plus",
    ).addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0);
  }

  Event createTrialInRetryEvent() {
    return TrialInRetryEvent(
      data: {
        "affise_event_revenue": 2.99,
        "affise_event_currency": "USD",
        "affise_event_product_id": 278459628375,
      },
      userData: "Subscription Plus",
    ).addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0);
  }

  Event createOfferInRetryEvent() {
    return OfferInRetryEvent(
      data: {
        "affise_event_revenue": 2.99,
        "affise_event_currency": "USD",
        "affise_event_product_id": 278459628375,
      },
      userData: "Subscription Plus",
    ).addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0);
  }

  Event createSubscriptionInRetryEvent() {
    return SubscriptionInRetryEvent(
      data: {
        "affise_event_revenue": 2.99,
        "affise_event_currency": "USD",
        "affise_event_product_id": 278459628375,
      },
      userData: "Subscription Plus",
    ).addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0);
  }

  Event createConvertedTrialEvent() {
    return ConvertedTrialEvent(
      data: {
        "affise_event_revenue": 2.99,
        "affise_event_currency": "USD",
        "affise_event_product_id": 278459628375,
      },
      userData: "Subscription Plus",
    ).addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0);
  }

  Event createConvertedOfferEvent() {
    return ConvertedOfferEvent(
      data: {
        "affise_event_revenue": 2.99,
        "affise_event_currency": "USD",
        "affise_event_product_id": 278459628375,
      },
      userData: "Subscription Plus",
    ).addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0);
  }

  Event createReactivatedSubscriptionEvent() {
    return ReactivatedSubscriptionEvent(
      data: {
        "affise_event_revenue": 2.99,
        "affise_event_currency": "USD",
        "affise_event_product_id": 278459628375,
      },
      userData: "Subscription Plus",
    ).addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0);
  }

  Event createRenewedSubscriptionEvent() {
    return RenewedSubscriptionEvent(
      data: {
        "affise_event_revenue": 2.99,
        "affise_event_currency": "USD",
        "affise_event_product_id": 278459628375,
      },
      userData: "Subscription Plus",
    ).addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0);
  }

  Event createConvertedTrialFromRetryEvent() {
    return ConvertedTrialFromRetryEvent(
      data: {
        "affise_event_revenue": 2.99,
        "affise_event_currency": "USD",
        "affise_event_product_id": 278459628375,
      },
      userData: "Subscription Plus",
    ).addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0);
  }

  Event createConvertedOfferFromRetryEvent() {
    return ConvertedOfferFromRetryEvent(
      data: {
        "affise_event_revenue": 2.99,
        "affise_event_currency": "USD",
        "affise_event_product_id": 278459628375,
      },
      userData: "Subscription Plus",
    ).addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0);
  }

  Event createRenewedSubscriptionFromRetryEvent() {
    return RenewedSubscriptionFromRetryEvent(
      data: {
        "affise_event_revenue": 2.99,
        "affise_event_currency": "USD",
        "affise_event_product_id": 278459628375,
      },
      userData: "Subscription Plus",
    ).addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0);
  }

  Event createUnsubscriptionEvent() {
    return UnsubscriptionEvent(
      data: {
        "affise_event_revenue": 2.99,
        "affise_event_currency": "USD",
        "affise_event_product_id": 278459628375,
      },
      userData: "Subscription Plus",
    ).addPredefinedFloat(PredefinedFloat.REVENUE, 225522.0);
  }
}

extension _StringExt on String {
  int get timestamp {
    try {
      return DateFormat('dd.MM.y').parse(this).millisecondsSinceEpoch;
    } catch (e) {
      return DateTime.now().millisecondsSinceEpoch;
    }
  }
}
