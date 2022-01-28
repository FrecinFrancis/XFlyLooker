view: expert {
  sql_table_name: exp.Expert ;;
  drill_fields: [expert_id]

  dimension: expert_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ExpertID ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.AccountID ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.ExternalID ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: image_name {
    type: string
    sql: ${TABLE}.ImageName ;;
  }

  dimension: initial {
    type: string
    sql: ${TABLE}.Initial ;;
  }

  dimension: is_bitarget {
    type: string
    sql: ${TABLE}.IsBITarget ;;
  }

  dimension: is_default {
    type: string
    sql: ${TABLE}.IsDefault ;;
  }

  dimension: is_deleted {
    type: string
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: is_manual_add {
    type: string
    sql: ${TABLE}.IsManualAdd ;;
  }

  dimension: is_not_applicable {
    type: string
    sql: ${TABLE}.IsNotApplicable ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.MiddleName ;;
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

  dimension: phone {
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: primary_address {
    type: string
    sql: ${TABLE}.PrimaryAddress ;;
  }

  dimension: reference_id {
    type: number
    sql: ${TABLE}.ReferenceID ;;
  }

  dimension: veeva_record_id {
    type: string
    sql: ${TABLE}.VeevaRecordID ;;
  }

  dimension: visible_in_team_field_rule {
    type: number
    sql: ${TABLE}.VisibleInTeamFieldRule ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      expert_id,
      first_name,
      last_name,
      middle_name,
      image_name,
      expert_ol_tier_reln.count,
      expert_team_reln.count,
      oltier_filter_value.count
    ]
  }
}
