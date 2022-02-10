view: interaction {
  sql_table_name: int.Interaction ;;
  drill_fields: [has_no_veeva_interaction_id]

  dimension: has_no_veeva_interaction_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.HasNoVeevaInteractionID ;;
  }

  dimension: congress_presentation_external_id {
    type: string
    sql: ${TABLE}.CongressPresentationExternalId ;;
  }

  dimension: created_by {
    type: number
    sql: ${TABLE}.CreatedBy ;;
  }

  dimension: created_by_admin_user {
    type: number
    sql: ${TABLE}.CreatedByAdminUser ;;
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

  dimension: display_id {
    type: string
    sql: ${TABLE}.DisplayID ;;
  }

  dimension_group: insight {
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
    sql: ${TABLE}.InsightDate ;;
  }

  dimension: institution_nick_name {
    type: string
    sql: ${TABLE}.InstitutionNickName ;;
  }

  dimension: interaction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InteractionID ;;
  }

  dimension: is_admin_create {
    type: string
    sql: ${TABLE}.IsAdminCreate ;;
  }

  dimension: is_admin_edit {
    type: string
    sql: ${TABLE}.IsAdminEdit ;;
  }

  dimension: is_delete {
    type: string
    sql: ${TABLE}.IsDelete ;;
  }

  dimension: is_from_interaction {
    type: string
    sql: ${TABLE}.IsFromInteraction ;;
  }

  dimension: is_from_veeva {
    type: string
    sql: ${TABLE}.IsFromVeeva ;;
  }

  dimension: is_permanently_deleted {
    type: string
    sql: ${TABLE}.IsPermanentlyDeleted ;;
  }

  dimension: legacy_id {
    type: number
    sql: ${TABLE}.LegacyID ;;
  }

  dimension: modified_by {
    type: number
    sql: ${TABLE}.ModifiedBy ;;
  }

  dimension: modified_by_admin_user {
    type: number
    sql: ${TABLE}.ModifiedByAdminUser ;;
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

  dimension: reason_for_delete {
    type: string
    sql: ${TABLE}.ReasonForDelete ;;
  }

  dimension: save_to_draft_status {
    type: string
    sql: ${TABLE}.SaveToDraftStatus ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.Status ;;
  }

  dimension: team_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.TeamID ;;
  }

  dimension: veeva_interaction_id {
    type: string
    sql: ${TABLE}.VeevaInteractionID ;;
  }

  dimension: veeva_record_id {
    type: string
    sql: ${TABLE}.VeevaRecordID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: submitter_count {
    type: count_distinct
    sql: ${created_by} ;;
  }

  measure: mininsightDate {
    type: min
    sql: ${insight_date}
    value_format: "%e %B %Y";;
  }

  measure: maxinsightDate {
    type: max
    sql: ${insight_date}
    value_format: "%e %B %Y";;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      has_no_veeva_interaction_id,
      institution_nick_name,
      interaction.has_no_veeva_interaction_id,
      interaction.institution_nick_name,
      team.team_id,
      team.team_name,
      audit_request_details.count,
      historical_insight.count,
      historical_interaction.count,
      historical_interaction_expert_reln.count,
      historical_interaction_form_field_value_reln.count,
      insight.count,
      insight_return_reason_history.count,
      insight_tree_rule_reln.count,
      interaction.count,
      interaction_associated_expert_reln.count,
      interaction_expert_reln.count,
      interaction_form_field_value_reln.count,
      interaction_form_field_visibility.count,
      interaction_insight_lock.count,
      tmp_interaction.count
    ]
  }
}
