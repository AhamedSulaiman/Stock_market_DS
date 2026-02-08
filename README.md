📈 Stock Market Analysis & Price Prediction (NIFTY Stocks)
🔍 Project Overview

This project delivers an end-to-end stock market analytics and prediction system using historical NIFTY stock data.
It combines Power BI for business intelligence and Python-based Machine Learning for predictive modeling.

Workflow followed:

Data Analysis → Insights → Machine Learning → Evaluation

This mirrors how real-world data science projects are executed.

🎯 Objectives

Analyze historical stock market trends and trading behavior

Identify top-performing and worst-performing stocks

Study volatility, volume, and return patterns

Predict the next-day closing price using Machine Learning

Validate and interpret model performance using metrics and visuals

🧾 Dataset Description

The dataset consists of daily trading data for NIFTY stocks with the following fields:

Date

Stock Symbol

Open, High, Low, Close prices

Trading Volume and Turnover

Daily Returns

Price Range (Volatility)

Engineered Features (ML Phase)

Lag prices (previous close values)

Moving averages (5-day, 10-day)

Rolling volatility

🧰 Tools & Technologies
📊 Data Analysis & Visualization

Power BI – Interactive dashboards & KPI insights

Excel / Power Query – Data cleaning and preprocessing

🧠 Data Science & Machine Learning

Python (pandas, numpy)

matplotlib, seaborn – Visual diagnostics

scikit-learn – ML modeling

Random Forest Regressor – Primary prediction model

XGBoost – Benchmark comparison

Streamlit – Interactive deployment

📊 Power BI Dashboard

The Power BI dashboard focuses on descriptive and diagnostic analysis, including:

Market-wide trading volume trends

Top and worst performing stocks

Volatility and price range analysis

KPI cards for average price, returns, and volume

Key Insight:
The market demonstrates long-term growth with rising participation, especially in later years where trading activity accelerates significantly.

Power BI was intentionally completed before the Machine Learning phase to understand data behavior and guide feature engineering.

🧠 Machine Learning Workflow
1️⃣ Feature Engineering

Previous day and two-day lag closing prices

5-day and 10-day moving averages

Rolling volatility (risk indicator)

Trading volume

Stock symbols were not used as model input features to avoid identity bias, but stock-wise grouping was applied during feature creation to preserve temporal continuity.

2️⃣ Model Selection

Random Forest Regressor was selected as the final model due to:

Robust handling of noisy financial data

Strong performance on time-series regression

Better generalization compared to boosting models

3️⃣ Model Evaluation

Metrics Used:

Mean Absolute Error (MAE)

Root Mean Squared Error (RMSE)

Final Performance:

MAE ≈ ₹37

RMSE ≈ ₹166

These values are reasonable given the volatility and wide price range of stocks.

4️⃣ Model Diagnostics

The model was validated using:

Actual vs Predicted time-series plots

Prediction error distribution

Actual vs Predicted scatter plot

Feature importance analysis

These diagnostics confirmed:

Strong trend learning

Minimal prediction bias

Expected errors during high-volatility periods

🚀 Advanced Enhancements

The project also includes:

Walk-forward validation (time-series aware evaluation)

Automatic next-day price prediction

Confidence bands using Random Forest tree distributions

Model comparison (Random Forest vs XGBoost)

Streamlit-based interactive application

🚀 How to Run the Project
1️⃣ Clone the Repository
git clone https://github.com/your-username/stock-market-analysis.git

2️⃣ Install Dependencies
pip install pandas numpy matplotlib seaborn scikit-learn xgboost streamlit joblib

3️⃣ Run the Machine Learning Pipeline
python stock_price_prediction.py

4️⃣ (Optional) Run the Streamlit App
streamlit run app.py

📁 Project Structure
├── nifty_stock.csv
├── stock_price_prediction.py
├── random_forest_no_symbol.pkl
├── rf_predictions_no_symbol.csv
├── app.py
├── README.md
├── README.html

💼 Interview-Ready Summary

Built an end-to-end stock market analytics and prediction system by combining Power BI for exploratory insights and Python-based machine learning for next-day price forecasting, using time-series feature engineering, walk-forward validation, and model interpretation techniques.

📌 Future Improvements

Per-stock predictive models

Directional (up/down) price movement prediction

Technical indicators (RSI, MACD)

News and sentiment integration

👤 Author

Ahamed Sulaiman
B.Tech Computer Science & Engineering
Stock Market Analysis | Data Science | Machine Learning