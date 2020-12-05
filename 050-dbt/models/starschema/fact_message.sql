with fact_message as (

  select
    count(m._id) as units,
    u._id as "dim_user._id",
    t._id as "dim_time._id"
  from
    {{ ref('stg_message') }} m
  inner join
    {{ ref('dim_user') }} u on (m."u._id" = u._id)
  inner join
    {{ ref('dim_time') }} t on (uuid_string('fe971b24-9572-4005-b22f-351e9c09274d', m.ts) = t._id)
  group by
    u._id,
    t._id

)

SELECT * FROM fact_message
