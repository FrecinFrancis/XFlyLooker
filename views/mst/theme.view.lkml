view: theme {
  sql_table_name: mst.Theme ;;
  drill_fields: [theme_id]

  dimension: theme_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ThemeID ;;
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

  dimension: is_archived {
    type: string
    sql: ${TABLE}.IsArchived ;;
  }

  dimension: is_deleted {
    type: string
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: merge_to {
    type: number
    sql: ${TABLE}.MergeTo ;;
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

  dimension: team_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.TeamID ;;
  }

  dimension: theme_name {
    type: string
    sql: ${TABLE}.ThemeName ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      theme_id,
      theme_name,
      team.team_id,
      team.team_name,
      insight_theme_reln.count,
      survey_question_theme_reln.count,
      temp_tag.count,
      theme_group_reln.count,
      theme_team_reln.count
    ]
  }
}
