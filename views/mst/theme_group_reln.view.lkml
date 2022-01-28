view: theme_group_reln {
  sql_table_name: mst.ThemeGroupReln ;;

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

  dimension: group_id {
    type: number
    sql: ${TABLE}.GroupID ;;
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

  dimension: theme_group_reln_id {
    type: number
    sql: ${TABLE}.ThemeGroupRelnID ;;
  }

  dimension: theme_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ThemeID ;;
  }

  measure: count {
    type: count
    drill_fields: [theme.theme_id, theme.theme_name]
  }
}
