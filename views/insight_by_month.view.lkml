view: insight_by_month {
  derived_table: {
    sql: -- raw sql results do not include filled-in values for 'insight.created_month'


      SELECT TOP (10)
          (CONVERT(VARCHAR(7),CONVERT(DATETIME2,(CAST(insight.CreatedDate  AS DATETIME2) AT TIME ZONE 'Greenwich Standard Time') AT TIME ZONE 'Pacific Standard Time'),120)) AS [insight.created_month],
          COUNT(*) AS [insight.count]
      FROM int.Insight  AS insight
      GROUP BY
          (CONVERT(VARCHAR(7),CONVERT(DATETIME2,(CAST(insight.CreatedDate  AS DATETIME2) AT TIME ZONE 'Greenwich Standard Time') AT TIME ZONE 'Pacific Standard Time'),120))
      ORDER BY
          1 DESC
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: insight_created_month {
    type: string
    sql: ${TABLE}."insight.created_month" ;;
  }

  dimension: insight_count {
    type: number
    sql: ${TABLE}."insight.count" ;;
  }

  set: detail {
    fields: [insight_created_month, insight_count]
  }
}
