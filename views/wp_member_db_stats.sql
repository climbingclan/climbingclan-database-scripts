CREATE ALGORITHM = UNDEFINED DEFINER = `root` @`%` SQL SECURITY DEFINER VIEW `wp_member_db_stats` AS
select
  `u`.`ID` AS `user_id`,
  count(
    distinct case
      when `o`.`cc_attendance` in ('attended', 'no-register-show', 'noregistershow')
      and `o`.`cc_volunteer` not in('none', '')
      and `o`.`cc_volunteer_attendance` in (
        'attended',
        'completed',
        'did it',
        'attend',
        'pending',
        ''
      )
      and `o`.`user_id` = `u`.`ID`
      and `o`.`status` = 'wc-completed' then `o`.`order_item_name`
      else case
        when `o`.`cc_attendance` in (
          'cancelled',
          'bail',
          'no-show',
          'late-bail',
          'latebail',
          'noshow',
          'cancelled by the Clan',
          'cancelled due to bad weather'
        )
        and `o`.`cc_volunteer` not in('none', '')
        and `o`.`cc_volunteer_attendance` in ('attended', 'completed', 'did it', 'attend')
        and `o`.`user_id` = `u`.`ID`
        and `o`.`status` = 'wc-completed' then `o`.`order_item_name`
      end
    end
  ) AS `volunteer_for_numerator`,
  count(
    distinct case
      when `o`.`cc_attendance` in (
        'cancelled',
        'bail',
        'no-show',
        'late-bail',
        'latebail',
        'noshow'
      )
      and `o`.`cc_volunteer` not in('none', '')
      and `o`.`cc_volunteer_attendance` not in('attended', 'completed', 'did it', 'attend') then `o`.`order_item_name`
    end
  ) AS `volunteer_for_but_no_attend`,
  count(
    distinct case
      when `o`.`cc_volunteer_attendance` in (
        'cancelled',
        'bail',
        'no-show',
        'late-bail',
        'noshow',
        'cancel',
        'latebail'
      )
      and `o`.`cc_volunteer` not in('none', '', 'pending')
      and `o`.`cc_attendance` in ('attended', 'noregistershow', 'no-register-show') then `o`.`order_item_name`
    end
  ) AS `volunteer_for_but_no_volunteer`,
  count(
    distinct case
      when `o`.`cc_attendance` in (
        'cancelled',
        'bail',
        'no-show',
        'late-bail',
        'latebail',
        'noshow',
        'cancelled by the Clan',
        'cancelled due to bad weather'
      )
      and `o`.`cc_volunteer` not in('none', '')
      and `o`.`cc_volunteer_attendance` in ('attended', 'completed', 'did it', 'attend') then `o`.`order_item_name`
    end
  ) AS `volunteer_for_and_cancel_but_did_volunteer`,
  count(
    distinct case
      when `o`.`cc_attendance` in (
        'cancelled',
        'bail',
        'no-show',
        'late-bail',
        'attended'
      ) then `o`.`order_item_name`
    end
  ) AS `volunteer_for_denominator`,
  count(
    distinct case
      when `o`.`cc_attendance` = 'attended' then `o`.`order_item_name`
    end
  ) AS `attendance_attended`,
  count(
    distinct case
      when `o`.`cc_attendance` = 'attended'
      and (
        `o`.`memberbot_order_category` = 'outdoor_thursday'
        or `o`.`order_item_name` like '%Thursday%'
      ) then `o`.`order_item_name`
    end
  ) AS `attendance_outdoor_thursday_attended`,
  count(
    distinct case
      when `o`.`cc_attendance` = 'attended'
      and `o`.`memberbot_order_category` = 'outdoor_saturday' then `o`.`order_item_name`
    end
  ) AS `attendance_outdoor_saturday_attended`,
  count(
    distinct case
      when `o`.`cc_attendance` = 'attended'
      and `o`.`memberbot_order_category` in ('outdoor_thursday', 'outdoor_saturday') then `o`.`order_item_name`
    end
  ) AS `attendance_outdoor_day_attended`,
  count(
    distinct case
      when `o`.`cc_attendance` = 'attended'
      and (
        `o`.`memberbot_order_category` like 'indoor%'
        or `o`.`order_item_name` like '%Wednesday%'
      ) then `o`.`order_item_name`
    end
  ) AS `attendance_indoor_wednesday_attended`,
  count(
    distinct case
      when `o`.`cc_attendance` = 'attended'
      and (
        `o`.`memberbot_order_category` = 'overnight'
        or `o`.`order_item_name` like '%Week%'
        or `o`.`order_item_name` like '%New Year%'
      ) then `o`.`order_item_name`
    end
  ) AS `attendance_overnight_attended`,
  count(
    distinct case
      when `o`.`cc_attendance` = 'attended'
      and (
        `o`.`memberbot_order_category` = 'training'
        or `o`.`order_item_name` like '%Training%'
        or `o`.`order_item_name` like '%Skill Sharing%'
      ) then `o`.`order_item_name`
    end
  ) AS `attendance_training_attended`,
  count(
    distinct case
      when `o`.`cc_attendance` in ('attended', 'pending')
      and `o`.`memberbot_order_category` = 'training'
      and `o`.`order_item_name` like '%Indoor Lead Train the Trainer%' then `o`.`order_item_name`
    end
  ) AS `attendance_training_indoor_lead_ttter_attended`,
  count(
    distinct case
      when `o`.`cc_attendance` in ('attended', 'pending')
      and `o`.`memberbot_order_category` = 'training'
      and `o`.`order_item_name` like '%Top Rope Train the Trainer%' then `o`.`order_item_name`
    end
  ) AS `attendance_training_top_rope_ttter_attended`,
  count(
    distinct case
      when `o`.`cc_attendance` in ('attended', 'pending')
      and `o`.`memberbot_order_category` = 'training'
      and `o`.`order_item_name` like '%Trad Train the Trainer%' then `o`.`order_item_name`
    end
  ) AS `attendance_training_trad_ttter_attended`,
  count(
    distinct case
      when `o`.`cc_attendance` in ('attended', 'pending')
      and `o`.`memberbot_order_category` = 'training'
      and `o`.`order_item_name` like '%Technique and Efficiency%' then `o`.`order_item_name`
    end
  ) AS `attendance_training_technique_workshop_attended`,
  count(
    distinct case
      when `o`.`cc_attendance` in ('attended', 'pending')
      and `o`.`memberbot_order_category` = 'training'
      and `o`.`order_item_name` like '%Introduction to Outdoor%' then `o`.`order_item_name`
    end
  ) AS `attendance_training_intro_outdoor_workshop_attended`,
  count(
    distinct case
      when `o`.`cc_attendance` in ('attended', 'pending')
      and `o`.`memberbot_order_category` = 'training'
      and (
        `o`.`order_item_name` like '%Gear Placement%'
        or `o`.`order_item_name` like '%Anchor Building%'
        or `o`.`order_item_name` like '%First Steps in Leading Trad%'
        or `o`.`order_item_name` like '%Trad Consolidation%'
      ) then `o`.`order_item_name`
    end
  ) AS `attendance_training_first_trad_steps_attended`,
  count(
    distinct case
      when `o`.`cc_attendance` in ('attended', 'pending')
      and `o`.`memberbot_order_category` = 'training'
      and (
        `o`.`order_item_name` like '%Sport Leaders%'
        or `o`.`order_item_name` like '%Advanced Sport Skills%'
      ) then `o`.`order_item_name`
    end
  ) AS `attendance_training_advanced_sport_attended`,
  count(
    distinct case
      when `o`.`cc_attendance` in ('attended', 'pending')
      and `o`.`memberbot_order_category` in ('training', 'overnight', 'overnight-trips')
      and `o`.`order_item_name` like '%First Aid%' then `o`.`order_item_name`
    end
  ) AS `attendance_first_aid_attended`,
  count(
    distinct case
      when `o`.`cc_attendance` in ('attended', 'pending')
      and `o`.`memberbot_order_category` = 'training'
      and (
        `o`.`order_item_name` like '%Multipitch Trad Leading%'
        or `o`.`order_item_name` like '%Trad Leaders Skill Sharing%'
        or `o`.`order_item_name` like '%Trad Problem Solving%'
        or `o`.`order_item_name` like '%Trad Anchor-building%'
      ) then `o`.`order_item_name`
    end
  ) AS `attendance_training_advanced_trad_attended`,
  count(
    distinct case
      when `o`.`cc_attendance` = 'attended'
      and `o`.`memberbot_order_category` = 'social' then `o`.`order_item_name`
    end
  ) AS `attendance_social_attended`,
  count(
    distinct case
      when `o`.`cc_attendance` is not null
      and `o`.`cc_attendance` <> 'duplicate' then `o`.`order_item_name`
    end
  ) AS `attendance_signups`,
  count(
    distinct case
      when `o`.`cc_attendance` in (
        'bail',
        'cancelled',
        'cancel',
        'cancelled in advance'
      ) then `o`.`order_item_name`
    end
  ) AS `attendance_cancelled`,
  count(
    distinct case
      when `o`.`cc_attendance` in (
        'noregistershow',
        'no-register-show',
        'did not register and showed up'
      ) then `o`.`order_item_name`
    end
  ) AS `attendance_noregistershow`,
  count(
    distinct case
      when `o`.`cc_attendance` in (
        'noshow',
        'no-show',
        'did not show up and did not let us know'
      ) then `o`.`order_item_name`
    end
  ) AS `attendance_noshow`,
  count(
    distinct case
      when `o`.`cc_attendance` in ('cancelled due to bad weather', 'weather-cancel') then `o`.`order_item_name`
    end
  ) AS `attendance_weather_cancel`,
  count(
    distinct case
      when `o`.`cc_attendance` in (
        'cancelled by the Clan',
        'clancancel',
        'clan-cancel'
      ) then `o`.`order_item_name`
    end
  ) AS `attendance_clan_cancel`,
  count(
    distinct case
      when `o`.`cc_attendance` = 'late-baillatebail' then `o`.`order_item_name`
    end
  ) AS `attendance_latebail`,
  count(
    distinct case
      when `o`.`cc_attendance` = 'duplicate' then `o`.`order_item_name`
    end
  ) AS `attendance_duplicate`,
  count(
    distinct case
      when `o`.`cc_attendance` = 'pending'
      and (
        `o`.`cc_attendance` <> 'duplicate'
        or `o`.`cc_attendance` is not null
        or `o`.`cc_attendance` <> 'not_applicable'
      ) then `o`.`order_item_name`
    end
  ) AS `attendance_inprogress`
from
  (
    `wp_member_db` `u`
    left join `wp_order_product_customer_lookup` `o` on (`u`.`ID` = `o`.`user_id`)
  )
where
  `o`.`status` in (
    'wc-completed',
    'wc-processing',
    'wc-onhold',
    'wc-on-hold'
  )
group by
  `u`.`ID`