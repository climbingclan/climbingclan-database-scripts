# SQL Views Explanation for The Climbing Clan

This document provides a detailed explanation of the SQL views used by The Climbing Clan, including their purpose and the columns they provide.

## 1. wp_customers_tickets_lookup

### Purpose
This view is designed to lookup customer ticket information, linking customer IDs with their corresponding ticket order items.

### Columns
- `ID`: The unique identifier for the shop order.
- `_ticket_order_item_id`: The ID of the ticket order item associated with the shop order.
- `_customer_user`: The ID of the customer who placed the order.

### Details
- The view selects from the `wp_posts` table, focusing on entries with `post_type = 'shop_order'`.
- It uses subqueries to fetch the `_ticket_order_item_id` and `_customer_user` from the `wp_postmeta` table.
- The `_ticket_order_item_id` is fetched from the post with an ID one less than the shop order ID.

## 2. wp_events_db

### Purpose
This view consolidates information about events (products) in the WooCommerce system, including pricing, stock, and event-specific details.

### Columns
- `product_id`: The unique identifier for the product (event).
- `product_name`: The name of the product (event).
- `price`: The price of the event.
- `cost`: The cost associated with the event.
- `total_sales`: The total number of sales for this event.
- `stock`: The current stock level.
- `stock_status`: The current stock status (e.g., in stock, out of stock).
- `sku`: The Stock Keeping Unit for the event.
- `wooct_time_end`: The end time of the event.
- `woocommerce_waitlist`: Waitlist information for the event.
- `event_total_places_available`: The total number of places available for the event.
- `event_signup_opens`: The date/time when sign-up for the event opens.
- `event_start_date_time`: The start date and time of the event.
- `event_for_u18s`: Indicates if the event is suitable for under 18s.
- `event_dogs_come`: Indicates if dogs are allowed at the event.

### Details
- The view joins the `wp_posts` and `wp_postmeta` tables.
- It uses a series of `MAX(CASE WHEN...)` statements to pivot the metadata into columns.
- Only entries with `post_type = 'product'` are included.

## 3. wp_clan_crags

### Purpose
This view provides comprehensive information about climbing crags, including location details, access information, and related resources.

### Columns
- `crag_id`: The unique identifier for the crag.
- `crag_name`: The name of the crag.
- `location_description_of_location`: A description of the crag's location.
- `location_trad_sport_bouldering`: The type of climbing available (trad, sport, bouldering).
- `location_region`: The region where the crag is located.
- `location_crag`: Specific crag location information.
- `location_guidebooks_suggested`: Suggested guidebooks for the crag.
- `location_photo`: A photo of the crag.
- `location_parking_location_description`: Description of parking locations.
- `location_photo_of_parking`: A photo of the parking area.
- `location_parking`: General parking information.
- `location_reach_from_parking`: Instructions on how to reach the crag from parking.
- `location_public_transport_access_information`: Information on accessing the crag via public transport.
- `location_parking_to_crag_instructions`: Detailed instructions from parking to the crag.
- `location_map_parking_to_crag`: A map showing the route from parking to the crag.
- `location_wheelchair_accessibility`: Information on wheelchair accessibility.
- `location_must_lead`: Indicates if leading is required.
- `location_must_tr`: Indicates if top-roping is required.
- `location_dogs_info`: Information about dogs at the crag.
- `location_weather_forecast_url_met_office`: Link to Met Office weather forecast.
- `location_weather_forecast_yr_no`: Link to Yr.no weather forecast.
- `location_weather_forecast_bbc`: Link to BBC weather forecast.
- `location_bmc_rad_url`: Link to BMC Regional Access Database.
- `location_ukc_url`: Link to UKClimbing page for the crag.
- `location_online_guide_url`: Link to an online guide for the crag.

### Details
- The view joins the `wp_posts` and `wp_postmeta` tables.
- It uses a series of `MAX(CASE WHEN...)` statements to pivot the metadata into columns.
- Only entries with `post_type = 'post'` are included, assuming crags are stored as posts.

These views provide The Climbing Clan with efficient ways to access and analyze data related to customers, events, and climbing locations, facilitating better management and user experience on the platform.
