view: section {
  sql_table_name: mst.Section ;;
  drill_fields: [section_id]

  dimension: section_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SectionID ;;
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

  dimension: section_name {
    type: string
    sql: ${TABLE}.SectionName ;;
  }

  measure: count {
    type: count
    drill_fields: [section_id, section_name]
  }
}
