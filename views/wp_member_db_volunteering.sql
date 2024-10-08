CREATE ALGORITHM = UNDEFINED DEFINER = `root` @`%` SQL SECURITY DEFINER VIEW `wp_member_db_volunteering` AS
select distinct
  `u`.`ID` AS `id`,
  case
    when `u`.`admin-can-you-help-training` like '%Event Reporter%' then '✅'
    else 'No'
  end AS `volunteer_training_event_reporter`,
  case
    when `u`.`admin-can-you-help-training` like '%Event Coordinator%' then '✅'
    else 'No'
  end AS `volunteer_training_event_coordinator`,
  case
    when `u`.`admin-can-you-help-training` like '%Event Assistant%' then '✅'
    else 'No'
  end AS `volunteer_training_event_assistant`,
  case
    when `u`.`admin-can-you-help-training` like '%Cake Buyer%' then '✅'
    else 'No'
  end AS `volunteer_training_cake_buyer`,
  case
    when `u`.`admin-can-you-help-training` like '%Online Facebook Posting Beforehand%' then '✅'
    when `u`.`admin-can-you-help-training` like '%Post on Facebook before event%' then '✅'
    else 'No'
  end AS `volunteer_training_preevent_facebook_promo`,
  case
    when `u`.`admin-can-you-help-training` like '%Lifts Coordinator%' then '✅'
    when `u`.`admin-can-you-help-training` like '%Lift Sharing coordina%' then '✅'
    else 'No'
  end AS `volunteer_training_lift_sharing`,
  case
    when `u`.`admin-can-you-help-training` like '%I can help share skills%' then '✅'
    else 'No'
  end AS `volunteer_training_skill_sharer`,
  case
    when `u`.`admin-can-you-help-social` like '%Event Reporter%' then '✅'
    else 'No'
  end AS `volunteer_social_event_reporter`,
  case
    when `u`.`admin-can-you-help-social` like '%Event Coordinator%' then '✅'
    else 'No'
  end AS `volunteer_social_event_coordinator`,
  case
    when `u`.`admin-can-you-help-social` like '%Event Assistant%' then '✅'
    else 'No'
  end AS `volunteer_social_event_assistant`,
  case
    when `u`.`admin-can-you-help-social` like '%Online Facebook Posting Beforehand%' then '✅'
    when `u`.`admin-can-you-help-social` like '%Pre-event admin%' then '✅'
    else 'No'
  end AS `volunteer_social_preevent_facebook_promo`,
  case
    when `u`.`admin-can-you-help-social` like '%Lifts Coordinator%' then '✅'
    when `u`.`admin-can-you-help-training` like '%Lift-sharing coordinator%' then '✅'
    else 'No'
  end AS `volunteer_social_lift_sharing`,
  case
    when `u`.`admin-can-you-help` like '%Event Reporter%' then '✅'
    when `u`.`admin-can-you-help` like '%help online afterwards%' then '✅'
    else 'No'
  end AS `volunteer_indoor_event_reporter`,
  case
    when `u`.`admin-can-you-help` like '%Online Facebook Posting Beforehand%' then '✅'
    when `u`.`admin-can-you-help` like '%help online beforehand%' then '✅'
    else 'No'
  end AS `volunteer_indoor_preevent_facebook_promo`,
  case
    when `u`.`admin-can-you-help` like '%help around announcements and cake time%' then '✅'
    when `u`.`admin-can-you-help` like '%Rounding Up%' then '✅'
    else 'No'
  end AS `volunteer_indoor_rounding_up`,
  case
    when `u`.`admin-can-you-help` like '%help around announcements and cake time%' then '✅'
    when `u`.`admin-can-you-help` like '%Before Cake Tidying%' then '✅'
    else 'No'
  end AS `volunteer_indoor_before_cake_tidying`,
  case
    when `u`.`admin-can-you-help` like '%help around announcements and cake time%' then '✅'
    when `u`.`admin-can-you-help` like '%After Cake Tidying%' then '✅'
    else 'No'
  end AS `volunteer_indoor_after_cake_tidying`,
  case
    when `u`.`admin-can-you-help` like '%do announcements%' then '✅'
    when `u`.`admin-can-you-help` like '%Give the Announcements at Cake%' then '✅'
    else 'No'
  end AS `volunteer_indoor_give_announcements`,
  case
    when `u`.`admin-can-you-help` like '%help at sign-in%' then '✅'
    when `u`.`admin-can-you-help` like '%Help at Check-In%' then '✅'
    else 'No'
  end AS `volunteer_indoor_check_in`,
  case
    when `u`.`admin-can-you-help` like '%help at sign-in%' then '✅'
    when `u`.`admin-can-you-help` like '%Help newbies find Basecamp%' then '✅'
    else 'No'
  end AS `volunteer_indoor_welcome_liaison`,
  case
    when `u`.`admin-can-you-help` like '%help at sign-in%' then '✅'
    when `u`.`admin-can-you-help` like '%Do Pairing%' then '✅'
    else 'No'
  end AS `volunteer_indoor_pairing`,
  case
    when `u`.`admin-can-you-help` like '%help at sign-in%' then '✅'
    when `u`.`admin-can-you-help` like '%Pairing Assistant%' then '✅'
    else 'No'
  end AS `volunteer_indoor_pairing_assistant`,
  case
    when `u`.`admin-can-you-help` like '%be event director for the evening%' then '✅'
    when `u`.`admin-can-you-help` like '%Be Event Director%' then '✅'
    else 'No'
  end AS `volunteer_indoor_event_director`,
  case
    when `u`.`admin-can-you-help` like '%Be a floorwalker%' then '✅'
    when `u`.`admin-can-you-help` like '%Be Floorwalker%' then '✅'
    else 'No'
  end AS `volunteer_indoor_floorwalker`,
  case
    when `u`.`admin-can-you-help-weekend` like '%Online Facebook Posting Beforehand%' then '✅'
    when `u`.`admin-can-you-help` like '%help online beforehand%' then '✅'
    else 'No'
  end AS `volunteer_overnight_preevent_facebook_promo`,
  case
    when `u`.`admin-can-you-help-weekend` like '%Event Reporter%' then '✅'
    when `u`.`admin-can-you-help-weekend` like '%Trip Reporter%' then '✅'
    else 'No'
  end AS `volunteer_overnight_event_reporter`,
  case
    when `u`.`admin-can-you-help-weekend` like '%Trip Director%' then '✅'
    when `u`.`admin-can-you-help-weekend` like '%Be Event Director%' then '✅'
    else 'No'
  end AS `volunteer_overnight_event_director`,
  case
    when `u`.`admin-can-you-help-weekend` like '%Trip Assistant%' then '✅'
    when `u`.`admin-can-you-help-weekend` like '%Be Event Assistant%' then '✅'
    else 'No'
  end AS `volunteer_overnight_event_assistant`,
  case
    when `u`.`admin-can-you-help-weekend` like '%Head Chef%' then '✅'
    when `u`.`admin-can-you-help-weekend` like '%All Meals Coordinator%' then '✅'
    else 'No'
  end AS `volunteer_overnight_head_chef`,
  case
    when `u`.`admin-can-you-help-weekend` like '%Evening Meal Chef%' then '✅'
    else 'No'
  end AS `volunteer_overnight_evening_meal_chef`,
  case
    when `u`.`admin-can-you-help-weekend` like '%Breakfast and Lunch Chef%' then '✅'
    when `u`.`admin-can-you-help-weekend` like '%Lunch and Breakfast Chef%' then '✅'
    else 'No'
  end AS `volunteer_overnight_breakfast_lunch_chef`,
  case
    when `u`.`admin-can-you-help-weekend` like '%Packed Lunch Marshall%' then '✅'
    when `u`.`admin-can-you-help-weekend` like '%Packed Lunch Marshal%' then '✅'
    else 'No'
  end AS `volunteer_overnight_packed_lunch_marshal`,
  case
    when `u`.`admin-can-you-help-weekend` like '%Breakfast Marshall%' then '✅'
    when `u`.`admin-can-you-help-weekend` like '%Breakfast Marshal%' then '✅'
    else 'No'
  end AS `volunteer_overnight_breakfast_marshal`,
  case
    when `u`.`admin-can-you-help-weekend` like '%Lift Sharing Coordinator%' then '✅'
    else 'No'
  end AS `volunteer_overnight_lift_sharing_coordinator`,
  case
    when `u`.`admin-can-you-help-weekend` like '%Climbing and Acitivities Coordinator%' then '✅'
    when `u`.`admin-can-you-help-weekend` like '%Climbing and Activities Coordinator%' then '✅'
    else 'No'
  end AS `volunteer_overnight_activities_coordinator`,
  case
    when `u`.`admin-can-you-help-weekend` like '%Kit Coordinator%' then '✅'
    when `u`.`admin-can-you-help-weekend` like '%Gear Coordinator%' then '✅'
    else 'No'
  end AS `volunteer_overnight_kit_coordinator`,
  case
    when `u`.`admin-can-you-help-weekend` like '%Newbie buddy maker%' then '✅'
    else 'No'
  end AS `volunteer_overnight_newbie_buddy_maker`,
  case
    when `u`.`admin-can-you-help-weekend` like '%Covid Marshall%' then '✅'
    when `u`.`admin-can-you-help-weekend` like '%Covid Marshal%' then '✅'
    else 'No'
  end AS `volunteer_overnight_covid_marshal`,
  case
    when `u`.`admin-can-you-help-weekend` like '%Evening Meal Washing Up Marshall%' then '✅'
    when `u`.`admin-can-you-help-weekend` like '%Evening Meal Washing Up Marshal%' then '✅'
    else 'No'
  end AS `volunteer_overnight_evening_meal_washing_up_marshal`,
  case
    when `u`.`admin-can-you-help-weekend` like '%Breakfast Washing Up Marshall%' then '✅'
    when `u`.`admin-can-you-help-weekend` like '%Breakfast Washing Up Marshal%' then '✅'
    else 'No'
  end AS `volunteer_overnight_breakfast_washing_up_marshal`,
  case
    when `u`.`admin-can-you-help-outdoors` like '%Event Reporter%' then '✅'
    when `u`.`admin-can-you-help-outdoors` like '%Crag Reporter%' then '✅'
    else 'No'
  end AS `volunteer_outdoor_event_reporter`,
  case
    when `u`.`admin-can-you-help-outdoors` like '%Online Facebook Posting Beforehand%' then '✅'
    when `u`.`admin-can-you-help-outdoors` like '%help online beforehand%' then '✅'
    else 'No'
  end AS `volunteer_outdoor_preevent_facebook_promo`,
  case
    when `u`.`admin-can-you-help-outdoors` like '%At the Crag Co-ordinator%' then '✅'
    when `u`.`admin-can-you-help-outdoors` like '%Crag Coordinator%' then '✅'
    else 'No'
  end AS `volunteer_outdoor_crag_coordinator`,
  case
    when `u`.`admin-can-you-help-outdoors` like '%Help the Crag Co-ordinator%' then '✅'
    when `u`.`admin-can-you-help-outdoors` like '%Assistant Crag Coordinator%' then '✅'
    else 'No'
  end AS `volunteer_outdoor_assistant_crag_coordinator`,
  case
    when `u`.`admin-can-you-help-outdoors` like '%Online Crag Logistics Coordinator Beforehand%' then '✅'
    when `u`.`admin-can-you-help-outdoors` like '%Wednesday Group Tesselation%' then '✅'
    else 'No'
  end AS `volunteer_outdoor_group_maker`,
  case
    when `u`.`admin-can-you-help-outdoors` like '%Help online on Wednesday for 1 hour between 12-6pm%' then '✅'
    when `u`.`admin-can-you-help-outdoors` like '%Help online on Wednesday for 1 hour%' then '✅'
    else 'No'
  end AS `volunteer_outdoor_wednesday_afternoon_admin`,
  case
    when `u`.`admin-can-you-help-outdoors` like '%Lift Sharing coordination online on Wednesday Evening%' then '✅'
    when `u`.`admin-can-you-help-outdoors` like '%Lift Sharing%' then '✅'
    else 'No'
  end AS `volunteer_outdoor_wednesday_evening_admin`,
  case
    when `u`.`admin-can-you-help-outdoors` like '%Online Chat Group Creator%' then '✅'
    when `u`.`admin-can-you-help-outdoors` like '%Wednesday Chat Group Creator%' then '✅'
    else 'No'
  end AS `volunteer_outdoor_message_lord`,
  case
    when `u`.`climbing-happy-to-supervise` like '%Yes%' then '✅'
    else 'No'
  end AS `volunteer_happy_to_supervise`,
  case
    when `u`.`admin-can-you-help-outdoors` like '%Week Coordinator Overlord%' then '✅'
    when `u`.`admin-can-you-help-outdoors` like '%Be Event Director%' then '✅'
    else 'No'
  end AS `volunteer_outdoor_event_director`
from
  `wp_member_db` `u`