{% snapshot first_model_snapshot %}

    {{
        config(
          target_database='DBT',
          target_schema='snapshots',
          strategy='timestamp',
          unique_key='country_code',
          updated_at='updated_at',
          invalidate_hard_deletes=True,
        )
    }}

    select * from {{ source('snap_shot_source', 'country_code_snap_1') }}

{% endsnapshot %}