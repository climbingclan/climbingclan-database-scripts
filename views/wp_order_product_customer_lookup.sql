CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_order_product_customer_lookup` AS 
SELECT 
    `a`.`order_id` AS `order_id`,
    `c`.`product_id` AS `product_id`,
    `c`.`variation_id` AS `variation_id`,
    `o`.`order_item_name` AS `order_item_name`,
    `a`.`status` AS `status`,
    (SELECT DISTINCT `wp_postmeta`.`meta_value` FROM `wp_postmeta` WHERE `wp_postmeta`.`post_id` = `a`.`order_id` AND `wp_postmeta`.`meta_key` = 'cc_attendance' LIMIT 1) AS `cc_attendance`,
    (SELECT DISTINCT `wp_postmeta`.`meta_value` FROM `wp_postmeta` WHERE `wp_postmeta`.`post_id` = `a`.`order_id` AND `wp_postmeta`.`meta_key` = 'cc_volunteer_attendance' LIMIT 1) AS `cc_volunteer_attendance`,
    (SELECT DISTINCT `wp_postmeta`.`meta_value` FROM `wp_postmeta` WHERE `wp_postmeta`.`post_id` = `a`.`order_id` AND `wp_postmeta`.`meta_key` = 'cc_volunteer' LIMIT 1) AS `cc_volunteer`,
    (SELECT DISTINCT `wp_postmeta`.`meta_value` FROM `wp_postmeta` WHERE `wp_postmeta`.`post_id` = `a`.`order_id` AND `wp_postmeta`.`meta_key` = 'cc_outdoor_location' LIMIT 1) AS `cc_outdoor_location`,
    (SELECT DISTINCT `wp_postmeta`.`meta_value` FROM `wp_postmeta` WHERE `wp_postmeta`.`post_id` = `a`.`order_id` AND `wp_postmeta`.`meta_key` = 'cc_location' LIMIT 1) AS `cc_location`,
    (SELECT DISTINCT `wp_postmeta`.`meta_value` FROM `wp_postmeta` WHERE `wp_postmeta`.`post_id` = `a`.`order_id` AND `wp_postmeta`.`meta_key` = 'cc_indoor_location' LIMIT 1) AS `cc_indoor_location`,
    (SELECT DISTINCT `wp_postmeta`.`meta_value` FROM `wp_postmeta` WHERE `wp_postmeta`.`post_id` = `a`.`order_id` AND `wp_postmeta`.`meta_key` = 'memberbot_order_category' LIMIT 1) AS `memberbot_order_category`,
    `a`.`customer_id` AS `customer_id`,
    `a`.`customer_id` AS `user_id`,
    `a`.`date_created` AS `order_created`,
    (SELECT DISTINCT `wp_postmeta`.`meta_value` FROM `wp_postmeta` WHERE `wp_postmeta`.`post_id` = `a`.`order_id` AND `wp_postmeta`.`meta_key` = 'cc_attendance_sim' LIMIT 1) AS `cc_attendance_sim`,
    (SELECT DISTINCT `wp_postmeta`.`meta_value` FROM `wp_postmeta` WHERE `wp_postmeta`.`post_id` = `a`.`order_id` AND `wp_postmeta`.`meta_key` = 'cc_volunteer_attendance_sim' LIMIT 1) AS `cc_volunteer_attendance_sim`,
    (SELECT DISTINCT `wp_postmeta`.`meta_value` FROM `wp_postmeta` WHERE `wp_postmeta`.`post_id` = `a`.`order_id` AND `wp_postmeta`.`meta_key` = 'cc_volunteer_sim' LIMIT 1) AS `cc_volunteer_sim`,
    (SELECT DISTINCT `wp_postmeta`.`meta_value` FROM `wp_postmeta` WHERE `wp_postmeta`.`post_id` = `a`.`order_id` AND `wp_postmeta`.`meta_key` = 'cc_outdoor_location_sim' LIMIT 1) AS `cc_outdoor_location_sim`,
    '' AS `first_name`,
    '' AS `last_name`
FROM 
    `wp_wc_order_stats` `a`
    JOIN `wp_wc_order_product_lookup` `c` ON (`a`.`order_id` = `c`.`order_id`)
    JOIN `wp_woocommerce_order_items` `o` ON (`a`.`order_id` = `o`.`order_id`)
ORDER BY 
    `a`.`order_id`
