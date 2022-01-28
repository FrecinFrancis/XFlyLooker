view: country {
  sql_table_name: mst.Country ;;
  drill_fields: [country_id]

  dimension: country_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.CountryID ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.CountryCode ;;
  }

  dimension: created_by {
    type: number
    sql: ${TABLE}.CreatedBy ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CreatedDate ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.Latitude ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.Longitude ;;
  }

  measure: count {
    type: count
    drill_fields: [country_id, domain_country_reln.count, institution.count]
  }
}
