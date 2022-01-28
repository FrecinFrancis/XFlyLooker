view: time_zone {
  sql_table_name: mst.TimeZone ;;

  dimension: abbreviation {
    type: string
    sql: ${TABLE}.Abbreviation ;;
  }

  dimension: original_time_zone_name {
    type: string
    sql: ${TABLE}.OriginalTimeZoneName ;;
  }

  dimension: original_utcoffset_in_hours {
    type: string
    sql: ${TABLE}.OriginalUTCOffsetInHours ;;
  }

  dimension: time_zone_id {
    type: number
    sql: ${TABLE}.TimeZoneID ;;
  }

  dimension: time_zone_name {
    type: string
    sql: ${TABLE}.TimeZoneName ;;
  }

  dimension: utcoffset {
    type: string
    sql: ${TABLE}.UTCOffset ;;
  }

  dimension: utcoffset_in_hours {
    type: number
    sql: ${TABLE}.UTCOffsetInHours ;;
  }

  measure: count {
    type: count
    drill_fields: [time_zone_name, original_time_zone_name]
  }
}
