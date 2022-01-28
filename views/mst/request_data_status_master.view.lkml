view: request_data_status_master {
  sql_table_name: mst.RequestDataStatusMaster ;;

  dimension: ref_id {
    type: number
    sql: ${TABLE}.RefID ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
