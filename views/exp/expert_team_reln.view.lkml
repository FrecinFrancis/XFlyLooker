view: expert_team_reln {
  sql_table_name: exp.ExpertTeamReln ;;

  dimension: expert_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ExpertID ;;
  }

  dimension: is_disabled_in_capture {
    type: string
    sql: ${TABLE}.IsDisabledInCapture ;;
  }

  dimension: reln_id {
    type: number
    sql: ${TABLE}.RelnID ;;
  }

  dimension: team_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.TeamID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      team.team_id,
      team.team_name,
      expert.expert_id,
      expert.first_name,
      expert.last_name,
      expert.middle_name,
      expert.image_name
    ]
  }
}
