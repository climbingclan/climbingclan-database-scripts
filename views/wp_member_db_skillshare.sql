CREATE ALGORITHM = UNDEFINED DEFINER = `root` @`%` SQL SECURITY DEFINER VIEW `wp_member_db_skillshare` AS
select distinct
  `u`.`ID` AS `id`,
  case
    when `u`.`climbing-indoors-skills-passing-on` like '%First experience of climbing%' then '✅'
    else 'No'
  end AS `skillshare_climbing_indoors_first_experience`,
  case
    when `u`.`climbing-indoors-skills-passing-on` like '%Top Rope Belaying%' then '✅'
    else 'No'
  end AS `skillshare_climbing_indoors_top_rope_belaying`,
  case
    when `u`.`climbing-indoors-skills-passing-on` like '%Lead Belaying%' then '✅'
    else 'No'
  end AS `skillshare_climbing_indoors_lead_belaying`,
  case
    when `u`.`climbing-indoors-skills-passing-on` like '%Seconding Leads%' then '✅'
    else 'No'
  end AS `skillshare_climbing_indoors_seconding_leads`,
  case
    when `u`.`climbing-indoors-skills-passing-on` like '%Lead Climbing%' then '✅'
    else 'No'
  end AS `skillshare_climbing_indoors_lead_climbing`,
  case
    when `u`.`climbing-indoors-skills-passing-on` like '%How to take lead falls%' then '✅'
    else 'No'
  end AS `skillshare_climbing_indoors_lead_falls`,
  case
    when `u`.`climbing-indoors-skills-passing-on` like '%How to use the autobelay%' then '✅'
    else 'No'
  end AS `skillshare_climbing_indoors_autobelay`,
  case
    when `u`.`climbing-indoors-skills-passing-on` like '%How to use the indoor bouldering area%' then '✅'
    else 'No'
  end AS `skillshare_climbing_indoors_bouldering_area`,
  case
    when `u`.`climbing-indoors-skills-passing-on` like '%Showing people how to introduce someone to top rope belaying%' then '✅'
    else 'No'
  end AS `skillshare_climbing_indoors_top_rope_trainer_trainer`,
  case
    when `u`.`climbing-indoors-skills-passing-on` like '%Showing someone how to introduce people to lead belaying%' then '✅'
    else 'No'
  end AS `skillshare_climbing_indoors_lead_belaying_trainer_trainer`,
  case
    when `u`.`climbing-indoors-skills-passing-on` like '%Showing someone how to introduce people to lead climbing%' then '✅'
    else 'No'
  end AS `skillshare_climbing_indoors_lead_climbing_trainer_trainer`,
  case
    when `u`.`climbing-trad-skills-passing-on` like '%Seconding%' then '✅'
    else 'No'
  end AS `skillshare_climbing_trad_seconding`,
  case
    when `u`.`climbing-trad-skills-passing-on` like '%Leading Trad%' then '✅'
    else 'No'
  end AS `skillshare_climbing_trad_leading_trad`,
  case
    when `u`.`climbing-trad-skills-passing-on` like '%Setting Up Top Ropes%' then '✅'
    else 'No'
  end AS `skillshare_climbing_trad_setting_up_top_rope`,
  case
    when `u`.`climbing-trad-skills-passing-on` like '%Belaying with Half Ropes%' then '✅'
    else 'No'
  end AS `skillshare_climbing_trad_belaying_half_ropes`,
  case
    when `u`.`climbing-trad-skills-passing-on` like '%Abseiling%' then '✅'
    else 'No'
  end AS `skillshare_climbing_trad_abseiling`,
  case
    when `u`.`climbing-trad-skills-passing-on` like '%Setting up retrievable abseils%' then '✅'
    else 'No'
  end AS `skillshare_climbing_trad_retrievable_abseils`,
  case
    when `u`.`climbing-trad-skills-passing-on` like '%Multipitch Anchors%' then '✅'
    else 'No'
  end AS `skillshare_climbing_trad_multipitch_anchors`,
  case
    when `u`.`climbing-trad-skills-passing-on` like '%Belay Escape%' then '✅'
    else 'No'
  end AS `skillshare_climbing_trad_belay_escape`,
  case
    when `u`.`climbing-trad-skills-passing-on` like '%Prussiking upwards%' then '✅'
    else 'No'
  end AS `skillshare_climbing_trad_prussiking_upwards`,
  case
    when `u`.`climbing-trad-skills-passing-on` like '%Hauling systems%' then '✅'
    else 'No'
  end AS `skillshare_climbing_trad_hauling_systems`,
  case
    when `u`.`climbing-trad-skills-passing-on` like '%Moving Together%' then '✅'
    else 'No'
  end AS `skillshare_climbing_trad_moving_together`,
  case
    when `u`.`climbing-trad-skills-passing-on` like '%Big Walling%' then '✅'
    else 'No'
  end AS `skillshare_climbing_trad_big_walling`,
  case
    when `u`.`climbing-sport-skills-passing-on` like '%Seconding Outside%' then '✅'
    else 'No'
  end AS `skillshare_climbing_sport_seconding_outside`,
  case
    when `u`.`climbing-sport-skills-passing-on` like '%Lead Climbing%' then '✅'
    else 'No'
  end AS `skillshare_climbing_sport_lead_climbing`,
  case
    when `u`.`climbing-sport-skills-passing-on` like '%Stripping a route%' then '✅'
    else 'No'
  end AS `skillshare_climbing_sport_stripping_route`,
  case
    when `u`.`climbing-sport-skills-passing-on` like '%Setting up a Top Rope%' then '✅'
    else 'No'
  end AS `skillshare_climbing_sport_setting_up_top_rope`,
  case
    when `u`.`climbing-sport-skills-passing-on` like '%Multipitch Anchors%' then '✅'
    else 'No'
  end AS `skillshare_climbing_sport_multipitch_anchors`,
  case
    when `u`.`climbing-sport-skills-passing-on` like '%Abseiling off multipitch routes%' then '✅'
    else 'No'
  end AS `skillshare_climbing_sport_abseiling_multipitch_routes`
from
  `wp_member_db` `u`