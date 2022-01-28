view: restricted_form_fields {
  sql_table_name: mst.RestrictedFormFields ;;

  dimension: restricted_form_field {
    type: string
    sql: ${TABLE}.RestrictedFormField ;;
  }

  dimension: restricted_form_field_id {
    type: number
    sql: ${TABLE}.RestrictedFormFieldID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
