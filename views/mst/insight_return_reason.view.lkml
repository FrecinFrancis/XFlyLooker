view: insight_return_reason {
  sql_table_name: mst.InsightReturnReason ;;

  dimension: display_order {
    type: number
    sql: ${TABLE}.DisplayOrder ;;
  }

  dimension: is_delete {
    type: string
    sql: ${TABLE}.IsDelete ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.Reason ;;
  }

  dimension: reason_id {
    type: number
    sql: ${TABLE}.ReasonID ;;
  }

  dimension: ref_id {
    type: number
    sql: ${TABLE}.RefID ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
