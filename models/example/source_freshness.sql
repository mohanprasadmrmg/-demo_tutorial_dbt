
with source_freshness as(
select
  max(updated_at ) as max_loaded_at,
  convert_timezone('UTC', current_timestamp()) as snapshotted_at
from from {{ source('for_freshness', 'sountry_code_snap_1') }}

where datediff('day', updated_at , current_timestamp) < 2
)

final as(
    select *from source_freshness
)
select * from final 

