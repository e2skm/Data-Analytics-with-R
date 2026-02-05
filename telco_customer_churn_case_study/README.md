# Telco Customer Churn: Predictive Retention Analysis

## 📌 Project Overview
This project identifies high-risk customers for a telecommunications provider using machine learning. By analyzing customer demographics and service usage patterns, I developed a predictive model to identify potential churners before they leave, allowing for proactive retention strategies.

---

## 📊 Key Results
- **Accuracy:** 75.5%  
- **Sensitivity (Recall):** 65.7%  
  *(Improved from 44.8% through threshold optimization)*  
- **Goal Achievement:** Successfully identified **245 churners** in the test set to be targeted with retention incentives.

---

## 🛠️ Data Analytics Process

### 1. Ask
- **Business Task:** Reduce the churn rate by **5%–10%** by providing the marketing team with a *High-Risk* customer list.  
- **Key Stakeholders:** Retention Marketing and Customer Support teams.

### 2. Prepare
- **Data Source:** IBM Telco Customer Churn dataset.  
- **Integrity:**  
  - Verified data privacy (no PII).  
  - Ensured structural integrity for **7,043** customer records.

### 3. Process
- **Tools:** R (`tidyverse`, `caret`, `randomForest`).  
- **Cleaning & Transformation:**  
  - Converted `TotalCharges` to numeric and handled missing values (**11 rows removed**).  
  - Transformed categorical variables into factors for machine learning compatibility.  
  - Renamed variables for consistent coding syntax.

### 4. Analyze
- **Exploratory Data Analysis (EDA):**  
  - Month-to-Month contract holders and Fiber Optic users show significantly higher churn rates.
- **Modeling:**  
  - Built a Random Forest classifier (`ntree = 100`).
- **Optimization:**  
  - Adjusted the classification threshold from **0.5** to **0.3** to prioritize **Sensitivity**, ensuring more at-risk customers are captured, even with a slight increase in false positives.

### 5. Share
- **Visualizations:**  
  - Pie charts for overall churn distribution.  
  - Bar charts comparing churn risk by contract type.
- **Model Comparison:**  
  - **Standard Model:** High accuracy (**78%**) but low sensitivity (**45%**).  
  - **Optimized Model:** Balanced accuracy (**75.5%**) with high sensitivity (**65.7%**).

### 6. Act
- **Incentive Strategy:** Move high-risk Month-to-Month users to discounted **1-year contracts**.  
- **Service Quality:** Launch a *Service Health Check* for Fiber Optic users within their first **3 months**.  
- **Support:** Provide tailored technical support packages for **Senior Citizens**.

---

## 💻 How to Run the Code
1. Ensure you have **R** and **RStudio** installed.  
2. Install the necessary libraries:
   ```r
   install.packages(c("tidyverse", "caret", "randomForest"))
   (Click this link to view the interactive report)[https://e2skm.github.io/Data-Analytics-with-R/telco_customer_churn_case_study/]
