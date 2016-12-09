with actions as (

  select * from {{ref('fb_ads_insights_actions')}}

)

select
  md5(ad_id || '|' || date_day || '|' || id) as id,
  md5(date_day || '|' || ad_id) as insights_id,
  action_destination,
  action_type,
  num_actions
from actions