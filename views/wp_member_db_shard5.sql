CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `wp_member_db_shard5` AS select `u`.`ID` AS `id`,`um_stats_volunteer_for_numerator_cached`.`meta_value` AS `stats_volunteer_for_numerator_cached`,`um_stats_volunteer_for_but_no_attend_cached`.`meta_value` AS `stats_volunteer_for_but_no_attend_cached`,`um_volunteer_for_but_no_volunteer`.`meta_value` AS `volunteer_for_but_no_volunteer`,`um_stats_volunteer_for_denominator_cached`.`meta_value` AS `stats_volunteer_for_denominator_cached`,`um_stats_attendance_attended_cached`.`meta_value` AS `stats_attendance_attended_cached`,`um_stats_attendance_outdoor_thursday_attended_cached`.`meta_value` AS `stats_attendance_outdoor_thursday_attended_cached`,`um_stats_attendance_indoor_wednesday_attended_cached`.`meta_value` AS `stats_attendance_indoor_wednesday_attended_cached`,`um_stats_attendance_overnight_attended_cached`.`meta_value` AS `stats_attendance_overnight_attended_cached`,`um_stats_attendance_training_attended_cached`.`meta_value` AS `stats_attendance_training_attended_cached`,`um_stats_attendance_social_attended_cached`.`meta_value` AS `stats_attendance_social_attended_cached`,`um_stats_attendance_signups_cached`.`meta_value` AS `stats_attendance_signups_cached`,`um_stats_attendance_cancelled_cached`.`meta_value` AS `stats_attendance_cancelled_cached`,`um_stats_attendance_noregistershow_cached`.`meta_value` AS `stats_attendance_noregistershow_cached`,`um_stats_attendance_noshow_cached`.`meta_value` AS `stats_attendance_noshow_cached`,`um_stats_attendance_latebail_cached`.`meta_value` AS `stats_attendance_latebail_cached`,`um_stats_attendance_duplicate_cached`.`meta_value` AS `stats_attendance_duplicate_cached`,`um_stats_attendance_inprogress_cached`.`meta_value` AS `stats_attendance_inprogress_cached`,`um_scores_volunteer_reliability_score_cached`.`meta_value` AS `scores_volunteer_reliability_score_cached`,`um_scores_attendance_reliability_score_cached`.`meta_value` AS `scores_attendance_reliability_score_cached`,`um_scores_volunteer_value_cached`.`meta_value` AS `scores_volunteer_value_cached`,`um_scores_attendance_score_cached`.`meta_value` AS `scores_attendance_score_cached`,`um_scores_volunteer_score_cached`.`meta_value` AS `scores_volunteer_score_cached`,`um_scores_and_stats_cache_last_updated`.`meta_value` AS `scores_and_stats_cache_last_updated`,`um_cc_attendance_noted_date`.`meta_value` AS `cc_attendance_noted_date`,`um_cc_compliance_last_date_of_climbing`.`meta_value` AS `cc_compliance_last_date_of_climbing`,`um_milestones_3_badge`.`meta_value` AS `milestones_3_badge`,`um_milestones_3_badge_marked_given_at`.`meta_value` AS `milestones_3_badge_marked_given_at`,`um_milestones_3_badge_marked_given_by`.`meta_value` AS `milestones_3_badge_marked_given_by`,`um_cc_compliance_first_date_of_climbing`.`meta_value` AS `cc_compliance_first_date_of_climbing`,`um_competency_indoor_trip_director`.`meta_value` AS `competency_indoor_trip_director`,`um_competency_indoor_pairing`.`meta_value` AS `competency_indoor_pairing`,`um_competency_indoor_floorwalker`.`meta_value` AS `competency_indoor_floorwalker`,`um_competency_indoor_announcements`.`meta_value` AS `competency_indoor_announcements`,`um_competency_checkin`.`meta_value` AS `competency_checkin` from ((((((((((((((((((((((((((((((((((`wp_users` `u` left join `wp_usermeta` `um_stats_volunteer_for_numerator_cached` on(`u`.`ID` = `um_stats_volunteer_for_numerator_cached`.`user_id` and `um_stats_volunteer_for_numerator_cached`.`meta_key` = 'stats_volunteer_for_numerator_cached')) left join `wp_usermeta` `um_stats_volunteer_for_but_no_attend_cached` on(`u`.`ID` = `um_stats_volunteer_for_but_no_attend_cached`.`user_id` and `um_stats_volunteer_for_but_no_attend_cached`.`meta_key` = 'stats_volunteer_for_but_no_attend_cached')) left join `wp_usermeta` `um_volunteer_for_but_no_volunteer` on(`u`.`ID` = `um_volunteer_for_but_no_volunteer`.`user_id` and `um_volunteer_for_but_no_volunteer`.`meta_key` = 'volunteer_for_but_no_volunteer')) left join `wp_usermeta` `um_stats_volunteer_for_denominator_cached` on(`u`.`ID` = `um_stats_volunteer_for_denominator_cached`.`user_id` and `um_stats_volunteer_for_denominator_cached`.`meta_key` = 'stats_volunteer_for_denominator_cached')) left join `wp_usermeta` `um_stats_attendance_attended_cached` on(`u`.`ID` = `um_stats_attendance_attended_cached`.`user_id` and `um_stats_attendance_attended_cached`.`meta_key` = 'stats_attendance_attended_cached')) left join `wp_usermeta` `um_stats_attendance_outdoor_thursday_attended_cached` on(`u`.`ID` = `um_stats_attendance_outdoor_thursday_attended_cached`.`user_id` and `um_stats_attendance_outdoor_thursday_attended_cached`.`meta_key` = 'stats_attendance_outdoor_thursday_attended_cached')) left join `wp_usermeta` `um_stats_attendance_indoor_wednesday_attended_cached` on(`u`.`ID` = `um_stats_attendance_indoor_wednesday_attended_cached`.`user_id` and `um_stats_attendance_indoor_wednesday_attended_cached`.`meta_key` = 'stats_attendance_indoor_wednesday_attended_cached')) left join `wp_usermeta` `um_stats_attendance_overnight_attended_cached` on(`u`.`ID` = `um_stats_attendance_overnight_attended_cached`.`user_id` and `um_stats_attendance_overnight_attended_cached`.`meta_key` = 'stats_attendance_overnight_attended_cached')) left join `wp_usermeta` `um_stats_attendance_training_attended_cached` on(`u`.`ID` = `um_stats_attendance_training_attended_cached`.`user_id` and `um_stats_attendance_training_attended_cached`.`meta_key` = 'stats_attendance_training_attended_cached')) left join `wp_usermeta` `um_stats_attendance_social_attended_cached` on(`u`.`ID` = `um_stats_attendance_social_attended_cached`.`user_id` and `um_stats_attendance_social_attended_cached`.`meta_key` = 'stats_attendance_social_attended_cached')) left join `wp_usermeta` `um_stats_attendance_signups_cached` on(`u`.`ID` = `um_stats_attendance_signups_cached`.`user_id` and `um_stats_attendance_signups_cached`.`meta_key` = 'stats_attendance_signups_cached')) left join `wp_usermeta` `um_stats_attendance_cancelled_cached` on(`u`.`ID` = `um_stats_attendance_cancelled_cached`.`user_id` and `um_stats_attendance_cancelled_cached`.`meta_key` = 'stats_attendance_cancelled_cached')) left join `wp_usermeta` `um_stats_attendance_noregistershow_cached` on(`u`.`ID` = `um_stats_attendance_noregistershow_cached`.`user_id` and `um_stats_attendance_noregistershow_cached`.`meta_key` = 'stats_attendance_noregistershow_cached')) left join `wp_usermeta` `um_stats_attendance_noshow_cached` on(`u`.`ID` = `um_stats_attendance_noshow_cached`.`user_id` and `um_stats_attendance_noshow_cached`.`meta_key` = 'stats_attendance_noshow_cached')) left join `wp_usermeta` `um_stats_attendance_latebail_cached` on(`u`.`ID` = `um_stats_attendance_latebail_cached`.`user_id` and `um_stats_attendance_latebail_cached`.`meta_key` = 'stats_attendance_latebail_cached')) left join `wp_usermeta` `um_stats_attendance_duplicate_cached` on(`u`.`ID` = `um_stats_attendance_duplicate_cached`.`user_id` and `um_stats_attendance_duplicate_cached`.`meta_key` = 'stats_attendance_duplicate_cached')) left join `wp_usermeta` `um_stats_attendance_inprogress_cached` on(`u`.`ID` = `um_stats_attendance_inprogress_cached`.`user_id` and `um_stats_attendance_inprogress_cached`.`meta_key` = 'stats_attendance_inprogress_cached')) left join `wp_usermeta` `um_scores_volunteer_reliability_score_cached` on(`u`.`ID` = `um_scores_volunteer_reliability_score_cached`.`user_id` and `um_scores_volunteer_reliability_score_cached`.`meta_key` = 'scores_volunteer_reliability_score_cached')) left join `wp_usermeta` `um_scores_attendance_reliability_score_cached` on(`u`.`ID` = `um_scores_attendance_reliability_score_cached`.`user_id` and `um_scores_attendance_reliability_score_cached`.`meta_key` = 'scores_attendance_reliability_score_cached')) left join `wp_usermeta` `um_scores_volunteer_value_cached` on(`u`.`ID` = `um_scores_volunteer_value_cached`.`user_id` and `um_scores_volunteer_value_cached`.`meta_key` = 'scores_volunteer_value_cached')) left join `wp_usermeta` `um_scores_attendance_score_cached` on(`u`.`ID` = `um_scores_attendance_score_cached`.`user_id` and `um_scores_attendance_score_cached`.`meta_key` = 'scores_attendance_score_cached')) left join `wp_usermeta` `um_scores_volunteer_score_cached` on(`u`.`ID` = `um_scores_volunteer_score_cached`.`user_id` and `um_scores_volunteer_score_cached`.`meta_key` = 'scores_volunteer_score_cached')) left join `wp_usermeta` `um_scores_and_stats_cache_last_updated` on(`u`.`ID` = `um_scores_and_stats_cache_last_updated`.`user_id` and `um_scores_and_stats_cache_last_updated`.`meta_key` = 'scores_and_stats_cache_last_updated')) left join `wp_usermeta` `um_cc_attendance_noted_date` on(`u`.`ID` = `um_cc_attendance_noted_date`.`user_id` and `um_cc_attendance_noted_date`.`meta_key` = 'cc_attendance_noted_date')) left join `wp_usermeta` `um_cc_compliance_last_date_of_climbing` on(`u`.`ID` = `um_cc_compliance_last_date_of_climbing`.`user_id` and `um_cc_compliance_last_date_of_climbing`.`meta_key` = 'cc_compliance_last_date_of_climbing')) left join `wp_usermeta` `um_milestones_3_badge` on(`u`.`ID` = `um_milestones_3_badge`.`user_id` and `um_milestones_3_badge`.`meta_key` = 'milestones_3_badge')) left join `wp_usermeta` `um_milestones_3_badge_marked_given_at` on(`u`.`ID` = `um_milestones_3_badge_marked_given_at`.`user_id` and `um_milestones_3_badge_marked_given_at`.`meta_key` = 'milestones_3_badge_marked_given_at')) left join `wp_usermeta` `um_milestones_3_badge_marked_given_by` on(`u`.`ID` = `um_milestones_3_badge_marked_given_by`.`user_id` and `um_milestones_3_badge_marked_given_by`.`meta_key` = 'milestones_3_badge_marked_given_by')) left join `wp_usermeta` `um_cc_compliance_first_date_of_climbing` on(`u`.`ID` = `um_cc_compliance_first_date_of_climbing`.`user_id` and `um_cc_compliance_first_date_of_climbing`.`meta_key` = 'cc_compliance_first_date_of_climbing')) left join `wp_usermeta` `um_competency_indoor_trip_director` on(`u`.`ID` = `um_competency_indoor_trip_director`.`user_id` and `um_competency_indoor_trip_director`.`meta_key` = 'competency_indoor_trip_director')) left join `wp_usermeta` `um_competency_indoor_pairing` on(`u`.`ID` = `um_competency_indoor_pairing`.`user_id` and `um_competency_indoor_pairing`.`meta_key` = 'competency_indoor_pairing')) left join `wp_usermeta` `um_competency_indoor_floorwalker` on(`u`.`ID` = `um_competency_indoor_floorwalker`.`user_id` and `um_competency_indoor_floorwalker`.`meta_key` = 'competency_indoor_floorwalker')) left join `wp_usermeta` `um_competency_indoor_announcements` on(`u`.`ID` = `um_competency_indoor_announcements`.`user_id` and `um_competency_indoor_announcements`.`meta_key` = 'competency_indoor_announcements')) left join `wp_usermeta` `um_competency_checkin` on(`u`.`ID` = `um_competency_checkin`.`user_id` and `um_competency_checkin`.`meta_key` = 'competency_checkin'))