CREATE ALGORITHM = UNDEFINED DEFINER = `root` @`%` SQL SECURITY DEFINER VIEW `wp_clan_crags` AS
select
  `p`.`ID` AS `crag_id`,
  `p`.`post_title` AS `crag_name`,
  max(
    case
      when `pm`.`meta_key` = 'location_description_of_location' then `pm`.`meta_value`
    end
  ) AS `location_description_of_location`,
  max(
    case
      when `pm`.`meta_key` = 'location_trad_sport_bouldering' then `pm`.`meta_value`
    end
  ) AS `location_trad_sport_bouldering`,
  max(
    case
      when `pm`.`meta_key` = 'location_region' then `pm`.`meta_value`
    end
  ) AS `location_region`,
  max(
    case
      when `pm`.`meta_key` = 'location_crag' then `pm`.`meta_value`
    end
  ) AS `location_crag`,
  max(
    case
      when `pm`.`meta_key` = 'location_guidebooks_suggested' then `pm`.`meta_value`
    end
  ) AS `location_guidebooks_suggested`,
  max(
    case
      when `pm`.`meta_key` = 'location_photo' then `pm`.`meta_value`
    end
  ) AS `location_photo`,
  max(
    case
      when `pm`.`meta_key` = 'location_parking_location_description' then `pm`.`meta_value`
    end
  ) AS `location_parking_location_description`,
  max(
    case
      when `pm`.`meta_key` = 'location_photo_of_parking' then `pm`.`meta_value`
    end
  ) AS `location_photo_of_parking`,
  max(
    case
      when `pm`.`meta_key` = 'location_parking' then `pm`.`meta_value`
    end
  ) AS `location_parking`,
  max(
    case
      when `pm`.`meta_key` = 'location_reach_from_parking' then `pm`.`meta_value`
    end
  ) AS `location_reach_from_parking`,
  max(
    case
      when `pm`.`meta_key` = 'location_public_transport_access_information' then `pm`.`meta_value`
    end
  ) AS `location_public_transport_access_information`,
  max(
    case
      when `pm`.`meta_key` = 'location_parking_to_crag_instructions' then `pm`.`meta_value`
    end
  ) AS `location_parking_to_crag_instructions`,
  max(
    case
      when `pm`.`meta_key` = 'location_map_parking_to_crag' then `pm`.`meta_value`
    end
  ) AS `location_map_parking_to_crag`,
  max(
    case
      when `pm`.`meta_key` = 'location_wheelchair_accessibility' then `pm`.`meta_value`
    end
  ) AS `location_wheelchair_accessibility`,
  max(
    case
      when `pm`.`meta_key` = 'location_must_lead' then `pm`.`meta_value`
    end
  ) AS `location_must_lead`,
  max(
    case
      when `pm`.`meta_key` = 'location_must_tr' then `pm`.`meta_value`
    end
  ) AS `location_must_tr`,
  max(
    case
      when `pm`.`meta_key` = 'location_dogs_info' then `pm`.`meta_value`
    end
  ) AS `location_dogs_info`,
  max(
    case
      when `pm`.`meta_key` = 'location_weather_forecast_url_met_office' then `pm`.`meta_value`
    end
  ) AS `location_weather_forecast_url_met_office`,
  max(
    case
      when `pm`.`meta_key` = 'location_weather_forecast_yr_no' then `pm`.`meta_value`
    end
  ) AS `location_weather_forecast_yr_no`,
  max(
    case
      when `pm`.`meta_key` = 'location_weather_forecast_bbc' then `pm`.`meta_value`
    end
  ) AS `location_weather_forecast_bbc`,
  max(
    case
      when `pm`.`meta_key` = 'location_bmc_rad_url' then `pm`.`meta_value`
    end
  ) AS `location_bmc_rad_url`,
  max(
    case
      when `pm`.`meta_key` = 'location_ukc_url' then `pm`.`meta_value`
    end
  ) AS `location_ukc_url`,
  max(
    case
      when `pm`.`meta_key` = 'location_online_guide_url' then `pm`.`meta_value`
    end
  ) AS `location_online_guide_url`
from
  (
    `wp_posts` `p`
    left join `wp_postmeta` `pm` on (`p`.`ID` = `pm`.`post_id`)
  )
where
  `p`.`post_type` = 'post'
group by
  `p`.`ID`