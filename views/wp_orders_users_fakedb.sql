CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_orders_users_fakedb` AS select `wp_postmeta`.`post_id` AS `post_id`,`wp_postmeta`.`meta_value` AS `meta_value` from `wp_postmeta` where `wp_postmeta`.`meta_key` = '_customer_user' and `wp_postmeta`.`post_id` in (select `wp_posts`.`ID` from `wp_posts` where `wp_posts`.`post_type` = 'shop_order')