# SQL Views Explanation for The Climbing Clan

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
