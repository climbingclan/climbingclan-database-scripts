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
- Various metadata fields related to the event, such as price, cost, total sales, stock information, event dates, and specific event details.

### Details
- The view selects from the `wp_posts` and `wp_postmeta` tables.
- It uses MAX() functions with CASE statements to pivot the metadata into columns.
- This view is useful for analyzing event data, including pricing, availability, and specific event characteristics.

## 3. wp_vw_events_db

### Purpose
This view provides an extended version of the events database, including additional metadata and category information.

### Columns
- All columns from `wp_events_db`.
- Additional metadata fields such as report details, event descriptions, FAQ information, and location details.
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
