view: insight_theme_reln {
  sql_table_name: int.InsightThemeReln ;;

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

  dimension: theme_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ThemeID ;;
  }

  measure: count {
    type: count
    drill_fields: [theme.theme_id, theme.theme_name, insight.veeva_insight_id]
  }
}
