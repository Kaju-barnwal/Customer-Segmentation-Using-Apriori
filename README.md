# 🛒 Market Basket Analysis with R

## 📌 Project Overview
This project demonstrates **Market Basket Analysis (MBA)** using R on the popular **Groceries dataset**.  
It applies **Apriori** and **Eclat** algorithms to uncover associations between items purchased together.  
The goal is to extract meaningful patterns that can support:
- Cross-selling strategies  
- Personalized recommendations  
- Smarter store layouts  

---

## ✨ Introduction
Ever wondered why online stores recommend:  
*“Customers who bought bread also bought butter”*?  

That’s **Market Basket Analysis** in action.  
Here, we analyze **9,835 shopping transactions** containing **169 unique items** and derive insights useful for retailers.

---

## 🔬 Steps in the Analysis
1. **Load Data & Packages**  
   - Dataset: *Groceries* (transactional data in sparse format)  
   - Packages: `arules`, `arulesViz`, `RColorBrewer`

2. **Explore Dataset**  
   - Whole milk, vegetables, and bread are the most frequent items.  
   - Basket sizes range from 1 to 32 items.

3. **Frequent Itemset Mining (Eclat)**  
   - Found **333 itemsets** with support ≥ 1%  
   - Example: `{whole milk, yogurt}` appears in **2.9% transactions**

4. **Item Frequency Visualization**  
   - Plots highlight **top 10 most purchased items**  
   - (Files: `frequent_item_plot`, `frequent_item_plot_apriori`)

5. **Association Rule Mining (Apriori)**  
   - Parameters: support ≥ 0.2%, confidence ≥ 60%  
   - Generated **1098 rules**

6. **Rule Metrics**  
   - Support = frequency of itemsets  
   - Confidence = probability of RHS given LHS  
   - Lift > 1 indicates strong association  

   Example:  
   `{cereals} → {whole milk}`  
   - Confidence = 64%  
   - Lift = 2.51  

7. **Top Rules (Lift & Confidence)**  
   - `{butter, hard cheese} → {whipped/sour cream}` → Lift = 7.15  
   - `{citrus fruit, tropical fruit, root vegetables, whole milk} → {other vegetables}` → Confidence = 88.5%

8. **Rule Visualization**  
   - **Network Graph** → shows clusters around staples (milk, bread, vegetables)  
   - **Scatter Plot** → support vs confidence, shaded by lift  
   - (Files: `Network_Graph`, `Scatter_plot`)

---

## 🚀 Business Insights
- **Cross-Selling** → Promote “rice + other vegetables” bundles  
- **Store Layout** → Place “baking powder” near “whole milk”  
- **Personalized Offers** → Suggest “whole milk” when customers buy “cereals”  

---

## 📝 Conclusion
Market Basket Analysis with **Eclat** and **Apriori** revealed strong product associations in the Groceries dataset.  
These insights can directly support **recommendation systems, promotions, and store optimization strategies**.  

This project highlights how **data-driven decision-making** can transform retail strategies.  

---
