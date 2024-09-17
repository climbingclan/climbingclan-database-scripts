CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `wp_member_db_new` AS select `s1`.`id` AS `id`,`s1`.`admin-covid-agreement` AS `admin-covid-agreement`,`s1`.`admin-covid-cautious` AS `admin-covid-cautious`,`s1`.`admin-diet-allergies-health-extra-info` AS `admin-diet-allergies-health-extra-info`,`s1`.`admin-dietary-requirements` AS `admin-dietary-requirements`,`s1`.`admin-emergency-contact-name` AS `admin-emergency-contact-name`,`s1`.`admin-emergency-contact-phone` AS `admin-emergency-contact-phone`,`s1`.`admin-first-timer-indoor` AS `admin-first-timer-indoor`,`s1`.`admin-first-timer-outdoor` AS `admin-first-timer-outdoor`,`s1`.`admin-first-timer-overnight` AS `admin-first-timer-overnight`,`s1`.`admin-first-timer-question` AS `admin-first-timer-question`,`s1`.`admin-first-timer-social` AS `admin-first-timer-social`,`s1`.`admin-first-timer-training` AS `admin-first-timer-training`,`s1`.`admin-join-the-bmc` AS `admin-join-the-bmc`,`s1`.`admin-no-insurance-disclaimer` AS `admin-no-insurance-disclaimer`,`s1`.`admin-participation-statement-one` AS `admin-participation-statement-one`,`s1`.`admin-participation-statement-two` AS `admin-participation-statement-two`,`s1`.`billing_address_1` AS `billing_address_1`,`s1`.`billing_address_2` AS `billing_address_2`,`s1`.`billing_city` AS `billing_city`,`s1`.`billing_country` AS `billing_country`,`s1`.`billing_email` AS `billing_email`,`s1`.`billing_first_name` AS `billing_first_name`,`s1`.`billing_last_name` AS `billing_last_name`,`s1`.`billing_postcode` AS `billing_postcode`,`s1`.`customer_id` AS `customer_id`,`s1`.`first_name` AS `first_name`,`s1`.`last_name` AS `last_name`,`s1`.`nickname` AS `nickname`,`s1`.`user_login` AS `user_login`,`s2`.`admin-dob` AS `admin-dob`,`s2`.`admin-over18` AS `admin-over18`,`s2`.`admin-phone-number` AS `admin-phone-number`,`s2`.`admin-will-you-not-flake-please` AS `admin-will-you-not-flake-please`,`s2`.`billing_phone` AS `billing_phone`,`s2`.`climbing-discipline-preference` AS `climbing-discipline-preference`,`s2`.`climbing-happy-to-supervise` AS `climbing-happy-to-supervise`,`s2`.`climbing_outdoor_crag_location_preference` AS `climbing_outdoor_crag_location_preference`,`s2`.`gear-bringing-evening-or-day-trip` AS `gear-bringing-evening-or-day-trip`,`s2`.`gear-quickdraws-number` AS `gear-quickdraws-number`,`s2`.`gear-walking-equipment-weekend` AS `gear-walking-equipment-weekend`,`s2`.`last_update` AS `last_update`,`s2`.`paying_customer` AS `paying_customer`,`s2`.`shipping_address_1` AS `shipping_address_1`,`s2`.`shipping_address_2` AS `shipping_address_2`,`s2`.`shipping_city` AS `shipping_city`,`s2`.`shipping_country` AS `shipping_country`,`s2`.`shipping_postcode` AS `shipping_postcode`,`s2`.`skills-belaying` AS `skills-belaying`,`s2`.`skills-sport-climbing` AS `skills-sport-climbing`,`s2`.`skills-trad-climbing` AS `skills-trad-climbing`,`s2`.`transport-depature-time` AS `transport-depature-time`,`s2`.`transport-leaving-location` AS `transport-leaving-location`,`s2`.`transport-need-lift` AS `transport-need-lift`,`s2`.`transport-will-you-give-lift` AS `transport-will-you-give-lift`,`s2`.`wc_last_active` AS `wc_last_active`,`s2`.`_last_order` AS `_last_order`,`s2`.`_order_count` AS `_order_count`,`s3`.`admin-bmc-membership-number` AS `admin-bmc-membership-number`,`s3`.`admin-can-you-help-organisation` AS `admin-can-you-help-organisation`,`s3`.`admin-can-you-help-outdoors` AS `admin-can-you-help-outdoors`,`s3`.`admin-can-you-help-social` AS `admin-can-you-help-social`,`s3`.`admin-can-you-help-training` AS `admin-can-you-help-training`,`s3`.`admin-can-you-help-vacation` AS `admin-can-you-help-vacation`,`s3`.`admin-can-you-help-weekend` AS `admin-can-you-help-weekend`,`s3`.`admin-can-you-help` AS `admin-can-you-help`,`s3`.`admin-club-constitution-acceptance-noted-date` AS `admin-club-constitution-acceptance-noted-date`,`s3`.`admin-club-constitution-acceptance` AS `admin-club-constitution-acceptance`,`s3`.`admin-code-of-conduct-accepted-noted-date` AS `admin-code-of-conduct-accepted-noted-date`,`s3`.`admin-code-of-conduct-accepted` AS `admin-code-of-conduct-accepted`,`s3`.`admin-membership-type` AS `admin-membership-type`,`s3`.`admin-outdoors-requests-notes` AS `admin-outdoors-requests-notes`,`s3`.`admin-social-requests-notes` AS `admin-social-requests-notes`,`s3`.`admin-training-requests-notes` AS `admin-training-requests-notes`,`s3`.`admin-vacation-requests-notes` AS `admin-vacation-requests-notes`,`s3`.`admin-wednesday-requests-notes` AS `admin-wednesday-requests-notes`,`s3`.`admin-weekend-requests-notes` AS `admin-weekend-requests-notes`,`s3`.`cc_membership_cancellation_intent_date` AS `cc_membership_cancellation_intent_date`,`s3`.`cc_membership_join_date` AS `cc_membership_join_date`,`s3`.`cc_member` AS `cc_member`,`s3`.`cc_volunteer` AS `cc_volunteer`,`s3`.`climbing-walking-or-climbing-preference-weekend` AS `climbing-walking-or-climbing-preference-weekend`,`s3`.`committee_current` AS `committee_current`,`s3`.`membership_leaving_date` AS `membership_leaving_date`,`s3`.`social-menu-choice-one` AS `social-menu-choice-one`,`s3`.`social-menu-choice-three` AS `social-menu-choice-three`,`s3`.`social-menu-choice-two` AS `social-menu-choice-two`,`s4`.`admin-no-personal-insurance-disclaimer` AS `admin-no-personal-insurance-disclaimer`,`s4`.`admin-social-facebook-url` AS `admin-social-facebook-url`,`s4`.`admin-social-instagram-handle` AS `admin-social-instagram-handle`,`s4`.`admin-uninsured-climbers-alert-1` AS `admin-uninsured-climbers-alert-1`,`s4`.`climbing-bouldering-indoors-grades` AS `climbing-bouldering-indoors-grades`,`s4`.`climbing-bouldering-outdoors-grades` AS `climbing-bouldering-outdoors-grades`,`s4`.`climbing-indoors-leading-grades` AS `climbing-indoors-leading-grades`,`s4`.`climbing-indoors-skills-passing-on` AS `climbing-indoors-skills-passing-on`,`s4`.`climbing-indoors-toproping-grades` AS `climbing-indoors-toproping-grades`,`s4`.`climbing-sport-grades` AS `climbing-sport-grades`,`s4`.`climbing-sport-skills-extra` AS `climbing-sport-skills-extra`,`s4`.`climbing-sport-skills-passing-on` AS `climbing-sport-skills-passing-on`,`s4`.`climbing-trad-grades` AS `climbing-trad-grades`,`s4`.`climbing-trad-skills-extra` AS `climbing-trad-skills-extra`,`s4`.`climbing-trad-skills-passing-on` AS `climbing-trad-skills-passing-on`,`s5`.`cc_attendance_noted_date` AS `cc_attendance_noted_date`,`s5`.`cc_compliance_first_date_of_climbing` AS `cc_compliance_first_date_of_climbing`,`s5`.`cc_compliance_last_date_of_climbing` AS `cc_compliance_last_date_of_climbing`,`s5`.`competency_checkin` AS `competency_checkin`,`s5`.`competency_indoor_announcements` AS `competency_indoor_announcements`,`s5`.`competency_indoor_floorwalker` AS `competency_indoor_floorwalker`,`s5`.`competency_indoor_pairing` AS `competency_indoor_pairing`,`s5`.`competency_indoor_trip_director` AS `competency_indoor_trip_director`,`s5`.`milestones_3_badge_marked_given_at` AS `milestones_3_badge_marked_given_at`,`s5`.`milestones_3_badge_marked_given_by` AS `milestones_3_badge_marked_given_by`,`s5`.`milestones_3_badge` AS `milestones_3_badge`,`s5`.`scores_and_stats_cache_last_updated` AS `scores_and_stats_cache_last_updated`,`s5`.`scores_attendance_reliability_score_cached` AS `scores_attendance_reliability_score_cached`,`s5`.`scores_attendance_score_cached` AS `scores_attendance_score_cached`,`s5`.`scores_volunteer_reliability_score_cached` AS `scores_volunteer_reliability_score_cached`,`s5`.`scores_volunteer_score_cached` AS `scores_volunteer_score_cached`,`s5`.`scores_volunteer_value_cached` AS `scores_volunteer_value_cached`,`s5`.`stats_attendance_attended_cached` AS `stats_attendance_attended_cached`,`s5`.`stats_attendance_cancelled_cached` AS `stats_attendance_cancelled_cached`,`s5`.`stats_attendance_duplicate_cached` AS `stats_attendance_duplicate_cached`,`s5`.`stats_attendance_indoor_wednesday_attended_cached` AS `stats_attendance_indoor_wednesday_attended_cached`,`s5`.`stats_attendance_inprogress_cached` AS `stats_attendance_inprogress_cached`,`s5`.`stats_attendance_latebail_cached` AS `stats_attendance_latebail_cached`,`s5`.`stats_attendance_noregistershow_cached` AS `stats_attendance_noregistershow_cached`,`s5`.`stats_attendance_noshow_cached` AS `stats_attendance_noshow_cached`,`s5`.`stats_attendance_outdoor_thursday_attended_cached` AS `stats_attendance_outdoor_thursday_attended_cached`,`s5`.`stats_attendance_overnight_attended_cached` AS `stats_attendance_overnight_attended_cached`,`s5`.`stats_attendance_signups_cached` AS `stats_attendance_signups_cached`,`s5`.`stats_attendance_social_attended_cached` AS `stats_attendance_social_attended_cached`,`s5`.`stats_attendance_training_attended_cached` AS `stats_attendance_training_attended_cached`,`s5`.`stats_volunteer_for_but_no_attend_cached` AS `stats_volunteer_for_but_no_attend_cached`,`s5`.`stats_volunteer_for_denominator_cached` AS `stats_volunteer_for_denominator_cached`,`s5`.`stats_volunteer_for_numerator_cached` AS `stats_volunteer_for_numerator_cached`,`s5`.`volunteer_for_but_no_volunteer` AS `volunteer_for_but_no_volunteer` from ((((`wp_member_db_shard1` `s1` left join `wp_member_db_shard2` `s2` on(`s1`.`id` = `s2`.`id`)) left join `wp_member_db_shard3` `s3` on(`s1`.`id` = `s3`.`id`)) left join `wp_member_db_shard4` `s4` on(`s1`.`id` = `s4`.`id`)) left join `wp_member_db_shard5` `s5` on(`s1`.`id` = `s5`.`id`))