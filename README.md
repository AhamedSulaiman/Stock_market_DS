# 📈 Stock Market Analysis & Price Prediction (NIFTY Stocks)

## 🔍 Project Overview

This project delivers an **end-to-end stock market analytics and prediction system** using historical NIFTY stock data.  
It combines **Power BI** for business intelligence and **Python-based Machine Learning** for predictive modeling.

**Workflow followed:**

> Data Analysis → Insights → Machine Learning → Evaluation

This mirrors real-world data science project execution.

---

## 🎯 Objectives

- Analyze historical stock market trends and trading behavior  
- Identify **top-performing and worst-performing stocks**  
- Study **volatility, volume, and return patterns**  
- Predict the **next-day closing price** using Machine Learning  
- Validate and interpret model performance using metrics and visuals  

---

## 🧾 Dataset Description

The dataset consists of daily trading data for NIFTY stocks with the following fields:

- Date  
- Stock Symbol  
- Open, High, Low, Close prices  
- Trading Volume and Turnover  
- Daily Returns  
- Price Range (Volatility)  

### Engineered Features (ML Phase)
- Lag prices (previous close values)  
- Moving averages (5-day, 10-day)  
- Rolling volatility  

---

## 🧰 Tools & Technologies

### 📊 Data Analysis & Visualization
- **Power BI** – Interactive dashboards & KPI insights  
- **Excel / Power Query** – Data cleaning and preprocessing  

### 🧠 Data Science & Machine Learning
- **Python** (pandas, numpy)  
- **matplotlib, seaborn** – Visual diagnostics  
- **scikit-learn** – Machine learning models  
- **Random Forest Regressor** – Primary prediction model  
- **XGBoost** – Benchmark comparison  

---

## 📊 Power BI Dashboard

The Power BI dashboard focuses on **descriptive and diagnostic analysis**, including:

- Market-wide trading volume trends  
- Top and worst performing stocks  
- Volatility and price range analysis  
- KPI cards for average price, returns, and volume  

> **Key Insight:**  
> The market demonstrates long-term growth with rising participation, especially in later years where trading activity accelerates significantly.

Power BI was intentionally completed **before the Machine Learning phase** to understand data behavior and guide feature engineering.

![d4429925-ef5d-4154-af86-2879fe3998f0](https://github.com/user-attachments/assets/bb327c99-5c0d-4c77-bfec-042fd14edbbc)

![8e6f32a7-e76d-421a-ac48-ff23f19303b3](https://github.com/user-attachments/assets/a16ec434-ccb6-4732-9761-3dd1839a0376)


---

## 🧠 Machine Learning Workflow

### 1️⃣ Feature Engineering
- Previous day and two-day lag closing prices  
- 5-day and 10-day moving averages  
- Rolling volatility (risk indicator)  
- Trading volume  

> Stock symbols were **not used as model input features** to avoid identity bias, but stock-wise grouping was applied during feature creation to preserve temporal continuity.

---

### 2️⃣ Model Selection
- **Random Forest Regressor** was selected due to:
  - Robust handling of noisy financial data  
  - Strong performance on time-series regression  
  - Better generalization compared to boosting models  

---

### 3️⃣ Model Evaluation

**Metrics Used:**
- Mean Absolute Error (MAE)  
- Root Mean Squared Error (RMSE)  

**Final Performance:**
- **MAE ≈ ₹37**  
- **RMSE ≈ ₹166**  

These values are reasonable given the volatility and wide price range of stocks.

---

### 4️⃣ Model Diagnostics

The model was validated using:

- Actual vs Predicted time-series plots  
- Prediction error distribution  
- Actual vs Predicted scatter plot  
- Feature importance analysis  

These diagnostics confirmed:
- Strong trend learning  
- Minimal prediction bias  
- Expected errors during high-volatility periods  

---

## 🚀 Advanced Enhancements

- Automatic next-day price prediction  
- Model comparison (Random Forest vs XGBoost)  

---

## 🚀 How to Run the Project

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/your-username/stock-market-analysis.git
```

### 2️⃣ Install Dependencies
```bash
pip install pandas numpy matplotlib seaborn scikit-learn xgboost streamlit joblib
```

### 3️⃣ Run the Machine Learning Pipeline
```bash
python stock_price_prediction.py
```

---

## 📁 Project Structure

```text
├── nifty_stock.csv
├── stock_price_prediction.py
├── random_forest_no_symbol.pkl
├── rf_predictions_no_symbol.csv
├── README.md

```

## 📌 Future Improvements

- Per-stock predictive models  
- Directional (up/down) price movement prediction  
- Technical indicators (RSI, MACD)  
- News and sentiment integration  

---

## 👤 Author

**Ahamed Sulaiman**  
B.Tech Computer Science & Engineering  
Stock Market Analysis | Data Science | Machine Learning  

