WITH dim_user AS (

  select
    "u._id" as _id,
    "u.username" as username
  from
    {{ ref('stg_message') }}
  group by
    "u._id",
    "u.username"

)

SELECT * FROM dim_user
