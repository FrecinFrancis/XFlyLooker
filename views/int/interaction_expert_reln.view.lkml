view: interaction_expert_reln {
  sql_table_name: int.InteractionExpertReln ;;

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

  dimension: institution_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InstitutionID ;;
  }

  dimension: interaction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InteractionID ;;
  }

  dimension: is_expert_not_applicable {
    type: string
    sql: ${TABLE}.IsExpertNotApplicable ;;
  }

  dimension: modified_by {
    type: number
    sql: ${TABLE}.ModifiedBy ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.ModifiedDate ;;
  }

  dimension: reln_id {
    type: number
    sql: ${TABLE}.RelnID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      interaction.has_no_veeva_interaction_id,
      interaction.institution_nick_name,
      expert.expert_id,
      expert.first_name,
      expert.last_name,
      expert.middle_name,
      expert.image_name,
      institution.institution_id
    ]
  }
}
