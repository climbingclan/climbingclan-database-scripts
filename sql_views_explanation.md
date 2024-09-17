# SQL Views Explanation for The Climbing Clan

This document provides a detailed explanation of the SQL views used by The Climbing Clan, including their purpose and the columns they provide.

## 1. wp_orders_users_fakedb

### Purpose
This view links order IDs with customer user IDs for shop orders in the WooCommerce system.

### Columns
- `post_id`: The unique identifier for the shop order.
- `meta_value`: The customer user ID associated with the order.

### Details
- The view selects from the `wp_postmeta` table.
- It filters for entries where `meta_key = '_customer_user'`.
- It only includes orders (posts) of type 'shop_order'.
- This view helps to quickly retrieve customer information for each order.

## 2. wp_wc_order_product_augmented

### Purpose
This view provides detailed information about order items, including product details and customer information.

### Columns
- `order_item_id`: The unique identifier for the order item.
- `order_id`: The ID of the order containing this item.
- `product_id`: The ID of the product ordered.
- `variation_id`: The ID of the product variation, if applicable.
- `customer_id`: The ID of the customer who placed the order.
- `order_item_name`: The name of the ordered item.
- `_qty`: The quantity of the item ordered.
- `ticket_info`: Additional ticket information stored as order item meta.

### Details
- The view joins the `wp_wc_order_product_lookup` table with the `wp_tickets_fakedb` view.
- It uses a subquery to fetch additional ticket information from `wp_woocommerce_order_itemmeta`.
- This view is useful for analyzing order data, including product details and quantities.

## 3. wp_tickets_fakedb

### Purpose
This view consolidates various pieces of information about order items, particularly focusing on ticket-related data.

### Columns
- `order_item_id`: The unique identifier for the order item.
- `order_item_name`: The name of the ordered item.
- `_product_id`: The ID of the product.
- `_variation_id`: The ID of the product variation, if applicable.
- `_qty`: The quantity ordered.
- `_tax_class`: The tax class of the item.
- `_line_subtotal`: The subtotal for the line item.
- `_line_subtotal_tax`: The tax on the subtotal for the line item.
- `_line_total`: The total for the line item.
- `_line_tax`: The tax for the line item.
- `_line_tax_data`: Additional tax data for the line item.
- `_reduced_stock`: The amount of stock reduced by this order.
- `do-you-lead-trad`: Custom field related to trad climbing leadership.
- `trad-leader-or-clan-belayer`: Custom field specifying the role in trad climbing.

### Details
- The view selects from the `wp_woocommerce_order_items` table.
- It uses multiple subqueries to fetch various pieces of metadata from `wp_woocommerce_order_itemmeta`.
- This view is particularly useful for detailed analysis of order items, especially for ticket-based products.

These views provide The Climbing Clan with efficient ways to access and analyze data related to orders, customers, products, and ticket information. They facilitate better management of the e-commerce system and enable more detailed reporting and analysis of sales and customer behavior.

By combining information from different tables and presenting it in a structured format, these views simplify complex queries and improve the overall performance of data retrieval operations for The Climbing Clan's platform.
