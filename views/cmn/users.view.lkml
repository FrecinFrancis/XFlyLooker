view: users {
  sql_table_name: cmn.Users ;;
  drill_fields: [veeva_user_id]

  dimension: veeva_user_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.VeevaUserID ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
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

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: domain_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DomainID ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: initial {
    type: string
    sql: ${TABLE}.Initial ;;
  }

  dimension: is_client {
    type: string
    sql: ${TABLE}.IsClient ;;
  }

  dimension: is_deleted {
    type: string
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: is_locked {
    type: string
    sql: ${TABLE}.IsLocked ;;
  }

  dimension: is_password_expired {
    type: string
    sql: ${TABLE}.IsPasswordExpired ;;
  }

  dimension: is_temporary_password {
    type: string
    sql: ${TABLE}.IsTemporaryPassword ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
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

  dimension: organization_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrganizationID ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.Password ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: ssoname_id {
    type: string
    sql: ${TABLE}.SSONameID ;;
  }

  dimension: therapy_area {
    type: string
    sql: ${TABLE}.TherapyArea ;;
  }

  dimension: time_zone_id {
    type: number
    sql: ${TABLE}.TimeZoneID ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.UserID ;;
  }

  dimension: veeva_record_id {
    type: string
    sql: ${TABLE}.VeevaRecordID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      veeva_user_id,
      first_name,
      last_name,
      users.first_name,
      users.last_name,
      users.veeva_user_id,
      domains.id,
      domains.domain_name,
      organization.organization_id,
      organization.organization_name,
      audit_log.count,
      audit_log_report.count,
      audit_request_details.count,
      audit_request_summary.count,
      daily_summary_log.count,
      default_team_area_portal_reln.count,
      error_log.count,
      insight_comment_tagged_user_reln.count,
      interaction_insight_log.count,
      notifications.count,
      real_time_email_log.count,
      server_maintenance_user_status.count,
      tmp_interaction.count,
      tmp_tag.count,
      users.count
    ]
  }
}
