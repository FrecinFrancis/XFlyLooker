view: keywords {
  sql_table_name: int.Keywords ;;
  drill_fields: [keyword_id]

  dimension: keyword_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.KeywordID ;;
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

  dimension: exclusion_id {
    type: number
    sql: ${TABLE}.ExclusionID ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}.Keyword ;;
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
      keyword_id,
      team.team_id,
      team.team_name,
      insight_keyword_reln.count,
      keyword_group_reln.count,
      keyword_team_reln.count,
      tempp_keywords.count
    ]
  }
}
