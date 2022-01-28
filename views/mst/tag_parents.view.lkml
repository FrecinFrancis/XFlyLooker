view: tag_parents {
  sql_table_name: mst.TagParents ;;

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

  dimension: parent_id {
    type: number
    sql: ${TABLE}.ParentID ;;
  }

  dimension: reln_id {
    type: number
    sql: ${TABLE}.RelnID ;;
  }

  dimension: tag_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.TagID ;;
  }

  measure: count {
    type: count
    drill_fields: [tag.tag_id]
  }
}
