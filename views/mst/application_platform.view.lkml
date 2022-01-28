view: application_platform {
  sql_table_name: mst.ApplicationPlatform ;;

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CreatedDate ;;
  }

  dimension: platform_id {
    type: number
    sql: ${TABLE}.PlatformID ;;
  }

  dimension: platform_name {
    type: string
    sql: ${TABLE}.PlatformName ;;
  }

  measure: count {
    type: count
    drill_fields: [platform_name]
  }
}
