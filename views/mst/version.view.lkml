view: version {
  sql_table_name: mst.Version ;;
  drill_fields: [version_id]

  dimension: version_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.VersionID ;;
  }

  dimension: created_by {
    type: number
    sql: ${TABLE}.CreatedBy ;;
  }

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

  dimension: is_deleted {
    type: string
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: modified_by {
    type: number
    sql: ${TABLE}.ModifiedBy ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.ModifiedDate ;;
  }

  dimension: version_name {
    type: string
    sql: ${TABLE}.VersionName ;;
  }

  measure: count {
    type: count
    drill_fields: [version_id, version_name]
  }
}
