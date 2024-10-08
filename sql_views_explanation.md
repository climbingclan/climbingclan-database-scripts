# SQL Views Explanation for The Climbing Clan

**IMPORTANT: All views described in this document are READ-ONLY. Do not attempt to modify these views directly with update statements - instead use the WordPress REST API.**

This document provides a detailed explanation of the SQL views used by The Climbing Clan, including their purpose and the columns they provide. The views are organized into several categories, each serving a specific purpose in managing the club's data:

1. Member Database Views:
   - wp_member_db: Comprehensive member information including cached stats and scores.

2. Order Database Views:
   - wp_order_product_customer_lookup: Combines order, product, and customer information

3. Member "Yes/No" Views - derived from checkbox options in wp_member_db
   - wp_member_db_skills: Boolean flags for various climbing skills for each member
   - wp_member_db_skillshare: Skills members are willing to teach others
   - wp_member_db_gear: Equipment details for each member

4. Stats and Scores Views:
   - wp_member_db_stats: Aggregated statistics on member participation
   - wp_member_db_scores: Performance scores based on volunteering and attendance

5. Events Views:
   - wp_events_db: Basic event information
   - wp_vw_events_db: Extended event details

6. Crags Views:
   - wp_clan_crags: Information about climbing locations

These views work together to provide a comprehensive system for managing members, events, orders, and climbing locations. They enable efficient querying and analysis of club data, supporting various aspects of The Climbing Clan's operations, from event planning to member skill development and engagement tracking.

## Table of Contents

