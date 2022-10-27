with dataserver_data as (
    select * from {{ source('pg_sample_data', 'dataserver_data') }}
    where dic_dataservers_id = 2
),

final as (
select * from dataserver_data
)

select * from final