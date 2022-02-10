view: keyword_map_derived {
  derived_table: {
    sql: SELECT TOP (50)
          keywords.Keyword  AS [keywords.keyword],
          COUNT(*) AS [insight_keyword_reln.count]
      FROM int.InsightKeywordReln  AS insight_keyword_reln
      LEFT JOIN int.Keywords  AS keywords ON insight_keyword_reln.KeywordID = keywords.KeywordID
      GROUP BY
          keywords.Keyword
      ORDER BY
          2 DESC
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: keywords_keyword {
    type: string
    sql: ${TABLE}."keywords.keyword" ;;
  }

  dimension: insight_keyword_reln_count {
    type: number
    sql: ${TABLE}."insight_keyword_reln.count" ;;
  }

  set: detail {
    fields: [keywords_keyword, insight_keyword_reln_count]
  }
}
