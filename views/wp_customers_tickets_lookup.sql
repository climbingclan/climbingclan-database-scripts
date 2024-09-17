CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_customers_tickets_lookup` AS select `u`.`ID` AS `ID`,(select distinct `t`.`meta_value` AS `ticket_order_item_id` from `wp_postmeta` `t` where `t`.`post_id` = `u`.`ID` - 1 and `t`.`meta_key` = '_ticket_order_item_id') AS `_ticket_order_item_id`,(select distinct `t`.`meta_value` AS `_customer_user` from `wp_postmeta` `t` where `t`.`post_id` = `u`.`ID` and `t`.`meta_key` = '_customer_user') AS `_customer_user` from `wp_posts` `u` where `u`.`post_type` = 'shop_order'