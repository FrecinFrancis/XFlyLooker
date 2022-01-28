view: logo {
  sql_table_name: mst.Logo ;;
  drill_fields: [logo_id]

  dimension: logo_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.LogoID ;;
  }

  dimension: logo_name {
    type: string
    sql: ${TABLE}.LogoName ;;
  }

  dimension: logo_type_id {
    type: number
    sql: ${TABLE}.LogoTypeID ;;
  }

  dimension: logo_url {
    type: string
    sql: ${TABLE}.LogoUrl ;;
  }

  measure: count {
    type: count
    drill_fields: [logo_id, logo_name]
  }
}
