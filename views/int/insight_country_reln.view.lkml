view: insight_country_reln {
  sql_table_name: int.InsightCountryReln ;;

  dimension: country_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CountryID ;;
  }

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GroupID ;;
  }

  dimension: insight_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InsightID ;;
  }

  dimension: reln_id {
    type: number
    sql: ${TABLE}.RelnID ;;
  }

  measure: count {
    type: count
    drill_fields: [insight.veeva_insight_id, group.group_id, group.group_name, country.country_id]
  }
}
