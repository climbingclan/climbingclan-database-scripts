CREATE ALGORITHM = UNDEFINED DEFINER = `root` @`localhost` SQL SECURITY DEFINER VIEW `wp_member_db` AS
select
  `u`.`ID` AS `ID`,
  max(
    case
      when `um`.`meta_key` = 'user_login' then `um`.`meta_value`
    end
  ) AS `user_login`,
  max(
    case
      when `um`.`meta_key` = 'nickname' then `um`.`meta_value`
    end
  ) AS `nickname`,
  max(
    case
      when `um`.`meta_key` = 'first_name' then `um`.`meta_value`
    end
  ) AS `first_name`,
  max(
    case
      when `um`.`meta_key` = 'last_name' then `um`.`meta_value`
    end
  ) AS `last_name`,
  max(
    case
      when `um`.`meta_key` = 'billing_first_name' then `um`.`meta_value`
    end
  ) AS `billing_first_name`,
  max(
    case
      when `um`.`meta_key` = 'billing_last_name' then `um`.`meta_value`
    end
  ) AS `billing_last_name`,
  max(
    case
      when `um`.`meta_key` = 'billing_email' then `um`.`meta_value`
    end
  ) AS `billing_email`,
  max(
    case
      when `um`.`meta_key` = 'billing_address_1' then `um`.`meta_value`
    end
  ) AS `billing_address_1`,
  max(
    case
      when `um`.`meta_key` = 'billing_address_2' then `um`.`meta_value`
    end
  ) AS `billing_address_2`,
  max(
    case
      when `um`.`meta_key` = 'billing_city' then `um`.`meta_value`
    end
  ) AS `billing_city`,
  max(
    case
      when `um`.`meta_key` = 'billing_postcode' then `um`.`meta_value`
    end
  ) AS `billing_postcode`,
  max(
    case
      when `um`.`meta_key` = 'billing_country' then `um`.`meta_value`
    end
  ) AS `billing_country`,
  max(
    case
      when `um`.`meta_key` = 'admin-emergency-contact-name' then `um`.`meta_value`
    end
  ) AS `admin-emergency-contact-name`,
  max(
    case
      when `um`.`meta_key` = 'admin-emergency-contact-phone' then `um`.`meta_value`
    end
  ) AS `admin-emergency-contact-phone`,
  max(
    case
      when `um`.`meta_key` = 'admin-first-timer-question' then `um`.`meta_value`
    end
  ) AS `admin-first-timer-question`,
  max(
    case
      when `um`.`meta_key` = 'admin-first-timer-indoor' then `um`.`meta_value`
    end
  ) AS `admin-first-timer-indoor`,
  max(
    case
      when `um`.`meta_key` = 'admin-first-timer-outdoor' then `um`.`meta_value`
    end
  ) AS `admin-first-timer-outdoor`,
  max(
    case
      when `um`.`meta_key` = 'admin-first-timer-social' then `um`.`meta_value`
    end
  ) AS `admin-first-timer-social`,
  max(
    case
      when `um`.`meta_key` = 'admin-first-timer-training' then `um`.`meta_value`
    end
  ) AS `admin-first-timer-training`,
  max(
    case
      when `um`.`meta_key` = 'admin-first-timer-overnight' then `um`.`meta_value`
    end
  ) AS `admin-first-timer-overnight`,
  max(
    case
      when `um`.`meta_key` = 'admin-covid-agreement' then `um`.`meta_value`
    end
  ) AS `admin-covid-agreement`,
  max(
    case
      when `um`.`meta_key` = 'admin-no-insurance-disclaimer' then `um`.`meta_value`
    end
  ) AS `admin-no-insurance-disclaimer`,
  max(
    case
      when `um`.`meta_key` = 'admin-join-the-bmc' then `um`.`meta_value`
    end
  ) AS `admin-join-the-bmc`,
  max(
    case
      when `um`.`meta_key` = 'admin-participation-statement-one' then `um`.`meta_value`
    end
  ) AS `admin-participation-statement-one`,
  max(
    case
      when `um`.`meta_key` = 'admin-participation-statement-two' then `um`.`meta_value`
    end
  ) AS `admin-participation-statement-two`,
  max(
    case
      when `um`.`meta_key` = 'admin-covid-cautious' then `um`.`meta_value`
    end
  ) AS `admin-covid-cautious`,
  max(
    case
      when `um`.`meta_key` = 'admin-diet-allergies-health-extra-info' then `um`.`meta_value`
    end
  ) AS `admin-diet-allergies-health-extra-info`,
  max(
    case
      when `um`.`meta_key` = 'admin-dietary-requirements' then `um`.`meta_value`
    end
  ) AS `admin-dietary-requirements`,
  max(
    case
      when `um`.`meta_key` = 'skills-belaying' then `um`.`meta_value`
    end
  ) AS `skills-belaying`,
  max(
    case
      when `um`.`meta_key` = 'climbing-discipline-preference' then `um`.`meta_value`
    end
  ) AS `climbing-discipline-preference`,
  max(
    case
      when `um`.`meta_key` = 'skills-sport-climbing' then `um`.`meta_value`
    end
  ) AS `skills-sport-climbing`,
  max(
    case
      when `um`.`meta_key` = 'skills-trad-climbing' then `um`.`meta_value`
    end
  ) AS `skills-trad-climbing`,
  max(
    case
      when `um`.`meta_key` = 'climbing-happy-to-supervise' then `um`.`meta_value`
    end
  ) AS `climbing-happy-to-supervise`,
  max(
    case
      when `um`.`meta_key` = 'gear-bringing-evening-or-day-trip' then `um`.`meta_value`
    end
  ) AS `gear-bringing-evening-or-day-trip`,
  max(
    case
      when `um`.`meta_key` = 'transport-need-lift' then `um`.`meta_value`
    end
  ) AS `transport-need-lift`,
  max(
    case
      when `um`.`meta_key` = 'transport-will-you-give-lift' then `um`.`meta_value`
    end
  ) AS `transport-will-you-give-lift`,
  max(
    case
      when `um`.`meta_key` = 'transport-depature-time' then `um`.`meta_value`
    end
  ) AS `transport-depature-time`,
  max(
    case
      when `um`.`meta_key` = 'transport-leaving-location' then `um`.`meta_value`
    end
  ) AS `transport-leaving-location`,
  max(
    case
      when `um`.`meta_key` = 'climbing_outdoor_crag_location_preference' then `um`.`meta_value`
    end
  ) AS `climbing_outdoor_crag_location_preference`,
  max(
    case
      when `um`.`meta_key` = 'admin-phone-number' then `um`.`meta_value`
    end
  ) AS `admin-phone-number`,
  max(
    case
      when `um`.`meta_key` = 'gear-quickdraws-number' then `um`.`meta_value`
    end
  ) AS `gear-quickdraws-number`,
  max(
    case
      when `um`.`meta_key` = 'gear-walking-equipment-weekend' then `um`.`meta_value`
    end
  ) AS `gear-walking-equipment-weekend`,
  max(
    case
      when `um`.`meta_key` = '_order_count' then `um`.`meta_value`
    end
  ) AS `_order_count`,
  max(
    case
      when `um`.`meta_key` = '_last_order' then `um`.`meta_value`
    end
  ) AS `_last_order`,
  max(
    case
      when `um`.`meta_key` = 'paying_customer' then `um`.`meta_value`
    end
  ) AS `paying_customer`,
  max(
    case
      when `um`.`meta_key` = 'last_update' then `um`.`meta_value`
    end
  ) AS `last_update`,
  max(
    case
      when `um`.`meta_key` = 'wc_last_active' then `um`.`meta_value`
    end
  ) AS `wc_last_active`,
  max(
    case
      when `um`.`meta_key` = 'billing_phone' then `um`.`meta_value`
    end
  ) AS `billing_phone`,
  max(
    case
      when `um`.`meta_key` = 'admin-will-you-not-flake-please' then `um`.`meta_value`
    end
  ) AS `admin-will-you-not-flake-please`,
  max(
    case
      when `um`.`meta_key` = 'shipping_address_1' then `um`.`meta_value`
    end
  ) AS `shipping_address_1`,
  max(
    case
      when `um`.`meta_key` = 'shipping_address_2' then `um`.`meta_value`
    end
  ) AS `shipping_address_2`,
  max(
    case
      when `um`.`meta_key` = 'shipping_city' then `um`.`meta_value`
    end
  ) AS `shipping_city`,
  max(
    case
      when `um`.`meta_key` = 'shipping_postcode' then `um`.`meta_value`
    end
  ) AS `shipping_postcode`,
  max(
    case
      when `um`.`meta_key` = 'shipping_country' then `um`.`meta_value`
    end
  ) AS `shipping_country`,
  max(
    case
      when `um`.`meta_key` = 'payment_customer_id' then `um`.`meta_value`
    end
  ) AS `payment_customer_id`,
  max(
    case
      when `um`.`meta_key` = 'payment_customer_email' then `um`.`meta_value`
    end
  ) AS `payment_customer_email`,
  max(
    case
      when `um`.`meta_key` = 'admin-over18' then `um`.`meta_value`
    end
  ) AS `admin-over18`,
  max(
    case
      when `um`.`meta_key` = 'admin-dob' then `um`.`meta_value`
    end
  ) AS `admin-dob`,
  max(
    case
      when `um`.`meta_key` = 'admin-can-you-help' then `um`.`meta_value`
    end
  ) AS `admin-can-you-help`,
  max(
    case
      when `um`.`meta_key` = 'climbing-walking-or-climbing-preference-weekend' then `um`.`meta_value`
    end
  ) AS `climbing-walking-or-climbing-preference-weekend`,
  max(
    case
      when `um`.`meta_key` = 'admin-can-you-help-weekend' then `um`.`meta_value`
    end
  ) AS `admin-can-you-help-weekend`,
  max(
    case
      when `um`.`meta_key` = 'admin-wednesday-requests-notes' then `um`.`meta_value`
    end
  ) AS `admin-wednesday-requests-notes`,
  max(
    case
      when `um`.`meta_key` = 'admin-outdoors-requests-notes' then `um`.`meta_value`
    end
  ) AS `admin-outdoors-requests-notes`,
  max(
    case
      when `um`.`meta_key` = 'admin-can-you-help-outdoors' then `um`.`meta_value`
    end
  ) AS `admin-can-you-help-outdoors`,
  max(
    case
      when `um`.`meta_key` = 'admin-weekend-requests-notes' then `um`.`meta_value`
    end
  ) AS `admin-weekend-requests-notes`,
  max(
    case
      when `um`.`meta_key` = 'admin-can-you-help-organisation' then `um`.`meta_value`
    end
  ) AS `admin-can-you-help-organisation`,
  max(
    case
      when `um`.`meta_key` = 'admin-can-you-help-social' then `um`.`meta_value`
    end
  ) AS `admin-can-you-help-social`,
  max(
    case
      when `um`.`meta_key` = 'admin-training-requests-notes' then `um`.`meta_value`
    end
  ) AS `admin-training-requests-notes`,
  max(
    case
      when `um`.`meta_key` = 'admin-can-you-help-training' then `um`.`meta_value`
    end
  ) AS `admin-can-you-help-training`,
  max(
    case
      when `um`.`meta_key` = 'admin-vacation-requests-notes' then `um`.`meta_value`
    end
  ) AS `admin-vacation-requests-notes`,
  max(
    case
      when `um`.`meta_key` = 'social-menu-choice-one' then `um`.`meta_value`
    end
  ) AS `social-menu-choice-one`,
  max(
    case
      when `um`.`meta_key` = 'social-menu-choice-two' then `um`.`meta_value`
    end
  ) AS `social-menu-choice-two`,
  max(
    case
      when `um`.`meta_key` = 'social-menu-choice-three' then `um`.`meta_value`
    end
  ) AS `social-menu-choice-three`,
  max(
    case
      when `um`.`meta_key` = 'admin-social-requests-notes' then `um`.`meta_value`
    end
  ) AS `admin-social-requests-notes`,
  max(
    case
      when `um`.`meta_key` = 'admin-can-you-help-vacation' then `um`.`meta_value`
    end
  ) AS `admin-can-you-help-vacation`,
  max(
    case
      when `um`.`meta_key` = 'committee_current' then `um`.`meta_value`
    end
  ) AS `committee_current`,
  max(
    case
      when `um`.`meta_key` = 'cc_volunteer' then `um`.`meta_value`
    end
  ) AS `cc_volunteer`,
  max(
    case
      when `um`.`meta_key` = 'cc_member' then `um`.`meta_value`
    end
  ) AS `cc_member`,
  max(
    case
      when `um`.`meta_key` = 'membership_leaving_date' then `um`.`meta_value`
    end
  ) AS `membership_leaving_date`,
  max(
    case
      when `um`.`meta_key` = 'cc_membership_cancellation_intent_date' then `um`.`meta_value`
    end
  ) AS `cc_membership_cancellation_intent_date`,
  max(
    case
      when `um`.`meta_key` = 'admin-membership-type' then `um`.`meta_value`
    end
  ) AS `admin-membership-type`,
  max(
    case
      when `um`.`meta_key` = 'admin-club-constitution-acceptance-noted-date' then `um`.`meta_value`
    end
  ) AS `admin-club-constitution-acceptance-noted-date`,
  max(
    case
      when `um`.`meta_key` = 'admin-code-of-conduct-accepted-noted-date' then `um`.`meta_value`
    end
  ) AS `admin-code-of-conduct-accepted-noted-date`,
  max(
    case
      when `um`.`meta_key` = 'admin-bmc-membership-number' then `um`.`meta_value`
    end
  ) AS `admin-bmc-membership-number`,
  max(
    case
      when `um`.`meta_key` = 'cc_membership_join_date' then `um`.`meta_value`
    end
  ) AS `cc_membership_join_date`,
  max(
    case
      when `um`.`meta_key` = 'admin-club-constitution-acceptance' then `um`.`meta_value`
    end
  ) AS `admin-club-constitution-acceptance`,
  max(
    case
      when `um`.`meta_key` = 'admin-code-of-conduct-accepted' then `um`.`meta_value`
    end
  ) AS `admin-code-of-conduct-accepted`,
  max(
    case
      when `um`.`meta_key` = 'climbing-trad-grades' then `um`.`meta_value`
    end
  ) AS `climbing-trad-grades`,
  max(
    case
      when `um`.`meta_key` = 'climbing-sport-grades' then `um`.`meta_value`
    end
  ) AS `climbing-sport-grades`,
  max(
    case
      when `um`.`meta_key` = 'climbing-trad-skills-extra' then `um`.`meta_value`
    end
  ) AS `climbing-trad-skills-extra`,
  max(
    case
      when `um`.`meta_key` = 'climbing-sport-skills-extra' then `um`.`meta_value`
    end
  ) AS `climbing-sport-skills-extra`,
  max(
    case
      when `um`.`meta_key` = 'climbing-indoors-skills-passing-on' then `um`.`meta_value`
    end
  ) AS `climbing-indoors-skills-passing-on`,
  max(
    case
      when `um`.`meta_key` = 'climbing-trad-skills-passing-on' then `um`.`meta_value`
    end
  ) AS `climbing-trad-skills-passing-on`,
  max(
    case
      when `um`.`meta_key` = 'climbing-sport-skills-passing-on' then `um`.`meta_value`
    end
  ) AS `climbing-sport-skills-passing-on`,
  max(
    case
      when `um`.`meta_key` = 'climbing-bouldering-indoors-grades' then `um`.`meta_value`
    end
  ) AS `climbing-bouldering-indoors-grades`,
  max(
    case
      when `um`.`meta_key` = 'climbing-bouldering-outdoors-grades' then `um`.`meta_value`
    end
  ) AS `climbing-bouldering-outdoors-grades`,
  max(
    case
      when `um`.`meta_key` = 'climbing-indoors-leading-grades' then `um`.`meta_value`
    end
  ) AS `climbing-indoors-leading-grades`,
  max(
    case
      when `um`.`meta_key` = 'climbing-indoors-toproping-grades' then `um`.`meta_value`
    end
  ) AS `climbing-indoors-toproping-grades`,
  max(
    case
      when `um`.`meta_key` = 'admin-social-facebook-url' then `um`.`meta_value`
    end
  ) AS `admin-social-facebook-url`,
  max(
    case
      when `um`.`meta_key` = 'admin-social-instagram-handle' then `um`.`meta_value`
    end
  ) AS `admin-social-instagram-handle`,
  max(
    case
      when `um`.`meta_key` = 'admin-uninsured-climbers-alert-1' then `um`.`meta_value`
    end
  ) AS `admin-uninsured-climbers-alert-1`,
  max(
    case
      when `um`.`meta_key` = 'admin-no-personal-insurance-disclaimer' then `um`.`meta_value`
    end
  ) AS `admin-no-personal-insurance-disclaimer`,
  max(
    case
      when `um`.`meta_key` = 'stats_volunteer_for_numerator_cached' then `um`.`meta_value`
    end
  ) AS `stats_volunteer_for_numerator_cached`,
  max(
    case
      when `um`.`meta_key` = 'stats_volunteer_for_but_no_attend_cached' then `um`.`meta_value`
    end
  ) AS `stats_volunteer_for_but_no_attend_cached`,
  max(
    case
      when `um`.`meta_key` = 'stats_volunteer_for_denominator_cached' then `um`.`meta_value`
    end
  ) AS `stats_volunteer_for_denominator_cached`,
  max(
    case
      when `um`.`meta_key` = 'stats_attendance_attended_cached' then `um`.`meta_value`
    end
  ) AS `stats_attendance_attended_cached`,
  max(
    case
      when `um`.`meta_key` = 'stats_attendance_outdoor_thursday_attended_cached' then `um`.`meta_value`
    end
  ) AS `stats_attendance_outdoor_thursday_attended_cached`,
  max(
    case
      when `um`.`meta_key` = 'stats_attendance_outdoor_day_attended_cached' then `um`.`meta_value`
    end
  ) AS `stats_attendance_outdoor_day_attended_cached`,
  max(
    case
      when `um`.`meta_key` = 'stats_attendance_outdoor_saturday_attended_cached' then `um`.`meta_value`
    end
  ) AS `stats_attendance_outdoor_saturday_attended_cached`,
  max(
    case
      when `um`.`meta_key` = 'stats_attendance_indoor_wednesday_attended_cached' then `um`.`meta_value`
    end
  ) AS `stats_attendance_indoor_wednesday_attended_cached`,
  max(
    case
      when `um`.`meta_key` = 'stats_attendance_overnight_attended_cached' then `um`.`meta_value`
    end
  ) AS `stats_attendance_overnight_attended_cached`,
  max(
    case
      when `um`.`meta_key` = 'stats_attendance_training_attended_cached' then `um`.`meta_value`
    end
  ) AS `stats_attendance_training_attended_cached`,
  max(
    case
      when `um`.`meta_key` = 'stats_attendance_social_attended_cached' then `um`.`meta_value`
    end
  ) AS `stats_attendance_social_attended_cached`,
  max(
    case
      when `um`.`meta_key` = 'stats_attendance_signups_cached' then `um`.`meta_value`
    end
  ) AS `stats_attendance_signups_cached`,
  max(
    case
      when `um`.`meta_key` = 'stats_attendance_cancelled_cached' then `um`.`meta_value`
    end
  ) AS `stats_attendance_cancelled_cached`,
  max(
    case
      when `um`.`meta_key` = 'stats_attendance_noregistershow_cached' then `um`.`meta_value`
    end
  ) AS `stats_attendance_noregistershow_cached`,
  max(
    case
      when `um`.`meta_key` = 'stats_attendance_noshow_cached' then `um`.`meta_value`
    end
  ) AS `stats_attendance_noshow_cached`,
  max(
    case
      when `um`.`meta_key` = 'stats_attendance_latebail_cached' then `um`.`meta_value`
    end
  ) AS `stats_attendance_latebail_cached`,
  max(
    case
      when `um`.`meta_key` = 'stats_attendance_duplicate_cached' then `um`.`meta_value`
    end
  ) AS `stats_attendance_duplicate_cached`,
  max(
    case
      when `um`.`meta_key` = 'stats_attendance_inprogress_cached' then `um`.`meta_value`
    end
  ) AS `stats_attendance_inprogress_cached`,
  max(
    case
      when `um`.`meta_key` = 'stats_volunteer_for_but_no_volunteer_cached' then `um`.`meta_value`
    end
  ) AS `stats_volunteer_for_but_no_volunteer_cached`,
  max(
    case
      when `um`.`meta_key` = 'scores_volunteer_reliability_score_cached' then `um`.`meta_value`
    end
  ) AS `scores_volunteer_reliability_score_cached`,
  max(
    case
      when `um`.`meta_key` = 'scores_attendance_reliability_score_cached' then `um`.`meta_value`
    end
  ) AS `scores_attendance_reliability_score_cached`,
  max(
    case
      when `um`.`meta_key` = 'scores_volunteer_value_cached' then `um`.`meta_value`
    end
  ) AS `scores_volunteer_value_cached`,
  max(
    case
      when `um`.`meta_key` = 'scores_attendance_score_cached' then `um`.`meta_value`
    end
  ) AS `scores_attendance_score_cached`,
  max(
    case
      when `um`.`meta_key` = 'scores_volunteer_score_cached' then `um`.`meta_value`
    end
  ) AS `scores_volunteer_score_cached`,
  max(
    case
      when `um`.`meta_key` = 'scores_and_stats_cache_last_updated' then `um`.`meta_value`
    end
  ) AS `scores_and_stats_cache_last_updated`,
  max(
    case
      when `um`.`meta_key` = 'cc_attendance_noted_date' then `um`.`meta_value`
    end
  ) AS `cc_attendance_noted_date`,
  max(
    case
      when `um`.`meta_key` = 'cc_compliance_last_date_of_climbing' then `um`.`meta_value`
    end
  ) AS `cc_compliance_last_date_of_climbing`,
  max(
    case
      when `um`.`meta_key` = 'milestones_3_badge' then `um`.`meta_value`
    end
  ) AS `milestones_3_badge`,
  max(
    case
      when `um`.`meta_key` = 'milestones_3_badge_marked_given_at' then `um`.`meta_value`
    end
  ) AS `milestones_3_badge_marked_given_at`,
  max(
    case
      when `um`.`meta_key` = 'milestones_3_badge_marked_given_by' then `um`.`meta_value`
    end
  ) AS `milestones_3_badge_marked_given_by`,
  max(
    case
      when `um`.`meta_key` = 'milestones_5_band' then `um`.`meta_value`
    end
  ) AS `milestones_5_band`,
  max(
    case
      when `um`.`meta_key` = 'milestones_5_band_marked_given_at' then `um`.`meta_value`
    end
  ) AS `milestones_5_band_marked_given_at`,
  max(
    case
      when `um`.`meta_key` = 'milestones_5_band_marked_given_by' then `um`.`meta_value`
    end
  ) AS `milestones_5_band_marked_given_by`,
  max(
    case
      when `um`.`meta_key` = 'cc_compliance_first_date_of_climbing' then `um`.`meta_value`
    end
  ) AS `cc_compliance_first_date_of_climbing`,
  max(
    case
      when `um`.`meta_key` = 'competency_indoor_trip_director' then `um`.`meta_value`
    end
  ) AS `competency_indoor_trip_director`,
  max(
    case
      when `um`.`meta_key` = 'competency_indoor_checkin' then `um`.`meta_value`
    end
  ) AS `competency_indoor_checkin`,
  max(
    case
      when `um`.`meta_key` = 'competency_indoor_pairing' then `um`.`meta_value`
    end
  ) AS `competency_indoor_pairing`,
  max(
    case
      when `um`.`meta_key` = 'competency_indoor_floorwalker' then `um`.`meta_value`
    end
  ) AS `competency_indoor_floorwalker`,
  max(
    case
      when `um`.`meta_key` = 'competency_indoor_skillsharer' then `um`.`meta_value`
    end
  ) AS `competency_indoor_skillsharer`,
  max(
    case
      when `um`.`meta_key` = 'competency_indoor_announcements' then `um`.`meta_value`
    end
  ) AS `competency_indoor_announcements`,
  max(
    case
      when `um`.`meta_key` = 'competency_outdoor_trip_director' then `um`.`meta_value`
    end
  ) AS `competency_outdoor_trip_director`,
  max(
    case
      when `um`.`meta_key` = 'competency_outdoor_group_maker' then `um`.`meta_value`
    end
  ) AS `competency_outdoor_group_maker`,
  max(
    case
      when `um`.`meta_key` = 'competency_outdoor_message_maker' then `um`.`meta_value`
    end
  ) AS `competency_outdoor_message_maker`,
  max(
    case
      when `um`.`meta_key` = 'competency_outdoor_crag_coordinator' then `um`.`meta_value`
    end
  ) AS `competency_outdoor_crag_coordinator`,
  max(
    case
      when `um`.`meta_key` = 'competency_overnight_trip_director' then `um`.`meta_value`
    end
  ) AS `competency_overnight_trip_director`,
  max(
    case
      when `um`.`meta_key` = 'competency_overnight_evening_meal' then `um`.`meta_value`
    end
  ) AS `competency_overnight_evening_meal`,
  max(
    case
      when `um`.`meta_key` = 'competency_overnight_climbing_coordinator' then `um`.`meta_value`
    end
  ) AS `competency_overnight_climbing_coordinator`,
  max(
    case
      when `um`.`meta_key` = 'competency_overnight_lift_coordinator' then `um`.`meta_value`
    end
  ) AS `competency_overnight_lift_coordinator`,
  max(
    case
      when `um`.`meta_key` = 'competency_overnight_breakfast_lunch' then `um`.`meta_value`
    end
  ) AS `competency_overnight_breakfast_lunch`,
  max(
    case
      when `um`.`meta_key` = 'competency_training_training_organiser' then `um`.`meta_value`
    end
  ) AS `competency_training_training_organiser`,
  max(
    case
      when `um`.`meta_key` = 'competency_outdoor_skillsharer' then `um`.`meta_value`
    end
  ) AS `competency_outdoor_skillsharer`,
  max(
    case
      when `um`.`meta_key` = 'competency_social_social_organiser' then `um`.`meta_value`
    end
  ) AS `competency_social_social_organiser`,
  max(
    case
      when `um`.`meta_key` = 'admin_new_indoor_clan_join_admin_team' then `um`.`meta_value`
    end
  ) AS `admin_new_indoor_clan_join_admin_team`,
  max(
    case
      when `um`.`meta_key` = 'admin_parthian_clan_join_admin_team' then `um`.`meta_value`
    end
  ) AS `admin_parthian_clan_join_admin_team`,
  max(
    case
      when `um`.`meta_key` = 'climbing_outdoor_leaving_postcode' then `um`.`meta_value`
    end
  ) AS `climbing_outdoor_leaving_postcode`,
  max(
    case
      when `um`.`meta_key` = 'climbing_outdoor_leaving_postcode_geocoded' then `um`.`meta_value`
    end
  ) AS `climbing_outdoor_leaving_postcode_geocoded`,
  max(
    case
      when `um`.`meta_key` = 'climbing_outdoor_leaving_postcode_geocoded_last_updated' then `um`.`meta_value`
    end
  ) AS `climbing_outdoor_leaving_postcode_geocoded_last_updated`,
  max(
    case
      when `um`.`meta_key` = 'admin_outdoor_volunteering_team' then `um`.`meta_value`
    end
  ) AS `admin_outdoor_volunteering_team`,
  (
    select distinct
      `wp_wc_customer_lookup`.`customer_id`
    from
      `wp_wc_customer_lookup`
    where
      `wp_wc_customer_lookup`.`user_id` = `u`.`ID`
  ) AS `customer_id`
from
  (
    `wp_users` `u`
    left join `wp_usermeta` `um` on (`u`.`ID` = `um`.`user_id`)
  )
group by
  `u`.`ID`