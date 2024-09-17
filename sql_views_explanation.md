# SQL Views Explanation for The Climbing Clan

**IMPORTANT: All views described in this document are READ-ONLY. Do not attempt to modify these views directly.**

This document provides a detailed explanation of the SQL views used by The Climbing Clan, including their purpose and the columns they provide.

## 1. wp_clan_crags

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

## 2. wp_events_db

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

## 3. wp_vw_events_db

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

## 4. wp_vw_order_details

### Purpose
This view combines order information with customer details for a comprehensive overview of each order.

### Columns
- `order_id`: The unique identifier for the order.
- `first_name`: The customer's first name.
- `last_name`: The customer's last name.
- `order_item_name`: The name of the ordered item.
- `order_created`: The date and time when the order was created.

### Details
- The view joins the `wp_order_product_customer_lookup` table with the `wp_member_db` view.
- It provides a quick way to access essential order information along with customer details.
- This view is useful for order management and customer service purposes.

These views provide The Climbing Clan with efficient ways to access and analyze data related to crags, events, orders, and customer information. They facilitate better management of the climbing locations, event planning, and order processing, enabling more detailed reporting and analysis across various aspects of the organization's operations.

By combining information from different tables and presenting it in a structured format, these views simplify complex queries and improve the overall performance of data retrieval operations for The Climbing Clan's platform.

## 6. wp_member_db

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
- Various `stats_*` fields: Cached statistics about the user's participation and volunteering.
- Various `scores_*` fields: Cached scores for the user's participation and volunteering.
- `cc_attendance_noted_date`: Date of the last noted attendance.
- `cc_compliance_last_date_of_climbing`: Last date the user went climbing (for compliance tracking).
- `milestones_3_badge`: Information about the user's 3-event milestone badge.
- `milestones_5_band`: Information about the user's 5-event milestone band.
- `cc_compliance_first_date_of_climbing`: First date the user went climbing (for compliance tracking).
- Various `competency_*` fields: User's competencies in different areas of climbing and event organization.
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

## 5. wp_order_product_customer_lookup

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
