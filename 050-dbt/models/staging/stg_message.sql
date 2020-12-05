WITH stg_message AS (

  select
    null::BIGINT as id,
    null::TEXT as _id,
    null::TEXT as t,
    null::TEXT as rid,
    null::TEXT as ts,
    null::TEXT as msg,
    null::BOOLEAN as groupable,
    null::TEXT as "_updatedAt",
    null::TEXT as "u._id",
    null::TEXT as "u.username"
)

SELECT * FROM stg_message WHERE _id IS NOT NULL
