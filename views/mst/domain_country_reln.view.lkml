view: domain_country_reln {
  sql_table_name: mst.DomainCountryReln ;;

  dimension: country_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CountryID ;;
  }

  dimension: domain_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.DomainID ;;
  }

  dimension: reln_id {
    type: number
    sql: ${TABLE}.RelnID ;;
  }

  measure: count {
    type: count
    drill_fields: [domains.id, domains.domain_name, country.country_id]
  }
}
