view: team {
  sql_table_name: cmn.Team ;;
  drill_fields: [team_id]

  dimension: team_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.TeamID ;;
  }

  dimension: country_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CountryID ;;
  }

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

  dimension: dpmid {
    type: number
    value_format_name: id
    sql: ${TABLE}.DPMID ;;
  }

  dimension: is_deleted {
    type: string
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: is_insight_vote_enabled {
    type: string
    sql: ${TABLE}.IsInsightVoteEnabled ;;
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

  dimension: team_name {
    type: string
    sql: ${TABLE}.TeamName ;;
  }

  dimension: time_zone_id {
    type: number
    sql: ${TABLE}.TimeZoneID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      team_id,
      team_name,
      country.country_id,
      audit_log_report.count,
      daily_summary_log.count,
      discussion_subtopic_insight_reln.count,
      expert_team_reln.count,
      form_field_dependencies_rule_reln.count,
      form_field_display_order.count,
      group_team_reln.count,
      historical_insight.count,
      historical_insight_attachments_file.count,
      historical_insight_manager_notes_reln.count,
      historical_interaction.count,
      importancefor_therapeutic_area_insight_reln.count,
      indication_insight_reln.count,
      insight.count,
      insight_attachments_file.count,
      insight_email_reln.count,
      insight_keyword_search.count,
      insight_manager_notes_reln.count,
      insight_return_reason_history.count,
      interaction.count,
      interaction_origin_insight_reln.count,
      interaction_topic_insight_reln.count,
      keywords.count,
      keyword_team_reln.count,
      product_insight_reln.count,
      real_time_email_log.count,
      relevanceof_medical_insight_insight_reln.count,
      scheduler.count,
      scientific_insight_category_insight_reln.count,
      team_attributes_reln.count,
      team_country_reln.count,
      team_email_notification_reln.count,
      team_form_field_reln.count,
      team_form_field_role_reln.count,
      team_stage_config_reln.count,
      team_stage_tree_reln.count,
      tempp_keywords.count,
      theme.count,
      theme_team_reln.count,
      therapeutic_area_insight_reln.count,
      tmp_interaction.count,
      tmp_tag.count,
      veeva_team_attribute_team_reln.count
    ]
  }
}
