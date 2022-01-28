view: therapeutic_area_speciality_reln {
  sql_table_name: exp.TherapeuticAreaSpecialityReln ;;

  dimension: reln_id {
    type: number
    sql: ${TABLE}.RelnID ;;
  }

  dimension: speciality_id {
    type: number
    sql: ${TABLE}.SpecialityID ;;
  }

  dimension: therapeutic_area_id {
    type: number
    sql: ${TABLE}.TherapeuticAreaID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
