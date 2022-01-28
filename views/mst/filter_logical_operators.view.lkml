view: filter_logical_operators {
  sql_table_name: mst.FilterLogicalOperators ;;

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: operator {
    type: string
    sql: ${TABLE}.Operator ;;
  }

  dimension: operator_id {
    type: number
    sql: ${TABLE}.OperatorID ;;
  }

  dimension: reln_id {
    type: number
    sql: ${TABLE}.RelnID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
