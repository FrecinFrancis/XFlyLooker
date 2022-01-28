view: domains {
  sql_table_name: mst.Domains ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: domain_name {
    type: string
    sql: ${TABLE}.DomainName ;;
  }

  dimension: domain_url {
    type: string
    sql: ${TABLE}.DomainUrl ;;
  }

  dimension: is_default {
    type: string
    sql: ${TABLE}.IsDefault ;;
  }

  measure: count {
    type: count
    drill_fields: [id, domain_name, domain_country_reln.count]
  }
}
