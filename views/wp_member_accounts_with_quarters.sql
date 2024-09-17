CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `wp_member_accounts_with_quarters` AS select `wp_member_accounts`.`payment_date` AS `payment_date`,`wp_member_accounts`.`order_id` AS `order_id`,`wp_member_accounts`.`payment_customer_id` AS `payment_customer_id`,`wp_member_accounts`.`product_id` AS `product_id`,`wp_member_accounts`.`description` AS `description`,`wp_member_accounts`.`net` AS `net`,`wp_member_accounts`.`balance_transaction_id` AS `balance_transaction_id`,`wp_member_accounts`.`charge_id` AS `charge_id`,`wp_member_accounts`.`payment_intent_id` AS `payment_intent_id`,`wp_member_accounts`.`order_type` AS `order_type`,`wp_member_accounts`.`payment` AS `payment`,`wp_member_accounts`.`payment_mode` AS `payment_mode`,`wp_member_accounts`.`payment_type` AS `payment_type`,`wp_member_accounts`.`automatic_payout_effective_at` AS `automatic_payout_effective_at`,`wp_member_accounts`.`automatic_payout_id` AS `automatic_payout_id`,`wp_member_accounts`.`gross` AS `gross`,`wp_member_accounts`.`fee` AS `fee`,`wp_member_accounts`.`payment_category` AS `payment_category`,`wp_member_accounts`.`reporting_category` AS `reporting_category`,`wp_member_accounts`.`source` AS `source`,`wp_member_accounts`.`reconciled_date` AS `reconciled_date`,`wp_member_accounts`.`last_updated_date` AS `last_updated_date`,`wp_member_accounts`.`last_updated_by_user` AS `last_updated_by_user`,`wp_member_accounts`.`user_id` AS `user_id`,quarter(`wp_member_accounts`.`payment_date`) AS `quarter`,year(`wp_member_accounts`.`payment_date`) AS `year` from `wp_member_accounts`