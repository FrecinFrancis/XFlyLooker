view: dependencies_rule {
  sql_table_name: mst.DependenciesRule ;;

  dimension: rule_id {
    type: number
    sql: ${TABLE}.RuleID ;;
  }

  dimension: rule_name {
    type: string
    sql: ${TABLE}.RuleName ;;
  }

  measure: count {
    type: count
    drill_fields: [rule_name]
  }
}
