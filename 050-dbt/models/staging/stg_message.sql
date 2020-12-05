
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with stg_message as (

  select
    id BIGINT,
    _id TEXT,
    t TEXT,
    rid TEXT,
    ts TEXT,
    msg TEXT,
    groupable BOOLEAN,
    "_updatedAt" TEXT,
    "u._id" TEXT,
    "u.username" TEXT
)

select *
from stg_message

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
