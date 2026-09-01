enum EventName {
  ACHIEVE_LEVEL,
  ADD_PAYMENT_INFO,
  ADD_TO_CART,
  ADD_TO_WISHLIST,
  AD_REVENUE,
  CLICK_ADV,
  COMPLETE_REGISTRATION,
  COMPLETE_STREAM,
  COMPLETE_TRIAL,
  COMPLETE_TUTORIAL,
  CONTACT,
  CONTENT_ITEMS_VIEW,
  CUSTOM_ID_01,
  CUSTOM_ID_02,
  CUSTOM_ID_03,
  CUSTOM_ID_04,
  CUSTOM_ID_05,
  CUSTOM_ID_06,
  CUSTOM_ID_07,
  CUSTOM_ID_08,
  CUSTOM_ID_09,
  CUSTOM_ID_10,
  CUSTOMIZE_PRODUCT,
  DEEP_LINKED,
  DONATE,
  FIND_LOCATION,
  INITIATE_CHECKOUT,
  INITIATE_PURCHASE,
  INITIATE_STREAM,
  INVITE,
  LAST_ATTRIBUTED_TOUCH,
  LEAD,
  LIST_VIEW,
  LOGIN,
  OPENED_FROM_PUSH_NOTIFICATION,
  ORDER,
  ORDER_ITEM_ADDED,
  ORDER_ITEM_REMOVE,
  ORDER_CANCEL,
  ORDER_RETURN_REQUEST,
  ORDER_RETURN_REQUEST_CANCEL,
  PURCHASE,
  RATE,
  RE_ENGAGE,
  RESERVE,
  SALES,
  SCHEDULE,
  SEARCH,
  SHARE,
  SPEND_CREDITS,
  START_REGISTRATION,
  START_TRIAL,
  START_TUTORIAL,
  SUBMIT_APPLICATION,
  SUBSCRIBE,
  TRAVEL_BOOKING,
  UNLOCK_ACHIEVEMENT,
  UNSUBSCRIBE,
  UPDATE,
  VIEW_ADV,
  VIEW_CART,
  VIEW_CONTENT,
  VIEW_ITEM,
  VIEW_ITEMS,
}

extension EventNameExt on EventName {
  String get eventName {
    switch (this) {
      case EventName.ACHIEVE_LEVEL:
        return "AchieveLevel";
      case EventName.ADD_PAYMENT_INFO:
        return "AddPaymentInfo";
      case EventName.ADD_TO_CART:
        return "AddToCart";
      case EventName.ADD_TO_WISHLIST:
        return "AddToWishlist";
      case EventName.AD_REVENUE:
        return "AdRevenue";
      case EventName.CLICK_ADV:
        return "ClickAdv";
      case EventName.COMPLETE_REGISTRATION:
        return "CompleteRegistration";
      case EventName.COMPLETE_STREAM:
        return "CompleteStream";
      case EventName.COMPLETE_TRIAL:
        return "CompleteTrial";
      case EventName.COMPLETE_TUTORIAL:
        return "CompleteTutorial";
      case EventName.CONTACT:
        return "Contact";
      case EventName.CONTENT_ITEMS_VIEW:
        return "ContentItemsView";
      case EventName.CUSTOM_ID_01:
        return "CustomId01";
      case EventName.CUSTOM_ID_02:
        return "CustomId02";
      case EventName.CUSTOM_ID_03:
        return "CustomId03";
      case EventName.CUSTOM_ID_04:
        return "CustomId04";
      case EventName.CUSTOM_ID_05:
        return "CustomId05";
      case EventName.CUSTOM_ID_06:
        return "CustomId06";
      case EventName.CUSTOM_ID_07:
        return "CustomId07";
      case EventName.CUSTOM_ID_08:
        return "CustomId08";
      case EventName.CUSTOM_ID_09:
        return "CustomId09";
      case EventName.CUSTOM_ID_10:
        return "CustomId10";
      case EventName.CUSTOMIZE_PRODUCT:
        return "CustomizeProduct";
      case EventName.DEEP_LINKED:
        return "DeepLinked";
      case EventName.DONATE:
        return "Donate";
      case EventName.FIND_LOCATION:
        return "FindLocation";
      case EventName.INITIATE_CHECKOUT:
        return "InitiateCheckout";
      case EventName.INITIATE_PURCHASE:
        return "InitiatePurchase";
      case EventName.INITIATE_STREAM:
        return "InitiateStream";
      case EventName.INVITE:
        return "Invite";
      case EventName.LAST_ATTRIBUTED_TOUCH:
        return "LastAttributedTouch";
      case EventName.LEAD:
        return "Lead";
      case EventName.LIST_VIEW:
        return "ListView";
      case EventName.LOGIN:
        return "Login";
      case EventName.OPENED_FROM_PUSH_NOTIFICATION:
        return "OpenedFromPushNotification";
      case EventName.ORDER:
        return "Order";
      case EventName.ORDER_ITEM_ADDED:
        return "OrderItemAdded";
      case EventName.ORDER_ITEM_REMOVE:
        return "OrderItemRemove";
      case EventName.ORDER_CANCEL:
        return "OrderCancel";
      case EventName.ORDER_RETURN_REQUEST:
        return "OrderReturnRequest";
      case EventName.ORDER_RETURN_REQUEST_CANCEL:
        return "OrderReturnRequestCancel";
      case EventName.PURCHASE:
        return "Purchase";
      case EventName.RATE:
        return "Rate";
      case EventName.RE_ENGAGE:
        return "ReEngage";
      case EventName.RESERVE:
        return "Reserve";
      case EventName.SALES:
        return "Sales";
      case EventName.SCHEDULE:
        return "Schedule";
      case EventName.SEARCH:
        return "Search";
      case EventName.SHARE:
        return "Share";
      case EventName.SPEND_CREDITS:
        return "SpendCredits";
      case EventName.START_REGISTRATION:
        return "StartRegistration";
      case EventName.START_TRIAL:
        return "StartTrial";
      case EventName.START_TUTORIAL:
        return "StartTutorial";
      case EventName.SUBMIT_APPLICATION:
        return "SubmitApplication";
      case EventName.SUBSCRIBE:
        return "Subscribe";
      case EventName.TRAVEL_BOOKING:
        return "TravelBooking";
      case EventName.UNLOCK_ACHIEVEMENT:
        return "UnlockAchievement";
      case EventName.UNSUBSCRIBE:
        return "Unsubscribe";
      case EventName.UPDATE:
        return "Update";
      case EventName.VIEW_ADV:
        return "ViewAdv";
      case EventName.VIEW_CART:
        return "ViewCart";
      case EventName.VIEW_CONTENT:
        return "ViewContent";
      case EventName.VIEW_ITEM:
        return "ViewItem";
      case EventName.VIEW_ITEMS:
        return "ViewItems";
      }
  }
}
