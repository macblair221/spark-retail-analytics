-- Effect of Discount on Average Profit
SELECT
    CASE WHEN Discount > 0 THEN 'Discounted' ELSE 'Full Price' END AS sale_type,
    ROUND(AVG(Profit), 2) AS avg_profit
FROM `workspace`.`default`.`sample_superstore`
GROUP BY sale_type
ORDER BY avg_profit DESC;
