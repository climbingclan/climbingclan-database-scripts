CREATE ALGORITHM = UNDEFINED DEFINER = `root` @`%` SQL SECURITY DEFINER VIEW `wp_member_db_skills` AS
select distinct
  `u`.`ID` AS `id`,
  case
    when `u`.`skills-belaying` like '%No-Belaying%' then '✅'
    else 'No'
  end AS `skills_belaying_needs_supervision`,
  case
    when `u`.`skills-belaying` like '%Top-rope-belaying%' then '✅'
    when `u`.`skills-belaying` like '%lead-belayer%' then '✅'
    else 'No'
  end AS `skills_belaying_top_rope`,
  case
    when `u`.`skills-belaying` like 'lead-belayer' then '✅'
    else 'No'
  end AS `skills_belaying_lead`,
  case
    when `u`.`skills-belaying` like '%learner-lead-belayer%' then '✅'
    else 'No'
  end AS `skills_belaying_lead_needs_supervision`,
  case
    when `u`.`climbing-trad-skills-extra` like '%Half Ropes%' then '✅'
    else 'No'
  end AS `skills_belaying_halfropes`,
  case
    when `u`.`climbing-trad-skills-extra` like '%Moving Together%' then '✅'
    else 'No'
  end AS `skills_trad_moving_together`,
  case
    when `u`.`climbing-trad-skills-extra` like '%Hauling systems%' then '✅'
    else 'No'
  end AS `skills_trad_hauling`,
  case
    when `u`.`climbing-trad-skills-extra` like '%Big Walling%' then '✅'
    else 'No'
  end AS `skills_trad_big_wall`,
  case
    when `u`.`climbing-trad-skills-extra` like '%Multipitch%' then '✅'
    else 'No'
  end AS `skills_trad_multipitch_anchors`,
  case
    when `u`.`climbing-trad-skills-extra` like '%Prussiking upwards%' then '✅'
    else 'No'
  end AS `skills_trad_prussiking`,
  case
    when `u`.`climbing-trad-skills-extra` like '%Belay Escape%' then '✅'
    else 'No'
  end AS `skills_trad_belay_escape`,
  case
    when `u`.`climbing-trad-skills-extra` like '%Setting up retrievable abseils%' then '✅'
    else 'No'
  end AS `skills_trad_retrievable_abseils`,
  case
    when `u`.`climbing-trad-skills-extra` like '%Abseiling%' then '✅'
    else 'No'
  end AS `skills_trad_abseiling`,
  case
    when `u`.`climbing-trad-skills-extra` like '%Setting Up Top Ropes%' then '✅'
    when `u`.`skills-trad-climbing` like '%toprope%' then '✅'
    else 'No'
  end AS `skills_trad_toprope`,
  case
    when `u`.`climbing-trad-skills-extra` like '%Seconding%' then '✅'
    when `u`.`skills-trad-climbing` like '%Seconding%' then '✅'
    when `u`.`skills-trad-climbing` like '%trad%' then '✅'
    when `u`.`skills-trad-climbing` like '%learn%' then '✅'
    when `u`.`skills-trad-climbing` like '%lead%' then '✅'
    else 'No'
  end AS `skills_trad_seconding`,
  case
    when `u`.`skills-trad-climbing` like '%no skills%' then '✅'
    else 'No'
  end AS `skills_trad_seconding_needs_supervision`,
  case
    when `u`.`skills-trad-climbing` like '%learning trad%' then '✅'
    else 'No'
  end AS `skills_trad_leading_needs_supervision`,
  case
    when `u`.`skills-trad-climbing` like '%lead trad%' then '✅'
    when `u`.`skills-trad-climbing` like '%top%' then '✅'
    else 'No'
  end AS `skills_trad_leading`,
  case
    when `u`.`skills-sport-climbing` like '%Strip%' then '✅'
    when `u`.`climbing-sport-skills-extra` like '%Stripping%' then '✅'
    when `u`.`climbing-sport-skills-extra` like '%Cleaning%' then '✅'
    when `u`.`skills-sport-climbing` like '%strip%' then '✅'
    else 'No'
  end AS `skills_sport_stripping`,
  case
    when `u`.`climbing-sport-skills-extra` like '%Seconding Outside%' then '✅'
    when `u`.`skills-sport-climbing` like '%Seconding Outside%' then '✅'
    when `u`.`skills-sport-climbing` like '%Lead Outdoors%' then '✅'
    else 'No'
  end AS `skills_sport_seconding_outside`,
  case
    when `u`.`climbing-sport-skills-extra` like '%Seconding%' then '✅'
    when `u`.`skills-sport-climbing` like '%Seconding Inside%' then '✅'
    when `u`.`skills-sport-climbing` like '%Lead%' then '✅'
    when `u`.`skills-sport-climbing` like '%Lead Indoors%' then '✅'
    else 'No'
  end AS `skills_sport_seconding_inside`,
  case
    when `u`.`climbing-sport-skills-extra` like '%Lead Indoors%' then '✅'
    when `u`.`skills-sport-climbing` like '%Lead Outdoors%' then '✅'
    when `u`.`skills-trad-climbing` like '%lead trad%' then '✅'
    when `u`.`climbing-sport-skills-extra` like '%Lead Climbing%' then '✅'
    else 'No'
  end AS `skills_sport_leading_inside`,
  case
    when `u`.`skills-sport-climbing` like '%Lead Outdoors%' then '✅'
    when `u`.`skills-sport-climbing` like '%Lead and strip%' then '✅'
    else 'No'
  end AS `skills_sport_leading_outside`,
  case
    when `u`.`skills-sport-climbing` like '%Nothing yet%' then '✅'
    else 'No'
  end AS `skills_sport_seconding_needs_supervision`,
  case
    when `u`.`climbing-sport-skills-extra` like '%Multipitch Anchors%' then '✅'
    else 'No'
  end AS `skills_sport_leading_multipitch_anchors`,
  case
    when `u`.`climbing-sport-skills-extra` like '%Top Rope%' then '✅'
    else 'No'
  end AS `skills_sport_setting_up_top_rope`,
  case
    when `u`.`climbing-sport-skills-extra` like '%Clipstick%' then '✅'
    else 'No'
  end AS `skills_sport_leading_clipstick`,
  case
    when `u`.`climbing-sport-skills-extra` like '%Abseiling off multipitch%' then '✅'
    else 'No'
  end AS `skills_sport_leading_multipitch_abseiling`
from
  `wp_member_db` `u`