view: insight {
  sql_table_name: int.Insight ;;
  drill_fields: [veeva_insight_id]

  dimension: veeva_insight_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.VeevaInsightID ;;
  }

  dimension: approved_by {
    type: number
    sql: ${TABLE}.ApprovedBy ;;
  }

  dimension_group: approved {
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
    sql: ${TABLE}.ApprovedDate ;;
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

  dimension: insight_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InsightID ;;
  }

  dimension: insight_origin_id {
    type: number
    sql: ${TABLE}.InsightOriginID ;;
  }

  dimension: insight_text {
    type: string
    sql: ${TABLE}.InsightText ;;
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

  dimension: is_deleted {
    type: string
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: is_keyword_processed {
    type: string
    sql: ${TABLE}.IsKeywordProcessed ;;
  }

  dimension: is_linked {
    type: string
    sql: ${TABLE}.IsLinked ;;
  }

  dimension: is_permanently_deleted {
    type: string
    sql: ${TABLE}.IsPermanentlyDeleted ;;
  }

  dimension: is_reviewed {
    type: string
    sql: ${TABLE}.IsReviewed ;;
  }

  dimension: is_summary {
    type: string
    sql: ${TABLE}.IsSummary ;;
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

  dimension: rejected_by {
    type: number
    sql: ${TABLE}.RejectedBy ;;
  }

  dimension_group: rejected {
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
    sql: ${TABLE}.RejectedDate ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusID ;;
  }

  dimension: team_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.TeamID ;;
  }

  dimension: veeva_record_id {
    type: string
    sql: ${TABLE}.VeevaRecordID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      veeva_insight_id,
      insight.veeva_insight_id,
      interaction.has_no_veeva_interaction_id,
      interaction.institution_nick_name,
      team.team_id,
      team.team_name,
      audit_request_details.count,
      discussion_subtopic_insight_reln.count,
      historical_insight.count,
      historical_insight_attachments_file.count,
      historical_insight_manager_notes_reln.count,
      historical_insight_tag_reln.count,
      importancefor_therapeutic_area_insight_reln.count,
      indication_insight_reln.count,
      insight.count,
      insight_attachments_file.count,
      insight_comment_tagged_user_reln.count,
      insight_country_reln.count,
      insight_email_reln.count,
      insight_keyword_reln.count,
      insight_keyword_search.count,
      insight_log.count,
      insight_manager_notes_reln.count,
      insight_return_reason_history.count,
      insight_strategic_objective_reln.count,
      insight_tag_reln.count,
      insight_theme_reln.count,
      insight_tree_rule_reln.count,
      insight_vote_reln.count,
      interaction_insight_lock.count,
      interaction_origin_insight_reln.count,
      interaction_topic_insight_reln.count,
      linked_insight_reln.count,
      notifications.count,
      product_insight_reln.count,
      relevanceof_medical_insight_insight_reln.count,
      scientific_insight_category_insight_reln.count,
      scoring_matrix_answer.count,
      summary_insight_change_log.count,
      temp_tag.count,
      therapeutic_area_insight_reln.count,
      tmp_tag.count
    ]
  }
}
