CREATE ALGORITHM = UNDEFINED DEFINER = `root` @`%` SQL SECURITY DEFINER VIEW `wp_member_db_scores` AS
select
  `u`.`ID` AS `user_id`,
  floor(
    `u`.`stats_volunteer_for_numerator_cached` / (
      `u`.`stats_volunteer_for_numerator_cached` + `u`.`stats_volunteer_for_but_no_attend_cached` + `u`.`stats_volunteer_for_but_no_volunteer_cached`
    ) * 100
  ) AS `volunteer_reliability_score`,
  floor(
    `u`.`stats_attendance_attended_cached` / (
      `u`.`stats_attendance_attended_cached` + `u`.`stats_attendance_latebail_cached` + `u`.`stats_attendance_noshow_cached`
    ) * 100
  ) AS `attendance_reliability_score`,
  floor(
    `u`.`stats_volunteer_for_numerator_cached` / `u`.`stats_volunteer_for_denominator_cached` * 100
  ) AS `volunteer_receptiveness`,
  floor(
    `u`.`stats_volunteer_for_numerator_cached` / `u`.`stats_volunteer_for_denominator_cached` * 100
  ) AS `volunteer_score`,
  floor(
    (
      100 * (
        `u`.`stats_volunteer_for_numerator_cached` / `u`.`stats_volunteer_for_denominator_cached`
      ) - 2 * `u`.`stats_volunteer_for_but_no_attend_cached`
    ) * `u`.`stats_volunteer_for_denominator_cached`
  ) AS `volunteer_value`,
  floor(
    100 * (
      `u`.`stats_volunteer_for_numerator_cached` / `u`.`stats_volunteer_for_denominator_cached`
    ) - 2 * `u`.`stats_volunteer_for_but_no_attend_cached`
  ) AS `volunteer_score_old`,
  floor(
    100 - 1 * `u`.`stats_attendance_cancelled_cached` - 7 * `u`.`stats_attendance_noshow_cached` - 3 * `u`.`stats_attendance_latebail_cached` + 2 * `u`.`stats_attendance_noregistershow_cached` + 5 * `u`.`stats_attendance_attended_cached`
  ) AS `attendance_score`
from
  `wp_member_db` `u`