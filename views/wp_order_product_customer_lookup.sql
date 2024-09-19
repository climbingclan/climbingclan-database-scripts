CREATE ALGORITHM = UNDEFINED DEFINER = `root` @`localhost` SQL SECURITY DEFINER VIEW `wp_order_product_customer_lookup` AS
select
  `a`.`order_id` AS `order_id`,
  `c`.`product_id` AS `product_id`,
  `c`.`variation_id` AS `variation_id`,
  `o`.`order_item_name` AS `order_item_name`,
  `a`.`status` AS `status`,
  (
    select distinct
      `wp_postmeta`.`meta_value`
    from
      `wp_postmeta`
    where
      `wp_postmeta`.`post_id` = `a`.`order_id`
      and `wp_postmeta`.`meta_key` = 'cc_attendance'
    limit
      1
  ) AS `cc_attendance`,
  (
    select distinct
      `wp_postmeta`.`meta_value`
    from
      `wp_postmeta`
    where
      `wp_postmeta`.`post_id` = `a`.`order_id`
      and `wp_postmeta`.`meta_key` = 'cc_volunteer_attendance'
    limit
      1
  ) AS `cc_volunteer_attendance`,
  (
    select distinct
      `wp_postmeta`.`meta_value`
    from
      `wp_postmeta`
    where
      `wp_postmeta`.`post_id` = `a`.`order_id`
      and `wp_postmeta`.`meta_key` = 'cc_volunteer'
    limit
      1
  ) AS `cc_volunteer`,
  (
    select distinct
      `wp_postmeta`.`meta_value`
    from
      `wp_postmeta`
    where
      `wp_postmeta`.`post_id` = `a`.`order_id`
      and `wp_postmeta`.`meta_key` = 'cc_outdoor_location'
    limit
      1
  ) AS `cc_outdoor_location`,
  (
    select distinct
      `wp_postmeta`.`meta_value`
    from
      `wp_postmeta`
    where
      `wp_postmeta`.`post_id` = `a`.`order_id`
      and `wp_postmeta`.`meta_key` = 'cc_location'
    limit
      1
  ) AS `cc_location`,
  (
    select distinct
      `wp_postmeta`.`meta_value`
    from
      `wp_postmeta`
    where
      `wp_postmeta`.`post_id` = `a`.`order_id`
      and `wp_postmeta`.`meta_key` = 'cc_indoor_location'
    limit
      1
  ) AS `cc_indoor_location`,
  (
    select distinct
      `wp_postmeta`.`meta_value`
    from
      `wp_postmeta`
    where
      `wp_postmeta`.`post_id` = `a`.`order_id`
      and `wp_postmeta`.`meta_key` = 'memberbot_order_category'
    limit
      1
  ) AS `memberbot_order_category`,
  `a`.`customer_id` AS `customer_id`,
  (
    select distinct
      `t`.`meta_value` AS `_customer_user`
    from
      `wp_postmeta` `t`
    where
      `t`.`post_id` = `a`.`order_id`
      and `t`.`meta_key` = '_customer_user'
  ) AS `user_id`,
  `a`.`date_created` AS `order_created`,
  (
    select distinct
      `wp_postmeta`.`meta_value`
    from
      `wp_postmeta`
    where
      `wp_postmeta`.`post_id` = `a`.`order_id`
      and `wp_postmeta`.`meta_key` = 'cc_attendance_sim'
    limit
      1
  ) AS `cc_attendance_sim`,
  (
    select distinct
      `wp_postmeta`.`meta_value`
    from
      `wp_postmeta`
    where
      `wp_postmeta`.`post_id` = `a`.`order_id`
      and `wp_postmeta`.`meta_key` = 'cc_volunteer_attendance_sim'
    limit
      1
  ) AS `cc_volunteer_attendance_sim`,
  (
    select distinct
      `wp_postmeta`.`meta_value`
    from
      `wp_postmeta`
    where
      `wp_postmeta`.`post_id` = `a`.`order_id`
      and `wp_postmeta`.`meta_key` = 'cc_volunteer_sim'
    limit
      1
  ) AS `cc_volunteer_sim`,
  (
    select distinct
      `wp_postmeta`.`meta_value`
    from
      `wp_postmeta`
    where
      `wp_postmeta`.`post_id` = `a`.`order_id`
      and `wp_postmeta`.`meta_key` = 'cc_outdoor_location_sim'
    limit
      1
  ) AS `cc_outdoor_location_sim`
from
  (
    (
      `wp_wc_order_stats` `a`
      join `wp_wc_order_product_lookup` `c` on (`a`.`order_id` = `c`.`order_id`)
    )
    join `wp_woocommerce_order_items` `o` on (`a`.`order_id` = `o`.`order_id`)
  )
order by
  `a`.`order_id`
