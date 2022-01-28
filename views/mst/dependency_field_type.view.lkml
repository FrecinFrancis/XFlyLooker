view: dependency_field_type {
  sql_table_name: mst.DependencyFieldType ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: dependency_field_type {
    type: string
    sql: ${TABLE}.DependencyFieldType ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
