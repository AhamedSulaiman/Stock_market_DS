<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Stock Market Analysis & Price Prediction</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            line-height: 1.6;
            margin: 40px;
            background-color: #ffffff;
            color: #333;
        }
        h1, h2, h3 {
            color: #0b5394;
        }
        pre {
            background-color: #f4f4f4;
            padding: 12px;
            border-radius: 6px;
            overflow-x: auto;
            font-family: Consolas, monospace;
        }
        ul {
            margin-left: 20px;
        }
        .section {
            margin-bottom: 30px;
        }
        .highlight {
            background-color: #eef3f9;
            padding: 12px;
            border-left: 4px solid #0b5394;
        }
    </style>
</head>

<body>

<h1>📈 Stock Market Analysis & Price Prediction (NIFTY Stocks)</h1>

<div class="section">
    <h2>🔍 Project Overview</h2>
    <p>
        This project performs an <strong>end-to-end stock market analysis and price prediction</strong>
        using historical NIFTY stock data. It combines <strong>Power BI</strong> for descriptive analytics
        with <strong>Python-based Machine Learning</strong> for predictive modeling.
    </p>
    <p>
        The workflow follows an industry-style pipeline:
        <strong>Data Analysis → Insights → Machine Learning → Evaluation</strong>.
    </p>
</div>

<div class="section">
    <h2>🎯 Objectives</h2>
    <ul>
        <li>Analyze historical stock market trends and trading behavior</li>
        <li>Identify top-performing and worst-performing stocks</li>
        <li>Understand volatility, volume, and return patterns</li>
        <li>Predict the next-day closing price using Machine Learning</li>
        <li>Interpret and validate model performance</li>
    </ul>
</div>

<div class="section">
    <h2>🧾 Dataset Description</h2>
    <ul>
        <li>Date</li>
        <li>Stock Symbol</li>
        <li>Open, High, Low, Close prices</li>
        <li>Volume and Turnover</li>
        <li>Daily Returns</li>
        <li>Price Range (Volatility)</li>
    </ul>
    <p>
        Additional features such as lag prices, moving averages, and rolling volatility
        were engineered during the Machine Learning phase.
    </p>
</div>

<div class="section">
    <h2>🧰 Tools & Technologies</h2>

    <h3>📊 Data Analysis & Visualization</h3>
    <ul>
        <li>Power BI – Interactive dashboards & KPI insights</li>
        <li>Excel / Power Query – Data cleaning</li>
    </ul>

    <h3>🧠 Data Science & Machine Learning</h3>
    <ul>
        <li>Python (pandas, numpy)</li>
        <li>matplotlib, seaborn</li>
        <li>scikit-learn</li>
        <li>Random Forest Regressor</li>
        <li>XGBoost (benchmarking)</li>
        <li>Streamlit (deployment)</li>
    </ul>
</div>

<div class="section">
    <h2>📊 Power BI Dashboard</h2>
    <ul>
        <li>Market-wide trading volume trends</li>
        <li>Top and worst performing stocks</li>
        <li>Volatility and price range analysis</li>
        <li>KPI cards for average price, returns, and volume</li>
    </ul>

    <div class="highlight">
        <strong>Key Insight:</strong>
        The market demonstrates long-term growth with rising participation,
        especially in later years where trading activity accelerates significantly.
    </div>
</div>

<div class="section">
    <h2>🧠 Machine Learning Workflow</h2>

    <h3>1️⃣ Feature Engineering</h3>
    <ul>
        <li>Lag prices (previous close values)</li>
        <li>5-day and 10-day moving averages</li>
        <li>Rolling volatility</li>
        <li>Trading volume</li>
    </ul>
    <p>
        Stock symbols were intentionally excluded as model features to avoid identity bias,
        while stock-wise grouping was used during feature creation to preserve temporal continuity.
    </p>

    <h3>2️⃣ Model Selection</h3>
    <p>
        A <strong>Random Forest Regressor</strong> was selected as the final model due to its
        robustness and superior generalization on financial time-series data.
    </p>

    <h3>3️⃣ Model Evaluation</h3>
    <ul>
        <li>Mean Absolute Error (MAE)</li>
        <li>Root Mean Squared Error (RMSE)</li>
    </ul>
    <p>
        Final performance achieved:
        <strong>MAE ≈ ₹37</strong> and <strong>RMSE ≈ ₹166</strong>,
        which is reasonable given stock market volatility.
    </p>

    <h3>4️⃣ Model Diagnostics</h3>
    <ul>
        <li>Actual vs Predicted plots</li>
        <li>Error distribution analysis</li>
        <li>Feature importance visualization</li>
    </ul>
</div>

<div class="section">
    <h2>🚀 How to Run the Project</h2>

    <h3>1️⃣ Clone the Repository</h3>
    <pre>
git clone https://github.com/your-username/stock-market-analysis.git
    </pre>

    <h3>2️⃣ Install Dependencies</h3>
    <pre>
pip install pandas numpy matplotlib seaborn scikit-learn xgboost streamlit joblib
    </pre>

    <h3>3️⃣ Run the Machine Learning Pipeline</h3>
    <pre>
python stock_price_prediction.py
    </pre>

    <h3>4️⃣ (Optional) Run the Streamlit App</h3>
    <pre>
streamlit run app.py
    </pre>
</div>

<div class="section">
    <h2>📁 Project Structure</h2>
    <pre>
├── nifty_stock.csv
├── stock_price_prediction.py
├── random_forest_no_symbol.pkl
├── rf_predictions_no_symbol.csv
├── app.py
├── README.html
    </pre>
</div>

<div class="section">
    <h2>💼 Interview-Ready Summary</h2>
    <div class="highlight">
        Built an end-to-end stock market analytics and prediction system by combining
        Power BI for exploratory insights and Python-based machine learning for next-day
        price forecasting using time-series feature engineering and model evaluation.
    </div>
</div>

<div class="section">
    <h2>👤 Author</h2>
    <p>
        <strong>Ahamed Sulaiman</strong><br>
        B.Tech Computer Science & Engineering<br>
        Stock Market Analysis | Data Science | Machine Learning
    </p>
</div>

</body>
</html>
