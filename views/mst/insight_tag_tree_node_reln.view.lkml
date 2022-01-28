view: insight_tag_tree_node_reln {
  sql_table_name: mst.InsightTagTreeNodeReln ;;

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

  dimension: display_order {
    type: number
    sql: ${TABLE}.DisplayOrder ;;
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

  dimension: parent_tag_id {
    type: number
    sql: ${TABLE}.ParentTagID ;;
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
