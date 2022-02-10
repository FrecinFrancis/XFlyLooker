view: insight_keyword_reln {
  sql_table_name: int.InsightKeywordReln ;;

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

  dimension: insight_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InsightID ;;
  }

  dimension: keyword_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.KeywordID ;;
  }

  dimension: reln_id {
    type: number
    sql: ${TABLE}.RelnID ;;
  }

  measure: count {
    type: count
    drill_fields: [keywords.keyword_id, insight.veeva_insight_id]
  }
}
