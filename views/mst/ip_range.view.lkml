view: ip_range {
  sql_table_name: mst.IpRange ;;

  dimension: ip_range {
    type: string
    sql: ${TABLE}.IP_Range ;;
  }

  dimension: ip_range_id {
    type: number
    sql: ${TABLE}.IpRange_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