1. [wp_member_db](#1-wp_member_db)
2. [wp_order_product_customer_lookup](#2-wp_order_product_customer_lookup)
3. [wp_member_db_skills](#3-wp_member_db_skills)
4. [wp_member_db_skillshare](#4-wp_member_db_skillshare)
5. [wp_member_db_gear](#5-wp_member_db_gear)
6. [wp_member_db_stats](#6-wp_member_db_stats)
7. [wp_member_db_scores](#7-wp_member_db_scores)
8. [wp_events_db](#8-wp_events_db)
9. [wp_vw_events_db](#9-wp_vw_events_db)
10. [wp_clan_crags](#10-wp_clan_crags)

## 1. wp_member_db

### Purpose
This view consolidates member information from various user metadata fields, providing a comprehensive overview of each member's profile, preferences, and administrative details.

### Columns
- `ID`: The unique identifier for the user.
- `user_login`: The user's login username.
- `nickname`: The user's chosen nickname.
- `first_name`: The user's first name.
- `last_name`: The user's last name.
- `billing_first_name`: First name used for billing.
- `billing_last_name`: Last name used for billing.
- `billing_email`: Email address used for billing.
- `billing_address_1`: First line of the billing address.
- `billing_address_2`: Second line of the billing address.
- `billing_city`: City for billing.
- `billing_postcode`: Postcode for billing.
- `billing_country`: Country for billing.
- `admin-emergency-contact-name`: Name of the emergency contact.
- `admin-emergency-contact-phone`: Phone number of the emergency contact.
- `admin-first-timer-question`: Response to the first-timer question.
- `admin-first-timer-indoor`: Indicates if the user is a first-timer for indoor events.
- `admin-first-timer-outdoor`: Indicates if the user is a first-timer for outdoor events.
- `admin-first-timer-social`: Indicates if the user is a first-timer for social events.
- `admin-first-timer-training`: Indicates if the user is a first-timer for training events.
- `admin-first-timer-overnight`: Indicates if the user is a first-timer for overnight events.
- `admin-covid-agreement`: User's agreement to COVID-related policies.
- `admin-no-insurance-disclaimer`: User's acknowledgment of no insurance disclaimer.
- `admin-join-the-bmc`: Indicates if the user has joined the BMC (British Mountaineering Council).
- `admin-participation-statement-one`: User's agreement to participation statement one.
- `admin-participation-statement-two`: User's agreement to participation statement two.
- `admin-covid-cautious`: Indicates if the user is COVID-cautious.
- `admin-diet-allergies-health-extra-info`: Additional information about diet, allergies, or health.
- `admin-dietary-requirements`: User's dietary requirements.
- `skills-belaying`: User's belaying skills.
- `climbing-discipline-preference`: User's preferred climbing discipline.
- `skills-sport-climbing`: User's sport climbing skills.
- `skills-trad-climbing`: User's traditional climbing skills.
- `climbing-happy-to-supervise`: Indicates if the user is willing to supervise others.
- `gear-bringing-evening-or-day-trip`: Gear the user brings for evening or day trips.
- `transport-need-lift`: Indicates if the user needs a lift.
- `transport-will-you-give-lift`: Indicates if the user is willing to give lifts.
- `transport-depature-time`: User's preferred departure time.
- `transport-leaving-location`: User's preferred leaving location.
- `climbing_outdoor_crag_location_preference`: User's preferred outdoor crag locations.
- `admin-phone-number`: User's phone number.
- `gear-quickdraws-number`: Number of quickdraws the user has.
- `gear-walking-equipment-weekend`: Walking equipment the user brings for weekend trips.
- `_order_count`: Count of orders made by the user.
- `_last_order`: Date of the user's last order.
- `paying_customer`: Indicates if the user is a paying customer.
- `last_update`: Date of the last update to the user's profile.
- `wc_last_active`: Date the user was last active on the website.
- `billing_phone`: Phone number used for billing.
- `admin-will-you-not-flake-please`: User's agreement not to flake on commitments.
- `shipping_address_1`: First line of the shipping address.
- `shipping_address_2`: Second line of the shipping address.
- `shipping_city`: City for shipping.
- `shipping_postcode`: Postcode for shipping.
- `shipping_country`: Country for shipping.
- `payment_customer_id`: Customer ID for payment processing.
- `payment_customer_email`: Email used for payment processing.
- `admin-over18`: Indicates if the user is over 18.
- `admin-dob`: User's date of birth.
- `admin-can-you-help`: User's willingness to help with various tasks.
- `climbing-walking-or-climbing-preference-weekend`: User's preference for climbing or walking on weekends.
- `admin-can-you-help-weekend`: User's willingness to help with weekend events.
- `admin-wednesday-requests-notes`: Notes for Wednesday event requests.
- `admin-outdoors-requests-notes`: Notes for outdoor event requests.
- `admin-can-you-help-outdoors`: User's willingness to help with outdoor events.
- `admin-weekend-requests-notes`: Notes for weekend event requests.
- `admin-can-you-help-organisation`: User's willingness to help with organization tasks.
- `admin-can-you-help-social`: User's willingness to help with social events.
- `admin-training-requests-notes`: Notes for training event requests.
- `admin-can-you-help-training`: User's willingness to help with training events.
- `admin-vacation-requests-notes`: Notes for vacation event requests.
- `social-menu-choice-one`: User's first choice for social event menu.
- `social-menu-choice-two`: User's second choice for social event menu.
- `social-menu-choice-three`: User's third choice for social event menu.
- `admin-social-requests-notes`: Notes for social event requests.
- `admin-can-you-help-vacation`: User's willingness to help with vacation events.
- `committee_current`: Indicates if the user is a current committee member.
- `cc_volunteer`: User's volunteer status.
- `cc_member`: User's membership status.
- `membership_leaving_date`: Date the user's membership is set to end.
- `cc_membership_cancellation_intent_date`: Date the user intends to cancel their membership.
- `admin-membership-type`: Type of membership the user has.
- `admin-club-constitution-acceptance-noted-date`: Date the user's acceptance of the club constitution was noted.
- `admin-code-of-conduct-accepted-noted-date`: Date the user's acceptance of the code of conduct was noted.
- `admin-bmc-membership-number`: User's BMC membership number.
- `cc_membership_join_date`: Date the user joined the club.
- `admin-club-constitution-acceptance`: User's acceptance of the club constitution.
- `admin-code-of-conduct-accepted`: User's acceptance of the code of conduct.
- `climbing-trad-grades`: User's traditional climbing grades.
- `climbing-sport-grades`: User's sport climbing grades.
- `climbing-trad-skills-extra`: Additional traditional climbing skills.
- `climbing-sport-skills-extra`: Additional sport climbing skills.
- `climbing-indoors-skills-passing-on`: Indoor climbing skills the user can pass on to others.
- `climbing-trad-skills-passing-on`: Traditional climbing skills the user can pass on to others.
- `climbing-sport-skills-passing-on`: Sport climbing skills the user can pass on to others.
- `climbing-bouldering-indoors-grades`: User's indoor bouldering grades.
- `climbing-bouldering-outdoors-grades`: User's outdoor bouldering grades.
- `climbing-indoors-leading-grades`: User's indoor lead climbing grades.
- `climbing-indoors-toproping-grades`: User's indoor top-roping grades.
- `admin-social-facebook-url`: User's Facebook profile URL.
- `admin-social-instagram-handle`: User's Instagram handle.
- `admin-uninsured-climbers-alert-1`: Alert for uninsured climbers (part 1).
- `admin-no-personal-insurance-disclaimer`: User's acknowledgment of no personal insurance disclaimer.
- `stats_volunteer_for_numerator_cached`: Number of events volunteered for and attended.
- `stats_volunteer_for_but_no_attend_cached`: Number of events volunteered for but not attended.
- `stats_volunteer_for_denominator_cached`: Total number of events volunteered for.
- `stats_attendance_attended_cached`: Number of events attended.
- `stats_attendance_outdoor_thursday_attended_cached`: Number of outdoor Thursday events attended.
- `stats_attendance_outdoor_day_attended_cached`: Number of outdoor day events attended.
- `stats_attendance_outdoor_saturday_attended_cached`: Number of outdoor Saturday events attended.
- `stats_attendance_indoor_wednesday_attended_cached`: Number of indoor Wednesday events attended.
- `stats_attendance_overnight_attended_cached`: Number of overnight events attended.
- `stats_attendance_training_attended_cached`: Number of training events attended.
- `stats_attendance_social_attended_cached`: Number of social events attended.
- `stats_attendance_signups_cached`: Total number of event signups.
- `stats_attendance_cancelled_cached`: Number of cancelled event attendances.
- `stats_attendance_noregistershow_cached`: Number of events attended without registration.
- `stats_attendance_noshow_cached`: Number of no-shows.
- `stats_attendance_latebail_cached`: Number of late cancellations.
- `stats_attendance_duplicate_cached`: Number of duplicate event registrations.
- `stats_attendance_inprogress_cached`: Number of in-progress event registrations.
- `stats_volunteer_for_but_no_volunteer_cached`: Number of events volunteered for but did not volunteer.
- `scores_volunteer_reliability_score_cached`: Cached volunteer reliability score.
- `scores_attendance_reliability_score_cached`: Cached attendance reliability score.
- `scores_volunteer_value_cached`: Cached volunteer value score.
- `scores_attendance_score_cached`: Cached attendance score.
- `scores_volunteer_score_cached`: Cached volunteer score.
- `scores_and_stats_cache_last_updated`: Last update timestamp for scores and stats cache.
- `cc_attendance_noted_date`: Date of the last noted attendance.
- `cc_compliance_last_date_of_climbing`: Last date the user went climbing (for compliance tracking).
- `milestones_3_badge`: Information about the user's 3-event milestone badge.
- `milestones_3_badge_marked_given_at`: Timestamp when the 3-event milestone badge was marked as given.
- `milestones_3_badge_marked_given_by`: User who marked the 3-event milestone badge as given.
- `milestones_5_band`: Information about the user's 5-event milestone band.
- `milestones_5_band_marked_given_at`: Timestamp when the 5-event milestone band was marked as given.
- `milestones_5_band_marked_given_by`: User who marked the 5-event milestone band as given.
- `cc_compliance_first_date_of_climbing`: First date the user went climbing (for compliance tracking).
- `competency_indoor_trip_director`: User's competency as an indoor trip director.
- `competency_indoor_checkin`: User's competency for indoor check-in.
- `competency_indoor_pairing`: User's competency for indoor pairing.
- `competency_indoor_floorwalker`: User's competency as an indoor floorwalker.
- `competency_indoor_skillsharer`: User's competency as an indoor skill sharer.
- `competency_indoor_announcements`: User's competency for indoor announcements.
- `competency_outdoor_trip_director`: User's competency as an outdoor trip director.
- `competency_outdoor_group_maker`: User's competency as an outdoor group maker.
- `competency_outdoor_message_maker`: User's competency as an outdoor message maker.
- `competency_outdoor_crag_coordinator`: User's competency as an outdoor crag coordinator.
- `competency_overnight_trip_director`: User's competency as an overnight trip director.
- `competency_overnight_evening_meal`: User's competency for overnight evening meals.
- `competency_overnight_climbing_coordinator`: User's competency as an overnight climbing coordinator.
- `competency_overnight_lift_coordinator`: User's competency as an overnight lift coordinator.
- `competency_overnight_breakfast_lunch`: User's competency for overnight breakfast and lunch.
- `competency_training_training_organiser`: User's competency as a training organizer.
- `competency_outdoor_skillsharer`: User's competency as an outdoor skill sharer.
- `competency_social_social_organiser`: User's competency as a social event organizer.
- `admin_new_indoor_clan_join_admin_team`: Indicates if the user has joined the new indoor clan admin team.
- `admin_parthian_clan_join_admin_team`: Indicates if the user has joined the Parthian clan admin team.
- `climbing_outdoor_leaving_postcode`: Postcode from which the user leaves for outdoor climbing.
- `climbing_outdoor_leaving_postcode_geocoded`: Geocoded version of the leaving postcode.
- `climbing_outdoor_leaving_postcode_geocoded_last_updated`: Date of last update to the geocoded postcode.
- `admin_outdoor_volunteering_team`: Indicates if the user is part of the outdoor volunteering team.
- `customer_id`: The user's customer ID in the WooCommerce system.

### Details
- This view joins data from the `wp_users` table with the `wp_usermeta` table, using MAX() functions with CASE statements to pivot the metadata into columns.
- It provides a comprehensive overview of each member's profile, including personal information, preferences, skills, and administrative details.
- The view is particularly useful for member management, event planning, and analyzing member participation and skills.
- Some fields contain JSON-encoded data, which may require further processing when queried.
- The `customer_id` is obtained through a subquery to the `wp_wc_customer_lookup` table.

This view serves as a central repository of member information, enabling efficient querying and reporting on member data across various aspects of The Climbing Clan's operations.

## 2. wp_order_product_customer_lookup

### Purpose
This view combines order, product, and customer information to provide a comprehensive overview of each order, including attendance and volunteering details.

### Columns
- `order_id`: The unique identifier for the order.
- `product_id`: The ID of the product ordered.
- `variation_id`: The ID of the product variation, if applicable.
- `order_item_name`: The name of the ordered item.
- `status`: The current status of the order.
- `cc_attendance`: The attendance status for the event.
- `cc_volunteer_attendance`: The attendance status for volunteers.
- `cc_volunteer`: The volunteering role or status.
- `cc_outdoor_location`: The outdoor location for the event, if applicable.
- `cc_location`: The general location of the event.
- `cc_indoor_location`: The indoor location for the event, if applicable.
- `memberbot_order_category`: The category of the order as determined by the memberbot.
- `customer_id`: The unique identifier for the customer.
- `user_id`: The user ID associated with the order.
- `order_created`: The date and time when the order was created.
- `cc_attendance_sim`: Simulated attendance status (for testing or forecasting).
- `cc_volunteer_attendance_sim`: Simulated volunteer attendance status.
- `cc_volunteer_sim`: Simulated volunteering role or status.
- `cc_outdoor_location_sim`: Simulated outdoor location.
- `first_name`: The first name of the customer (placeholder in this view).
- `last_name`: The last name of the customer (placeholder in this view).

### Details
- This view joins data from multiple tables including `wp_wc_order_stats`, `wp_wc_order_product_lookup`, `wp_woocommerce_order_items`, and `wp_postmeta`.
- It provides a comprehensive overview of each order, including product details, customer information, and event-specific data.
- The view is particularly useful for analyzing attendance patterns, volunteer participation, and event logistics.

## 3. wp_member_db_skills

### Purpose
This view provides a detailed breakdown of each member's climbing skills across various disciplines, including belaying, traditional (trad) climbing, and sport climbing. It transforms the text-based skill descriptions from the `wp_member_db` table into boolean (Yes/No) flags for easy querying and analysis.

### Columns
- `id`: The unique identifier for the member.
- `skills_belaying_needs_supervision`: Indicates if the member needs supervision while belaying.
- `skills_belaying_top_rope`: Indicates if the member can belay for top rope climbing.
- `skills_belaying_lead`: Indicates if the member can belay for lead climbing.
- `skills_belaying_lead_needs_supervision`: Indicates if the member needs supervision for lead belaying.
- `skills_belaying_halfropes`: Indicates if the member can belay with half ropes.
- `skills_trad_moving_together`: Indicates if the member has skills in moving together on traditional routes.
- `skills_trad_hauling`: Indicates if the member has skills in hauling systems.
- `skills_trad_big_wall`: Indicates if the member has big wall climbing skills.
- `skills_trad_multipitch_anchors`: Indicates if the member can set up multipitch anchors.
- `skills_trad_prussiking`: Indicates if the member has prussiking skills.
- `skills_trad_belay_escape`: Indicates if the member can perform a belay escape.
- `skills_trad_retrievable_abseils`: Indicates if the member can set up retrievable abseils.
- `skills_trad_abseiling`: Indicates if the member has abseiling skills.
- `skills_trad_toprope`: Indicates if the member can set up top ropes on traditional routes.
- `skills_trad_seconding`: Indicates if the member can second on traditional routes.
- `skills_trad_seconding_needs_supervision`: Indicates if the member needs supervision when seconding on traditional routes.
- `skills_trad_leading_needs_supervision`: Indicates if the member needs supervision when leading on traditional routes.
- `skills_trad_leading`: Indicates if the member can lead on traditional routes.
- `skills_sport_stripping`: Indicates if the member can strip sport routes.
- `skills_sport_seconding_outside`: Indicates if the member can second on outdoor sport routes.
- `skills_sport_seconding_inside`: Indicates if the member can second on indoor sport routes.
- `skills_sport_leading_inside`: Indicates if the member can lead on indoor sport routes.
- `skills_sport_leading_outside`: Indicates if the member can lead on outdoor sport routes.
- `skills_sport_seconding_needs_supervision`: Indicates if the member needs supervision when seconding on sport routes.
- `skills_sport_leading_multipitch_anchors`: Indicates if the member can set up multipitch anchors on sport routes.
- `skills_sport_setting_up_top_rope`: Indicates if the member can set up top ropes on sport routes.
- `skills_sport_leading_clipstick`: Indicates if the member can use a clipstick for leading.
- `skills_sport_leading_multipitch_abseiling`: Indicates if the member can abseil on multipitch sport routes.

### Details
- The view uses CASE statements to check for specific skills in the `skills-belaying`, `climbing-trad-skills-extra`, `skills-trad-climbing`, `climbing-sport-skills-extra`, and `skills-sport-climbing` fields of the `wp_member_db` table.
- It returns '✅' if the skill is present, or 'No' if it's not.
- The view covers a wide range of climbing skills across different disciplines (traditional, sport, indoor, outdoor) and techniques (belaying, leading, seconding, etc.).
- This comprehensive skill breakdown is invaluable for pairing members, planning events, ensuring safety, and tracking member progression.

## 4. wp_member_db_skillshare

### Purpose
This view provides a detailed breakdown of the climbing skills that members are willing and able to share or teach to others. It covers indoor climbing, traditional (trad) climbing, and sport climbing skills.

### Columns
- `id`: The unique identifier for the member.

Indoor Climbing Skills:
- `skillshare_climbing_indoors_first_experience`: Can introduce first-time climbers.
- `skillshare_climbing_indoors_top_rope_belaying`: Can teach top rope belaying.
- `skillshare_climbing_indoors_lead_belaying`: Can teach lead belaying.
- `skillshare_climbing_indoors_seconding_leads`: Can teach seconding for lead climbs.
- `skillshare_climbing_indoors_lead_climbing`: Can teach lead climbing.
- `skillshare_climbing_indoors_lead_falls`: Can teach how to take lead falls.
- `skillshare_climbing_indoors_autobelay`: Can teach how to use auto belays.
- `skillshare_climbing_indoors_bouldering_area`: Can introduce people to indoor bouldering.
- `skillshare_climbing_indoors_top_rope_trainer_trainer`: Can train others to teach top rope belaying.
- `skillshare_climbing_indoors_lead_belaying_trainer_trainer`: Can train others to teach lead belaying.
- `skillshare_climbing_indoors_lead_climbing_trainer_trainer`: Can train others to teach lead climbing.

Traditional Climbing Skills:
- `skillshare_climbing_trad_seconding`: Can teach seconding on trad routes.
- `skillshare_climbing_trad_leading_trad`: Can teach leading trad routes.
- `skillshare_climbing_trad_setting_up_top_rope`: Can teach setting up top ropes on trad routes.
- `skillshare_climbing_trad_belaying_half_ropes`: Can teach belaying with half ropes.
- `skillshare_climbing_trad_abseiling`: Can teach abseiling.
- `skillshare_climbing_trad_retrievable_abseils`: Can teach setting up retrievable abseils.
- `skillshare_climbing_trad_multipitch_anchors`: Can teach setting up multipitch anchors.
- `skillshare_climbing_trad_belay_escape`: Can teach belay escape techniques.
- `skillshare_climbing_trad_prussiking_upwards`: Can teach prussiking upwards.
- `skillshare_climbing_trad_hauling_systems`: Can teach setting up hauling systems.
- `skillshare_climbing_trad_moving_together`: Can teach moving together on alpine-style routes.
- `skillshare_climbing_trad_big_walling`: Can teach big wall climbing techniques.

Sport Climbing Skills:
- `skillshare_climbing_sport_seconding_outside`: Can teach seconding on outdoor sport routes.
- `skillshare_climbing_sport_lead_climbing`: Can teach sport lead climbing.
- `skillshare_climbing_sport_stripping_route`: Can teach how to strip a sport route.
- `skillshare_climbing_sport_setting_up_top_rope`: Can teach setting up top ropes on sport routes.
- `skillshare_climbing_sport_multipitch_anchors`: Can teach setting up multipitch anchors on sport routes.
- `skillshare_climbing_sport_abseiling_multipitch_routes`: Can teach abseiling off multipitch sport routes.

### Details
- The view uses CASE statements to check for specific skills in the `climbing-indoors-skills-passing-on`, `climbing-trad-skills-passing-on`, and `climbing-sport-skills-passing-on` fields of the `wp_member_db` table.
- It returns '✅' if the member is willing to share/teach the skill, or 'No' if not.
- This view is particularly useful for:
  1. Identifying potential instructors or mentors for specific skills.
  2. Organizing skill-sharing sessions or workshops.
  3. Pairing less experienced members with those who can teach them new skills.
  4. Planning training events based on the available skill-sharing resources within the club.

## 5. wp_member_db_gear

### Purpose
This view provides a detailed breakdown of the gear that members bring to different types of climbing events. It helps organizers and other members understand what equipment is available for various activities.

### Columns
- `id`: The unique identifier for the member.
- `gear_bringing_rope`: Indicates if the member brings a rope ('✅' for yes, 'No' for no).
- `gear_bringing_rack`: Indicates if the member brings a rack.
- `gear_bringing_personal_gear`: Indicates if the member brings personal gear.
- `gear_bringing_quickdraws`: Indicates if the member brings quickdraws.
- `gear_bringing_guidebook`: Indicates if the member brings a guidebook.
- `gear_bringing_firstaidkit`: Indicates if the member brings a first aid kit.
- `gear_bringing_waterproof_jacket`: Indicates if the member brings a waterproof jacket.
- `gear_bringing_waterproof_trousers`: Indicates if the member brings waterproof trousers.
- `gear_bringing_boots`: Indicates if the member brings boots.
- `gear_bringing_ice_axe`: Indicates if the member brings an ice axe.
- `gear_bringing_crampons`: Indicates if the member brings crampons.
- `gear_bringing_navigation`: Indicates if the member brings navigation equipment.

### Details
- This view uses data from the `wp_member_db` table, specifically the `gear-bringing-evening-or-day-trip` and `gear-walking-equipment-weekend` fields.
- It uses CASE statements to check for specific gear items in these fields and returns '✅' if the item is present, or 'No' if it's not.
- The view is particularly useful for event planning, ensuring that necessary equipment is available for different types of climbing activities.
- It can help identify members who consistently bring certain types of gear, which can be useful for pairing members or assigning roles during events.

## 6. wp_member_db_stats

### Purpose
This view aggregates various statistics about each member's participation in The Climbing Clan's activities. It provides a comprehensive overview of a member's involvement in different types of events and their volunteering history.

### Columns
- `user_id`: The unique identifier for each member.
- `volunteer_for_numerator`: Count of events where the member successfully volunteered and attended.
- `volunteer_for_but_no_attend`: Count of events where the member volunteered but didn't attend.
- `volunteer_for_but_no_volunteer`: Count of events where the member was supposed to volunteer but didn't.
- `volunteer_for_and_cancel_but_did_volunteer`: Count of events where the member cancelled attendance but still volunteered.
- `volunteer_for_denominator`: Total count of events the member signed up to volunteer for.
- `attendance_attended`: Total count of events the member attended.
- `attendance_outdoor_thursday_attended`: Count of outdoor Thursday events attended.
- `attendance_outdoor_saturday_attended`: Count of outdoor Saturday events attended.
- `attendance_outdoor_day_attended`: Count of outdoor day events attended.
- `attendance_indoor_wednesday_attended`: Count of indoor Wednesday events attended.
- `attendance_overnight_attended`: Count of overnight events attended.
- `attendance_training_attended`: Count of training events attended.
- Various specific training event attendance counts (e.g., indoor lead training, top rope training, etc.)
- `attendance_first_aid_attended`: Count of first aid training events attended.
- `attendance_social_attended`: Count of social events attended.
- `attendance_signups`: Total count of event signups.
- `attendance_cancelled`: Count of cancelled event attendances.
- `attendance_noregistershow`: Count of events attended without registration.
- `attendance_noshow`: Count of no-shows.
- `attendance_weather_cancel`: Count of weather-related cancellations.
- `attendance_clan_cancel`: Count of events cancelled by the clan.
- `attendance_latebail`: Count of late cancellations.
- `attendance_duplicate`: Count of duplicate signups.
- `attendance_inprogress`: Count of in-progress event registrations.

### Details
- The view joins data from the `wp_member_db` and `wp_order_product_customer_lookup` tables.
- It uses a series of COUNT and CASE statements to aggregate different types of event participation and volunteering activities.
- The statistics are grouped by user_id, providing a comprehensive summary for each member.

This view is essential for The Climbing Clan's membership management and event planning:
1. It allows administrators to track individual member participation across various event types.
2. Helps identify members who are particularly active in specific areas (e.g., outdoor events, training sessions).
3. Provides insights into volunteering patterns and reliability.
4. Assists in identifying potential issues (e.g., frequent no-shows or late cancellations).
5. Supports data-driven decision making for event planning and member engagement strategies.

## 7. wp_member_db_scores

### Purpose
This view calculates various performance scores for each member based on their volunteering and attendance records. It provides a quantitative measure of a member's reliability, engagement, and overall contribution to The Climbing Clan's activities.

### Columns
- `user_id`: The unique identifier for each member.
- `volunteer_reliability_score`: A percentage score indicating how reliable a member is in fulfilling their volunteering commitments.
- `attendance_reliability_score`: A percentage score indicating how reliable a member is in attending events they've signed up for.
- `volunteer_receptiveness`: A percentage score indicating how often a member volunteers when opportunities are available.
- `volunteer_score`: Same as `volunteer_receptiveness`, possibly redundant.
- `volunteer_value`: A weighted score that takes into account the number of times a member has volunteered and their reliability in doing so.
- `volunteer_score_old`: An older version of the volunteer score calculation, kept for reference or comparison.
- `attendance_score`: A comprehensive score that rewards attendance and penalizes various forms of non-attendance.

### Details
- The view uses data from the `wp_member_db` table, which likely contains aggregated statistics about each member's activities.
- Scores are calculated using various formulas that weight different aspects of a member's participation:
  * `volunteer_reliability_score` = (successful volunteering / total volunteering opportunities) * 100
  * `attendance_reliability_score` = (attended events / (attended + late cancellations + no-shows)) * 100
  * `volunteer_receptiveness` = (successful volunteering / total volunteer signups) * 100
  * `volunteer_value` = A complex calculation that rewards consistent volunteering and penalizes missed volunteer opportunities
  * `attendance_score` = 100 + bonuses for attendance - penalties for various types of non-attendance

This view is crucial for The Climbing Clan's member management system, allowing administrators to:
1. Identify and reward highly engaged and reliable members
2. Spot members who might need encouragement or support to improve their participation
3. Make data-driven decisions about member roles and responsibilities
4. Track the overall health and engagement of the club's membership over time

## 8. wp_events_db

### Purpose
This view aggregates information about climbing events, including product details and associated metadata.

### Columns
- `product_id`: The unique identifier for the event product.
- `product_name`: The name of the event product.
- `price`: The price of the event.
- `cost`: The cost associated with the event.
- `total_sales`: Total sales for the event.
- `stock`: Current stock level.
- `stock_status`: Status of the stock (e.g., in stock, out of stock).
- `sku`: Stock Keeping Unit for the event.
- `wooct_time_end`: End time for the event.
- `woocommerce_waitlist`: Waitlist information.
- `event_total_places_available`: Total number of places available for the event.
- `event_signup_opens`: Date and time when sign-up opens.
- `event_start_date_time`: Start date and time of the event.
- `event_for_u18s`: Indicates if the event is suitable for under 18s.
- `event_dogs_come`: Indicates if dogs are allowed at the event.

### Details
- The view selects from the `wp_posts` and `wp_postmeta` tables.
- It uses MAX() functions with CASE statements to pivot the metadata into columns.
- This view is useful for analyzing event data, including pricing, availability, and specific event characteristics.

## 9. wp_vw_events_db

### Purpose
This view provides an extended version of the events database, including additional metadata and category information.

### Columns
- All columns from `wp_events_db` (as listed above).
- `report_details_0_report_author`: Author of the event report.
- `report_details_0_report_location`: Location mentioned in the event report.
- `report_details_0_report_content`: Content of the event report.
- `report_details_0_report_photos`: Photos associated with the event report.
- `report_details`: Full report details.
- `short_description`: Brief description of the event.
- `membership_required`: Indicates if membership is required for participation.
- `event_how_it_works`: Explanation of how the event works.
- `event_how_we_get_these`: Information on how these events are organized.
- `event_when_do_we_meet`: Meeting time information.
- `event_how_difficult_will_it_be`: Difficulty level of the event.
- `event_volunteering_how_does_it_work`: Explanation of how volunteering works for the event.
- `trip_faq_19_trip_faq_title`: Title of FAQ item 19.
- `trip_faq_19_trip_faq_answer`: Answer to FAQ item 19.
- `trip_faq_20_trip_faq_title`: Title of FAQ item 20.
- `trip_faq_20_trip_faq_answer`: Answer to FAQ item 20.
- `event_how_does_this_work`: General explanation of how the event works.
- `event_description`: Detailed description of the event.
- `trip_faq_21_trip_faq_title`: Title of FAQ item 21.
- `trip_faq_21_trip_faq_answer`: Answer to FAQ item 21.
- `event_next_week`: Information about the next week's event.
- `event_location_0_venue_name`: Name of the primary venue.
- `event_location_0_venue_url`: URL of the primary venue.
- `event_location_1_venue_name`: Name of the secondary venue (if applicable).
- `event_location_1_venue_url`: URL of the secondary venue (if applicable).
- `event_location_old`: Previous location information (if changed).
- `event_type`: Type of event.
- `overnight_plans`: Plans for overnight events.
- `hut_photo`: Photo of the hut (for overnight events).
- `hut_facilities_description`: Description of hut facilities.
- `hut_name`: Name of the hut.
- `hut_google_maps_location`: Google Maps location of the hut.
- `trip_faq_11_trip_faq_title`: Title of FAQ item 11.
- `trip_faq_11_trip_faq_answer`: Answer to FAQ item 11.
- `trip_faq_12_trip_faq_title`: Title of FAQ item 12.
- `trip_faq_12_trip_faq_answer`: Answer to FAQ item 12.
- `event_paying_for`: What the event fee covers.
- `event_start_time`: Start time of the event.
- `session_start_time`: Start time of the session.
- `session_end_time`: End time of the session.
- `who_running_event`: Information about who is running the event.
- `session_will_cover`: What the session will cover.
- `event_start_date`: Start date of the event.
- `event_finish_date`: Finish date of the event.
- `event_possible_location`: Possible location for the event.
- `event_location`: Confirmed location of the event.
- `primary_category`: The primary category of the event.

### Details
- The view builds upon the `wp_events_db` view, joining with `wp_term_relationships`, `wp_term_taxonomy`, and `wp_terms` tables.
- It includes more detailed event information and categorization.
- This view is particularly useful for comprehensive event reporting and analysis.

## 10. wp_clan_crags

### Purpose
This view consolidates information about climbing crags, including their details and associated metadata.

### Columns
- `crag_id`: The unique identifier for the crag.
- `crag_name`: The name of the crag.
- Various metadata fields related to the crag, such as location description, climbing types, region, guidebooks, photos, parking information, accessibility details, and weather forecast links.

### Details
- The view selects from the `wp_posts` and `wp_postmeta` tables.
- It uses a series of MAX() functions with CASE statements to pivot the metadata into columns.
- This view provides a comprehensive overview of each crag, making it easier to query and display crag information.
