view: institution {
  sql_table_name: mst.Institution ;;
  drill_fields: [institution_id]

  dimension: institution_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.InstitutionID ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: city_id {
    type: number
    sql: ${TABLE}.CityID ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.CountryCode ;;
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

  dimension: institution {
    type: string
    sql: ${TABLE}.Institution ;;
  }

  dimension: is_deleted {
    type: string
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.Latitude ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.Longitude ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: state_id {
    type: number
    sql: ${TABLE}.StateID ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.ZipCode ;;
  }

  measure: count {
    type: count
    drill_fields: [institution_id, country.country_id]
  }
}
