view: logo_type {
  sql_table_name: mst.LogoType ;;

  dimension: logo_type {
    type: string
    sql: ${TABLE}.LogoType ;;
  }

  dimension: logo_type_id {
    type: number
    sql: ${TABLE}.LogoTypeID ;;
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
