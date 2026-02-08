CREATE DATABASE nifty_project;
use nifty_project;

CREATE TABLE nifty_stock (
    date DATE,
    symbol VARCHAR(20),
    series VARCHAR(5),
    prev_close FLOAT,
    open FLOAT,
    high FLOAT,
    low FLOAT,
    last FLOAT,
    close FLOAT,
    vwap FLOAT,
    volume BIGINT,
    turnover DOUBLE,
    trades BIGINT,
    deliverable_volume BIGINT,
    deliverble_per FLOAT,
    daily_return FLOAT,
    price_range FLOAT,
    date_fixed DATE
);

SELECT date_fixed FROM nifty_stock LIMIT 10;

#Monthly Market Trend
SELECT 
    YEAR(date_fixed) AS year,
    MONTH(date_fixed) AS month,
    AVG(close) AS avg_price
FROM nifty_stock
GROUP BY YEAR(date_fixed), MONTH(date_fixed)
ORDER BY year, month;

#Top 10 Most Traded Stocks (by Volume)
SELECT symbol, SUM(volume) AS total_volume
FROM nifty_stock
GROUP BY symbol
ORDER BY total_volume DESC
LIMIT 10;

#Average Closing Price per Stock
SELECT symbol, round(AVG(close),3) AS avg_close_price
FROM nifty_stock
GROUP BY symbol
ORDER BY avg_close_price DESC;

#Most Volatile Stocks (Risky ones)
SELECT symbol, round(AVG(price_range),3) AS avg_volatility
FROM nifty_stock
GROUP BY symbol
ORDER BY avg_volatility DESC
LIMIT 10;


#Best Return Days
SELECT date_fixed, symbol, daily_return
FROM nifty_stock
ORDER BY daily_return DESC
LIMIT 10;

#Worst Loss Days
SELECT date_fixed, symbol, daily_return
FROM nifty_stock
ORDER BY daily_return ASC
LIMIT 10;

SELECT 
    DAYNAME(date_fixed) AS day_of_week,
    ROUND(AVG(daily_return) * 100, 3) AS avg_return_percent
FROM nifty_stock
GROUP BY DAYNAME(date_fixed)
ORDER BY 
    FIELD(day_of_week, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday');


SELECT 
    MONTHNAME(date_fixed) AS month,
    ROUND(AVG(daily_return) * 100, 3) AS avg_return_percent
FROM nifty_stock
GROUP BY MONTH(date_Fixed), MONTHNAME(date_fixed)
ORDER BY avg_return_percent DESC;




