view: tag {
  sql_table_name: mst.Tag ;;
  drill_fields: [tag_id]

  dimension: tag_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.TagID ;;
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

  dimension: is_archive {
    type: string
    sql: ${TABLE}.IsArchive ;;
  }

  dimension: is_deleted {
    type: string
    sql: ${TABLE}.IsDeleted ;;
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

  dimension: tag {
    type: string
    sql: ${TABLE}.Tag ;;
  }

  dimension: tree_id {
    type: number
    sql: ${TABLE}.TreeID ;;
  }

  measure: count {
    type: count
    drill_fields: [tag_id, insight_tag_tree_node_reln.count, tag_parents.count, tag_tree_node_reln.count]
  }
}
