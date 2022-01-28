view: organization {
  sql_table_name: mst.Organization ;;
  drill_fields: [organization_id]

  dimension: organization_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrganizationID ;;
  }

  dimension: ipauthentication {
    type: string
    sql: ${TABLE}.IPAuthentication ;;
  }

  dimension: organization_name {
    type: string
    sql: ${TABLE}.OrganizationName ;;
  }

  measure: count {
    type: count
    drill_fields: [organization_id, organization_name]
  }
}
