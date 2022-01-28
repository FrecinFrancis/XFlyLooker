view: notification_entity_type {
  sql_table_name: mst.NotificationEntityType ;;

  dimension: notification_entity_type {
    type: string
    sql: ${TABLE}.NotificationEntityType ;;
  }

  dimension: notification_entity_type_id {
    type: number
    sql: ${TABLE}.NotificationEntityTypeID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
