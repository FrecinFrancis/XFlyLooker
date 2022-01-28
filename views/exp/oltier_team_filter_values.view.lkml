view: oltier_team_filter_values {
  sql_table_name: exp.OLTierTeamFilterValues ;;

  dimension: filter_value {
    type: string
    sql: ${TABLE}.FilterValue ;;
  }

  dimension: reln_id {
    type: number
    sql: ${TABLE}.RelnID ;;
  }

  dimension: team_filter_id {
    type: number
    sql: ${TABLE}.TeamFilterID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
