view: country_extended_details {
  sql_table_name: mst.CountryExtendedDetails ;;

  dimension: cdh_id {
    type: string
    sql: ${TABLE}."CDH ID" ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.COMMENTS ;;
  }

  dimension: country_alternate_names {
    type: string
    sql: ${TABLE}."COUNTRY ALTERNATE NAMES" ;;
  }

  dimension: fips_country_code {
    type: string
    sql: ${TABLE}."FIPS COUNTRY CODE" ;;
  }

  dimension: fips_country_name {
    type: string
    sql: ${TABLE}."FIPS COUNTRY NAME" ;;
  }

  dimension: gps_latitude {
    type: string
    sql: ${TABLE}."GPS LATITUDE" ;;
  }

  dimension: gps_longitude {
    type: string
    sql: ${TABLE}."GPS LONGITUDE" ;;
  }

  dimension: iso_31661_country_char_2_code {
    type: string
    sql: ${TABLE}."ISO 3166-1 COUNTRY CHAR 2 CODE" ;;
  }

  dimension: iso_31661_country_char_3_code {
    type: string
    sql: ${TABLE}."ISO 3166-1 COUNTRY CHAR 3 CODE" ;;
  }

  dimension: iso_31661_country_name {
    type: string
    sql: ${TABLE}."ISO 3166-1 COUNTRY NAME" ;;
  }

  dimension: iso_31661_country_number_code {
    type: string
    sql: ${TABLE}."ISO 3166-1 COUNTRY NUMBER CODE" ;;
  }

  dimension: un_region {
    type: string
    sql: ${TABLE}."UN REGION" ;;
  }

  dimension: un_sub_region_name {
    type: string
    sql: ${TABLE}."UN SUB REGION NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [iso_31661_country_name, fips_country_name, un_sub_region_name]
  }
}
