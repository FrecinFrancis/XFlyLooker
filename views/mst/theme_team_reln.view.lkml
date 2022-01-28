view: theme_team_reln {
  sql_table_name: mst.ThemeTeamReln ;;

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
    sql: ${TABLE}.TeamID ;;
  }

  dimension: theme_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ThemeID ;;
  }

  dimension: theme_team_reln_id {
    type: number
    sql: ${TABLE}.ThemeTeamRelnID ;;
  }

  measure: count {
    type: count
    drill_fields: [theme.theme_id, theme.theme_name]
  }
}
