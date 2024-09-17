CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `wp_member_db_old` AS select distinct `u`.`ID` AS `id`,`u`.`user_login` AS `user_login`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'nickname' limit 1) AS `nickname`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'first_name' limit 1) AS `first_name`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'last_name' limit 1) AS `last_name`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'billing_first_name' limit 1) AS `billing_first_name`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'billing_last_name' limit 1) AS `billing_last_name`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'billing_email' limit 1) AS `billing_email`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'billing_address_1' limit 1) AS `billing_address_1`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'billing_address_2' limit 1) AS `billing_address_2`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'billing_city' limit 1) AS `billing_city`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'billing_postcode' limit 1) AS `billing_postcode`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'billing_country' limit 1) AS `billing_country`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-emergency-contact-name' limit 1) AS `admin-emergency-contact-name`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-emergency-contact-phone' limit 1) AS `admin-emergency-contact-phone`,min(case when `um`.`meta_key` = 'admin-first-timer-question' and `um`.`meta_value` = 'No' then 'No' else 'Yes' end) AS `admin-first-timer-question`,min(case when `um`.`meta_key` in ('admin-first-timer-inside','admin-first-timer-indoors','admin-first-timer-indoor') and `um`.`meta_value` = 'No' then 'No' else 'Yes' end) AS `admin-first-timer-indoor`,min(case when `um`.`meta_key` in ('admin-first-timer-outside','admin-first-timer-outdoors','admin-first-timer-outdoor') and `um`.`meta_value` = 'No' then 'No' else 'Yes' end) AS `admin-first-timer-outdoor`,min(case when `um`.`meta_key` = 'admin-first-timer-social' and `um`.`meta_value` = 'No' then 'No' else 'Yes' end) AS `admin-first-timer-social`,min(case when `um`.`meta_key` = 'admin-first-timer-training' and `um`.`meta_value` = 'No' then 'No' else 'Yes' end) AS `admin-first-timer-training`,min(case when `um`.`meta_key` = 'admin-first-timer-overnight' and `um`.`meta_value` = 'No' then 'No' else 'Yes' end) AS `admin-first-timer-overnight`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-covid-agreement' limit 1) AS `admin-covid-agreement`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-no-insurance-disclaimer' limit 1) AS `admin-no-insurance-disclaimer`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-join-the-bmc' limit 1) AS `admin-join-the-bmc`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-participation-statement-one' limit 1) AS `admin-participation-statement-one`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-participation-statement-two' limit 1) AS `admin-participation-statement-two`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-covid-cautious' limit 1) AS `admin-covid-cautious`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-diet-allergies-health-extra-info' limit 1) AS `admin-diet-allergies-health-extra-info`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-dietary-requirements' limit 1) AS `admin-dietary-requirements`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'skills-belaying' limit 1) AS `skills-belaying`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'climbing-discipline-preference' limit 1) AS `climbing-discipline-preference`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'skills-sport-climbing' limit 1) AS `skills-sport-climbing`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'skills-trad-climbing' limit 1) AS `skills-trad-climbing`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'climbing-happy-to-supervise' limit 1) AS `climbing-happy-to-supervise`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'gear-bringing-evening-or-day-trip' limit 1) AS `gear-bringing-evening-or-day-trip`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'transport-need-lift' limit 1) AS `transport-need-lift`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'transport-will-you-give-lift' limit 1) AS `transport-will-you-give-lift`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'transport-depature-time' limit 1) AS `transport-depature-time`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'transport-leaving-location' limit 1) AS `transport-leaving-location`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'climbing_outdoor_crag_location_preference' limit 1) AS `climbing_outdoor_crag_location_preference`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-phone-number' limit 1) AS `admin-phone-number`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'gear-quickdraws-number' limit 1) AS `gear-quickdraws-number`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'gear-walking-equipment-weekend' limit 1) AS `gear-walking-equipment-weekend`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = '_order_count' limit 1) AS `_order_count`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = '_last_order' limit 1) AS `_last_order`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'paying_customer' limit 1) AS `paying_customer`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'last_update' limit 1) AS `last_update`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'wc_last_active' limit 1) AS `wc_last_active`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'billing_phone' limit 1) AS `billing_phone`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-will-you-not-flake-please' limit 1) AS `admin-will-you-not-flake-please`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'shipping_address_1' limit 1) AS `shipping_address_1`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'shipping_address_2' limit 1) AS `shipping_address_2`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'shipping_city' limit 1) AS `shipping_city`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'shipping_postcode' limit 1) AS `shipping_postcode`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'shipping_country' limit 1) AS `shipping_country`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-over18' limit 1) AS `admin-over18`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-dob' limit 1) AS `admin-dob`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-can-you-help' limit 1) AS `admin-can-you-help`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'climbing-walking-or-climbing-preference-weekend' limit 1) AS `climbing-walking-or-climbing-preference-weekend`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-can-you-help-weekend' limit 1) AS `admin-can-you-help-weekend`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-wednesday-requests-notes' limit 1) AS `admin-wednesday-requests-notes`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-outdoors-requests-notes' limit 1) AS `admin-outdoors-requests-notes`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-can-you-help-outdoors' limit 1) AS `admin-can-you-help-outdoors`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-weekend-requests-notes' limit 1) AS `admin-weekend-requests-notes`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-can-you-help-organisation' limit 1) AS `admin-can-you-help-organisation`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-can-you-help-social' limit 1) AS `admin-can-you-help-social`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-can-you-help-training' limit 1) AS `admin-training-requests-notes`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-can-you-help-training' limit 1) AS `admin-can-you-help-training`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-vacation-requests-notes' limit 1) AS `admin-vacation-requests-notes`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'social-menu-choice-one' limit 1) AS `social-menu-choice-one`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'social-menu-choice-two' limit 1) AS `social-menu-choice-two`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'social-menu-choice-three' limit 1) AS `social-menu-choice-three`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-social-requests-notes' limit 1) AS `admin-social-requests-notes`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-can-you-help-vacation' limit 1) AS `admin-can-you-help-vacation`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'committee_current' limit 1) AS `committee_current`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'cc_volunteer' limit 1) AS `cc_volunteer`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'cc_member' limit 1) AS `cc_member`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'membership_leaving_date' limit 1) AS `membership_leaving_date`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'cc_membership_cancellation_intent_date' limit 1) AS `cc_membership_cancellation_intent_date`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-membership-type' limit 1) AS `admin-membership-type`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-membership-type' limit 1) AS `admin-club-constitution-acceptance-noted-date`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-code-of-conduct-accepted-noted-date' limit 1) AS `admin-code-of-conduct-accepted-noted-date`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-bmc-membership-number' limit 1) AS `admin-bmc-membership-number`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'cc_membership_join_date' limit 1) AS `cc_membership_join_date`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-club-constitution-acceptance' limit 1) AS `admin-club-constitution-acceptance`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-code-of-conduct-accepted' limit 1) AS `admin-code-of-conduct-accepted`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'climbing-trad-grades' limit 1) AS `climbing-trad-grades`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'climbing-sport-grades' limit 1) AS `climbing-sport-grades`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'climbing-trad-skills-extra' limit 1) AS `climbing-trad-skills-extra`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'climbing-sport-skills-extra' limit 1) AS `climbing-sport-skills-extra`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'climbing-indoors-skills-passing-on' limit 1) AS `climbing-indoors-skills-passing-on`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'climbing-trad-skills-passing-on' limit 1) AS `climbing-trad-skills-passing-on`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'climbing-sport-skills-passing-on' limit 1) AS `climbing-sport-skills-passing-on`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'climbing-bouldering-indoors-grades' limit 1) AS `climbing-bouldering-indoors-grades`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'climbing-bouldering-outdoors-grades' limit 1) AS `climbing-bouldering-outdoors-grades`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'climbing-indoors-leading-grades' limit 1) AS `climbing-indoors-leading-grades`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'climbing-indoors-toproping-grades' limit 1) AS `climbing-indoors-toproping-grades`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-social-facebook-url' limit 1) AS `admin-social-facebook-url`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-social-instagram-handle' limit 1) AS `admin-social-instagram-handle`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-uninsured-climbers-alert-1' limit 1) AS `admin-uninsured-climbers-alert-1`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin-no-personal-insurance-disclaimer' limit 1) AS `admin-no-personal-insurance-disclaimer`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'stats_volunteer_for_numerator_cached' limit 1) AS `stats_volunteer_for_numerator_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'stats_volunteer_for_but_no_attend_cached' limit 1) AS `stats_volunteer_for_but_no_attend_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'stats_volunteer_for_denominator_cached' limit 1) AS `stats_volunteer_for_denominator_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'stats_attendance_attended_cached' limit 1) AS `stats_attendance_attended_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'stats_attendance_outdoor_thursday_attended_cached' limit 1) AS `stats_attendance_outdoor_thursday_attended_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'stats_attendance_outdoor_day_attended_cached' limit 1) AS `stats_attendance_outdoor_day_attended_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'stats_attendance_outdoor_saturday_attended_cached' limit 1) AS `stats_attendance_outdoor_saturday_attended_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'stats_attendance_indoor_wednesday_attended_cached' limit 1) AS `stats_attendance_indoor_wednesday_attended_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'stats_attendance_overnight_attended_cached' limit 1) AS `stats_attendance_overnight_attended_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'stats_attendance_training_attended_cached' limit 1) AS `stats_attendance_training_attended_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'stats_attendance_social_attended_cached' limit 1) AS `stats_attendance_social_attended_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'stats_attendance_signups_cached' limit 1) AS `stats_attendance_signups_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'stats_attendance_cancelled_cached' limit 1) AS `stats_attendance_cancelled_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'stats_attendance_noregistershow_cached' limit 1) AS `stats_attendance_noregistershow_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'stats_attendance_noshow_cached' limit 1) AS `stats_attendance_noshow_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'stats_attendance_latebail_cached' limit 1) AS `stats_attendance_latebail_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'stats_attendance_duplicate_cached' limit 1) AS `stats_attendance_duplicate_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'stats_attendance_inprogress_cached' limit 1) AS `stats_attendance_inprogress_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'stats_volunteer_for_but_no_volunteer_cached' limit 1) AS `stats_volunteer_for_but_no_volunteer_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'scores_volunteer_reliability_score_cached' limit 1) AS `scores_volunteer_reliability_score_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'scores_attendance_reliability_score_cached' limit 1) AS `scores_attendance_reliability_score_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'scores_volunteer_value_cached' limit 1) AS `scores_volunteer_value_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'scores_attendance_score_cached' limit 1) AS `scores_attendance_score_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'scores_volunteer_score_cached' limit 1) AS `scores_volunteer_score_cached`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'scores_and_stats_cache_last_updated' limit 1) AS `scores_and_stats_cache_last_updated`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'cc_attendance_noted_date' limit 1) AS `cc_attendance_noted_date`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'cc_compliance_last_date_of_climbing' limit 1) AS `cc_compliance_last_date_of_climbing`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'milestones_3_badge' limit 1) AS `milestones_3_badge`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'milestones_3_badge_marked_given_at' limit 1) AS `milestones_3_badge_marked_given_at`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'milestones_3_badge_marked_given_by' limit 1) AS `milestones_3_badge_marked_given_by`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'cc_compliance_first_date_of_climbing' limit 1) AS `cc_compliance_first_date_of_climbing`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'competency_indoor_trip_director' limit 1) AS `competency_indoor_trip_director`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'competency_indoor_pairing' limit 1) AS `competency_indoor_checkin`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'competency_indoor_pairing' limit 1) AS `competency_indoor_pairing`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'competency_indoor_floorwalker' limit 1) AS `competency_indoor_floorwalker`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'competency_indoor_skillsharer' limit 1) AS `competency_indoor_skillsharer`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'competency_indoor_announcements' limit 1) AS `competency_indoor_announcements`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'competency_outdoor_trip_director' limit 1) AS `competency_outdoor_trip_director`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'competency_outdoor_group_maker' limit 1) AS `competency_outdoor_group_maker`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'competency_outdoor_message_maker' limit 1) AS `competency_outdoor_message_maker`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'competency_outdoor_crag_coordinator' limit 1) AS `competency_outdoor_crag_coordinator`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'competency_overnight_trip_director' limit 1) AS `competency_overnight_trip_director`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'competency_overnight_evening_meal' limit 1) AS `competency_overnight_evening_meal`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'competency_overnight_climbing_coordinator' limit 1) AS `competency_overnight_climbing_coordinator`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'competency_overnight_lift_coordinator' limit 1) AS `competency_overnight_lift_coordinator`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'competency_overnight_breakfast_lunch' limit 1) AS `competency_overnight_breakfast_lunch`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'competency_training_training_organiser' limit 1) AS `competency_training_training_organiser`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'competency_outdoor_skillsharer' limit 1) AS `competency_outdoor_skillsharer`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'competency_social_social_organiser' limit 1) AS `competency_social_social_organiser`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin_new_indoor_clan_join_admin_team' limit 1) AS `admin_new_indoor_clan_join_admin_team`,(select distinct `wp_usermeta`.`meta_value` from `wp_usermeta` where `wp_usermeta`.`user_id` = `u`.`ID` and `wp_usermeta`.`meta_key` = 'admin_parthian_clan_join_admin_team' limit 1) AS `admin_parthian_clan_join_admin_team`,(select distinct `wp_wc_customer_lookup`.`customer_id` from `wp_wc_customer_lookup` where `wp_wc_customer_lookup`.`user_id` = `u`.`ID`) AS `customer_id` from (`wp_users` `u` join `wp_usermeta` `um` on(`um`.`user_id` = `u`.`ID`)) group by `um`.`user_id`