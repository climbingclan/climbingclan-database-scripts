view drop wp_member_db_test` AS select `u`.`ID` AS `id`,`u`.`user_login` AS `user_login`,`um`.`meta_value` AS `nickname`,`um1`.`meta_value` AS `first_name`,`um2`.`meta_value` AS `last_name`,`um3`.`meta_value` AS `billing_first_name`,`um4`.`meta_value` AS `billing_last_name`,`um5`.`meta_value` AS `billing_email`,`um6`.`meta_value` AS `billing_address_1`,`um7`.`meta_value` AS `billing_address_2`,`um8`.`meta_value` AS `billing_city`,`um9`.`meta_value` AS `billing_postcode`,`um10`.`meta_value` AS `billing_country`,`l`.`customer_id` AS `customer_id` from ((((((((((((`wp_users` `u` join `wp_usermeta` `um` on(`um`.`user_id` = `u`.`ID` and `um`.`meta_key` = 'nickname')) join `wp_usermeta` `um1` on(`um1`.`user_id` = `u`.`ID` and `um1`.`meta_key` = 'first_name')) join `wp_usermeta` `um2` on(`um2`.`user_id` = `u`.`ID` and `um2`.`meta_key` = 'last_name')) join `wp_usermeta` `um3` on(`um3`.`user_id` = `u`.`ID` and `um3`.`meta_key` = 'billing_first_name')) join `wp_usermeta` `um4` on(`um4`.`user_id` = `u`.`ID` and `um4`.`meta_key` = 'billing_last_name')) join `wp_usermeta` `um5` on(`um5`.`user_id` = `u`.`ID` and `um5`.`meta_key` = 'billing_email')) join `wp_usermeta` `um6` on(`um6`.`user_id` = `u`.`ID` and `um6`.`meta_key` = 'billing_address_1')) join `wp_usermeta` `um7` on(`um7`.`user_id` = `u`.`ID` and `um7`.`meta_key` = 'billing_address_2')) join `wp_usermeta` `um8` on(`um8`.`user_id` = `u`.`ID` and `um8`.`meta_key` = 'billing_city')) join `wp_usermeta` `um9` on(`um9`.`user_id` = `u`.`ID` and `um9`.`meta_key` = 'billing_postcode')) join `wp_usermeta` `um10` on(`um10`.`user_id` = `u`.`ID` and `um10`.`meta_key` = 'billing_country')) join `wp_wc_customer_lookup` `l` on(`l`.`user_id` = `u`.`ID`))
