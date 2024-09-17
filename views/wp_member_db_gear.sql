CREATE ALGORITHM = UNDEFINED DEFINER = `root` @`%` SQL SECURITY DEFINER VIEW `wp_member_db_gear` AS
select distinct
  `u`.`ID` AS `id`,
  case
    when `u`.`gear-bringing-evening-or-day-trip` like '%rope%' then '✅'
    else 'No'
  end AS `gear_bringing_rope`,
  case
    when `u`.`gear-bringing-evening-or-day-trip` like '%rack%' then '✅'
    else 'No'
  end AS `gear_bringing_rack`,
  case
    when `u`.`gear-bringing-evening-or-day-trip` like '%personal%' then '✅'
    else 'No'
  end AS `gear_bringing_personal_gear`,
  case
    when `u`.`gear-bringing-evening-or-day-trip` like '%quickdraws%' then '✅'
    else 'No'
  end AS `gear_bringing_quickdraws`,
  case
    when `u`.`gear-bringing-evening-or-day-trip` like '%guidebook%' then '✅'
    else 'No'
  end AS `gear_bringing_guidebook`,
  case
    when `u`.`gear-bringing-evening-or-day-trip` like '%First Aid%' then '✅'
    when `u`.`gear-walking-equipment-weekend` like '%First Aid%' then '✅'
    else 'No'
  end AS `gear_bringing_firstaidkit`,
  case
    when `u`.`gear-walking-equipment-weekend` like '%Waterproof Jacket%' then '✅'
    else 'No'
  end AS `gear_bringing_waterproof_jacket`,
  case
    when `u`.`gear-walking-equipment-weekend` like '%Waterproof Trousers%' then '✅'
    else 'No'
  end AS `gear_bringing_waterproof_trousers`,
  case
    when `u`.`gear-walking-equipment-weekend` like '%Boots%' then '✅'
    else 'No'
  end AS `gear_bringing_boots`,
  case
    when `u`.`gear-walking-equipment-weekend` like '%Ice Axe%' then '✅'
    else 'No'
  end AS `gear_bringing_ice_axe`,
  case
    when `u`.`gear-walking-equipment-weekend` like '%Crampons%' then '✅'
    else 'No'
  end AS `gear_bringing_crampons`,
  case
    when `u`.`gear-walking-equipment-weekend` like '%Navigation%' then '✅'
    else 'No'
  end AS `gear_bringing_navigation`
from
  `wp_member_db` `u`