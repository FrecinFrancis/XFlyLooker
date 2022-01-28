view: nlplabels {
  sql_table_name: mst.NLPLabels ;;

  dimension: label {
    type: string
    sql: ${TABLE}.Label ;;
  }

  dimension: label_id {
    type: number
    sql: ${TABLE}.LabelID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
