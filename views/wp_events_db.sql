CREATE ALGORITHM = UNDEFINED DEFINER = `root` @`%` SQL SECURITY DEFINER VIEW `wp_events_db` AS
select
  `p`.`ID` AS `product_id`,
  `p`.`post_title` AS `product_name`,
  max(
    case
      when `pm`.`meta_key` = '_price' then `pm`.`meta_value`
    end
  ) AS `price`,
  max(
    case
      when `pm`.`meta_key` = 'cost' then `pm`.`meta_value`
    end
  ) AS `cost`,
  max(
    case
      when `pm`.`meta_key` = 'total_sales' then `pm`.`meta_value`
    end
  ) AS `total_sales`,
  max(
    case
      when `pm`.`meta_key` = '_stock' then `pm`.`meta_value`
    end
  ) AS `stock`,
  max(
    case
      when `pm`.`meta_key` = '_stock_status' then `pm`.`meta_value`
    end
  ) AS `stock_status`,
  max(
    case
      when `pm`.`meta_key` = '_sku' then `pm`.`meta_value`
    end
  ) AS `sku`,
  max(
    case
      when `pm`.`meta_key` = 'wooct_time_end' then `pm`.`meta_value`
    end
  ) AS `wooct_time_end`,
  max(
    case
      when `pm`.`meta_key` = 'woocommerce_waitlist' then `pm`.`meta_value`
    end
  ) AS `woocommerce_waitlist`,
  max(
    case
      when `pm`.`meta_key` = 'event_total_places_available' then `pm`.`meta_value`
    end
  ) AS `event_total_places_available`,
  max(
    case
      when `pm`.`meta_key` = 'event_signup_opens' then `pm`.`meta_value`
    end
  ) AS `event_signup_opens`,
  max(
    case
      when `pm`.`meta_key` = 'event_start_date_time' then `pm`.`meta_value`
    end
  ) AS `event_start_date_time`,
  max(
    case
      when `pm`.`meta_key` = 'event_for_u18s' then `pm`.`meta_value`
    end
  ) AS `event_for_u18s`,
  max(
    case
      when `pm`.`meta_key` = 'event_dogs_come' then `pm`.`meta_value`
    end
  ) AS `event_dogs_come`
from
  (
    `wp_posts` `p`
    left join `wp_postmeta` `pm` on (`p`.`ID` = `pm`.`post_id`)
  )
where
  `p`.`post_type` = 'product'
group by
  `p`.`ID`