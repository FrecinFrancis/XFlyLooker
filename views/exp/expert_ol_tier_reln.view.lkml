view: expert_ol_tier_reln {
  sql_table_name: exp.ExpertOlTierReln ;;

  dimension: created_by {
    type: number
    sql: ${TABLE}.CreatedBy ;;
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

  dimension: expert_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ExpertID ;;
  }

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

  dimension: tier_value {
    type: number
    sql: ${TABLE}.TierValue ;;
  }

  measure: count {
    type: count
    drill_fields: [expert.expert_id, expert.first_name, expert.last_name, expert.middle_name, expert.image_name]
  }
}
