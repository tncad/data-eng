WITH dim_time AS (

  select
    uuid_string('fe971b24-9572-4005-b22f-351e9c09274d', ts) as _id,
    ts as dt,
    hour(to_time('00:00:00','HH24:MI:SS')) as hour,
    day(to_date( TS, 'DD-MM-YYYY')) as day,
    month(to_date( TS, 'DD-MM-YYYY')) as month,
    year(to_date( TS, 'DD-MM-YYYY')) as year,
    dayofweek(to_date( TS, 'DD-MM-YYYY')) as weekday,
    weekofyear(to_date( TS, 'DD-MM-YYYY')) as weeknum
  from
    {{ ref('stg_message') }}
  group by
    ts

)

SELECT * FROM dim_time
