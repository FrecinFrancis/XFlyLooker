connection: "demo_x-fly_looker"

# include all the views
include: "/views/**/*.view"

datagroup: xfly_poc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: xfly_poc_default_datagroup

explore: country {}

explore: expert {}

explore: expert_team_reln {
  join: team {
    type: left_outer
    sql_on: ${expert_team_reln.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }

  join: expert {
    type: left_outer
    sql_on: ${expert_team_reln.expert_id} = ${expert.expert_id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${team.country_id} = ${country.country_id} ;;
    relationship: many_to_one
  }
}

explore: insight {
  join: interaction {
    type: left_outer
    sql_on: ${insight.interaction_id} = ${interaction.has_no_veeva_interaction_id} ;;
    relationship: many_to_one
  }

  join: team {
    type: left_outer
    sql_on: ${insight.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${team.country_id} = ${country.country_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${insight.created_by} = ${users.user_id} ;;
    relationship: one_to_one
  }
}


explore: insight_country_reln {
  join: insight {
    type: left_outer
    sql_on: ${insight_country_reln.insight_id} = ${insight.veeva_insight_id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${insight_country_reln.country_id} = ${country.country_id} ;;
    relationship: many_to_one
  }

  join: interaction {
    type: left_outer
    sql_on: ${insight.interaction_id} = ${interaction.has_no_veeva_interaction_id} ;;
    relationship: many_to_one
  }

  join: team {
    type: left_outer
    sql_on: ${insight.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }
}

explore: insight_keyword_reln {
  join: keywords {
    type: left_outer
    sql_on: ${insight_keyword_reln.keyword_id} = ${keywords.keyword_id} ;;
    relationship: many_to_one
  }

  join: insight {
    type: left_outer
    sql_on: ${insight_keyword_reln.insight_id} = ${insight.veeva_insight_id} ;;
    relationship: many_to_one
  }

  join: team {
    type: left_outer
    sql_on: ${keywords.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${team.country_id} = ${country.country_id} ;;
    relationship: many_to_one
  }

  join: interaction {
    type: left_outer
    sql_on: ${insight.interaction_id} = ${interaction.has_no_veeva_interaction_id} ;;
    relationship: many_to_one
  }
}

explore: insight_theme_reln {
  join: theme {
    type: left_outer
    sql_on: ${insight_theme_reln.theme_id} = ${theme.theme_id} ;;
    relationship: many_to_one
  }

  join: insight {
    type: left_outer
    sql_on: ${insight_theme_reln.insight_id} = ${insight.veeva_insight_id} ;;
    relationship: many_to_one
  }

  join: team {
    type: left_outer
    sql_on: ${theme.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${team.country_id} = ${country.country_id} ;;
    relationship: many_to_one
  }

  join: interaction {
    type: left_outer
    sql_on: ${insight.interaction_id} = ${interaction.has_no_veeva_interaction_id} ;;
    relationship: many_to_one
  }
}

explore: interaction {
  join: team {
    type: left_outer
    sql_on: ${interaction.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${team.country_id} = ${country.country_id} ;;
    relationship: many_to_one
  }
}

explore: interaction_expert_reln {
  join: interaction {
    type: left_outer
    sql_on: ${interaction_expert_reln.interaction_id} = ${interaction.has_no_veeva_interaction_id} ;;
    relationship: many_to_one
  }

  join: expert {
    type: left_outer
    sql_on: ${interaction_expert_reln.expert_id} = ${expert.expert_id} ;;
    relationship: many_to_one
  }

  join: team {
    type: left_outer
    sql_on: ${interaction.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${team.country_id} = ${country.country_id} ;;
    relationship: many_to_one
  }
}

explore: keywords {
  join: team {
    type: left_outer
    sql_on: ${keywords.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${team.country_id} = ${country.country_id} ;;
    relationship: many_to_one
  }
}

explore: team {
  join: country {
    type: left_outer
    sql_on: ${team.country_id} = ${country.country_id} ;;
    relationship: many_to_one
  }
}

explore: theme {
  join: team {
    type: left_outer
    sql_on: ${theme.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${team.country_id} = ${country.country_id} ;;
    relationship: many_to_one
  }
}

explore: users {
}
