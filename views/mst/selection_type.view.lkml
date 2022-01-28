view: selection_type {
  sql_table_name: mst.SelectionType ;;

  dimension: ref_id {
    type: number
    sql: ${TABLE}.RefId ;;
  }

  dimension: selection_type_id {
    type: number
    sql: ${TABLE}.SelectionTypeID ;;
  }

  dimension: selection_type_name {
    type: string
    sql: ${TABLE}.SelectionTypeName ;;
  }

  measure: count {
    type: count
    drill_fields: [selection_type_name]
  }
}
