view: city {
  sql_table_name: cmn.City ;;
  drill_fields: [city_id]

  dimension: city_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.CityID ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CountryID ;;
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

  dimension: state_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.StateID ;;
  }

  measure: count {
    type: count
    drill_fields: [city_id, states.state_id, country.country_id, institution.count]
  }
}
