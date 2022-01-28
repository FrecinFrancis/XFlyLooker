view: ol_therapeutic_area {
  sql_table_name: mst.OL_TherapeuticArea ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: therapeutic_area {
    type: string
    sql: ${TABLE}.TherapeuticArea ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
