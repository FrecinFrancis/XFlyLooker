view: ol_speciality {
  sql_table_name: mst.Ol_Speciality ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
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

  dimension: speciality {
    type: string
    sql: ${TABLE}.Speciality ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
