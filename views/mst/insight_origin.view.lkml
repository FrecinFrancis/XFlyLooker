view: insight_origin {
  sql_table_name: mst.InsightOrigin ;;

  dimension: insight_origin_id {
    type: number
    sql: ${TABLE}.InsightOriginID ;;
  }

  dimension: insight_origin_text {
    type: string
    sql: ${TABLE}.InsightOriginText ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
