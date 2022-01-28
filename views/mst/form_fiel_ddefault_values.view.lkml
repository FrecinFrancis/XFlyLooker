view: form_fiel_ddefault_values {
  sql_table_name: mst.FormFielDDefaultValues ;;

  dimension: default_value {
    type: string
    sql: ${TABLE}.DefaultValue ;;
  }

  dimension: default_value_id {
    type: number
    sql: ${TABLE}.DefaultValueID ;;
  }

  dimension: is_not_applicable {
    type: string
    sql: ${TABLE}.IsNotApplicable ;;
  }

  dimension: is_visible_in_client_admin {
    type: string
    sql: ${TABLE}.IsVisibleInClientAdmin ;;
  }

  dimension: is_visible_in_form_field_value_list {
    type: string
    sql: ${TABLE}.IsVisibleInFormFieldValueList ;;
  }

  dimension: is_visible_in_team_field_rule {
    type: string
    sql: ${TABLE}.isVisibleInTeamFieldRule ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
