connection: "demo_x-fly_looker"

# include all the views
include: "/views/**/*.view"

datagroup: xflydemo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: xflydemo_default_datagroup

explore: application_platform {}

explore: country {}

explore: country_extended_details {}

explore: dependencies_rule {}

explore: dependency_field_type {}

explore: domain_country_reln {
  join: domains {
    type: left_outer
    sql_on: ${domain_country_reln.domain_id} = ${domains.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${domain_country_reln.country_id} = ${country.country_id} ;;
    relationship: many_to_one
  }
}

explore: domains {}

explore: expert {}

explore: expert_ol_tier_reln {
  join: expert {
    type: left_outer
    sql_on: ${expert_ol_tier_reln.expert_id} = ${expert.expert_id} ;;
    relationship: many_to_one
  }
}

explore: expert_team_reln {
  join: expert {
    type: left_outer
    sql_on: ${expert_team_reln.expert_id} = ${expert.expert_id} ;;
    relationship: many_to_one
  }
}

explore: filter_logical_operators {}

explore: form_fiel_ddefault_values {}

explore: insight_origin {}

explore: insight_return_reason {}

explore: insight_tag_tree_node_reln {
  join: tag {
    type: left_outer
    sql_on: ${insight_tag_tree_node_reln.tag_id} = ${tag.tag_id} ;;
    relationship: many_to_one
  }
}

explore: institution {
  join: country {
    type: left_outer
    sql_on: ${institution.country_id} = ${country.country_id} ;;
    relationship: many_to_one
  }
}

explore: ip_range {}

explore: logo {}

explore: logo_type {}

explore: nlplabels {}

explore: notification_entity_type {}

explore: ol_speciality {}

explore: ol_therapeutic_area {}

explore: oltier_filter_value {
  join: expert {
    type: left_outer
    sql_on: ${oltier_filter_value.expert_id} = ${expert.expert_id} ;;
    relationship: many_to_one
  }
}

explore: oltier_team_filter_values {}

explore: organization {}

explore: request_data_status_master {}

explore: restricted_form_fields {}

explore: section {}

explore: selection_type {}

explore: tag {}

explore: tag_parents {
  join: tag {
    type: left_outer
    sql_on: ${tag_parents.tag_id} = ${tag.tag_id} ;;
    relationship: many_to_one
  }
}

explore: tag_tree {}

explore: tag_tree_node_reln {
  join: tag {
    type: left_outer
    sql_on: ${tag_tree_node_reln.tag_id} = ${tag.tag_id} ;;
    relationship: many_to_one
  }
}

explore: theme {}

explore: theme_group_reln {
  join: theme {
    type: left_outer
    sql_on: ${theme_group_reln.theme_id} = ${theme.theme_id} ;;
    relationship: many_to_one
  }
}

explore: theme_team_reln {
  join: theme {
    type: left_outer
    sql_on: ${theme_team_reln.theme_id} = ${theme.theme_id} ;;
    relationship: many_to_one
  }
}

explore: therapeutic_area_speciality_reln {}

explore: time_zone {}

explore: user_type {}

explore: version {}
