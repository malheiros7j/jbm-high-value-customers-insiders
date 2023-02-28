# Insiders Program for an E-Commerce Company
Insiders Program Project 

The following context is completely fictitious, the company, the context and the CEO. The business questions are also fictional but were made in an attempt to exemplify how they would be required in a business work environment.

# Introduction
This is a data science clustering project done for a company called All In One Place, which aims to create a loyalty program for its most valued customers based on their purchases.



### Solution Planning

* [1. Description and Business Problem ](#1-description-and-business-problem)
* [2. Database and Business Assumptions](#2-database-and-business-assumptions)
* [3. Solution Strategy ](#3-solution-strategy)
* [4. Top Insights ](#4-top-insights)
* [5. Machine Learning Model Selection](#5-machine-learning-model-selection)
* [6. Model Performance ](#6-model-performance)
* [7. Business Results](#7-business-results)
* [8. Model in Production ](#8-model-in-production)
* [9. Conclusion](#9-conclusion)
* [10. Learning and Future Work](#10-learning-and-future-work)

# 1. Description and Business Problem
## 1.1 Description and Context
The company All in one Place is a Multibrand Outlet company that sells second-line products from various brands at a lower price through E-Commerce.

After a little over a year of operation, the marketing team realized that some of its base customers buy more expensive products with high frequency and consequently contribute with a large portion of the company's revenue.

Based on this perception, the marketing team decided to create a loyalty program for the best customers in the base, called "INSIDERS". As the marketing team does not have an effective and accurate method to estimate who are the most valuable customers, the data team was asked to select these Insiders using data manipulation and machine learning techniques.


## 1.2 The Challenge and Business Problem

The main challenge then is to determine who are the eligible customers to participate in the "Insiders" groups. In possession of this list, the marketing team will carry out a sequence of personalized and exclusive actions for the group, in order to increase revenue and purchase frequency, as well as customer satisfaction with the company.

In addition to the creation of this group of Insiders, some business questions must be answered, they are:
* Who are the people eligible to participate in the Insiders program?
* How many customers will be part of the group?
* What are the main characteristics of these customers?
* What is the percentage of revenue contribution from Insiders?
* What is the revenue expectation of this group for the coming months?
* What are the conditions for a person to be eligible for Insiders?
* What are the conditions for a person to be removed from Insiders?
* What is the guarantee that the Insiders program is better than the rest of the base?
* What actions can the marketing team take to increase revenue?

# 2. Business Assumptions
* Invoices which the unit price is lower than 0.04 were removed;
* New id's were created for the customers with no Id to maintain their buying behavior;
* If the quantity of items are negative, it means that the item was returned by the customer.
* Invoice numbers with C on their name were considered as a invoice of type 'returned'.
* Some bad users were deleted based on their strange behaviour and not meaningful actions. 
* Stock Codes such as 'POST', 'D', 'M', 'PADS', 'DOT', 'CRUK', 'S', 'AMAZONFEE', 'm','DCGSSBOY', 'DCGSSGIRL', 'B' were deleted due to their not explicit meaning.

# 3. Solution Strategy
### Step 01. Data Description
In this step, some aspects of the dataset were verified, such as: column names, dimensions, data types, checking and filling in missing data (NA), descriptive analysis of the data and what are its categorical variables.

### Step 02. Filtering Variables
Checking the necessity to filter the dataset based on a variable that does not matter to the project itself. In this step we take into account some business assumptions that were previously determined.

### Step 03. Featuring Engineering
In featuring engineering, new attributes (columns) were derived based on the original variables, enabling a better description of the phenomenon of that variable. 

### Step 04. Exploratory Data Analysis (EDA) and Space Study
Exploration of Data in order to find Insights for a better understanding of the Business. Univariate, bivariate analyzes were also performed.

In this step we also developed a space study so we could check how data is distribuited in different spaces, the objective here is to choose the best space for clustering the customers. At this stage we decided to use the Tree based space embedding space since this space had the best organization of data distribution. After this decision, we carried out a brief study of feature selection and hyper-parameterization of the data space, ending this step.

### Step 05. Data Preparation & Feature Selection
Session that deals with the preparation of data and selecting the best features so that Machine Learning algorithms can be applied efficiently.

### Step 06. Hyper Parameter Fine Tuning
In this phase, we applied some specific clustering algorithms and compared their performance using the silhouette metric to check which type of algorithm and which number of "k" (number of groups to be clustered) is ideal for our project. It should be noted that in this case we made the selection not only based on gross performance, but also took into account the facilitation that this number of groups would bring to the business decision.

### Step 07. Model Training
Creation of the selected Machine Learning Model and measure its perfomance based on the sillhouete metric value.

### Step 08. Cluster Analysis
The final visualization of the clustered model on top of the data space and the definition of the profile(attributes) of the clusters created by the model.

### Step 09. Post Profile Data Analysis
Creating a mind map of business hypotheses and creating and validating those hypotheses and then answering the business questions that were asked at the beginning of the project and what actions should be recommended to the marketing team.

### Step 10. Model to Deploy Production (AWS)
Planning and Implementation of the Cloud Architecture of the project.


# 4. Top Insights

### H3. Customers in the INSIDERS group have a purchase value above 10% of the company's total revenue.

***TRUE*** - The INSIDERS group is responsible for 44.05% of the company's total revenue.

### H4. Customers in the INSIDERS group have a purchase volume of unique products above 10% of the all company.
***TRUE*** - The INSIDERS cluster customer has a purchase volume of unique products of 33%.

### H5. Customers in the INSIDERS group have the AVG of returned products lower than the AVG of the rest of the clusters
***FALSE*** - The Insiders group returns 3.0x more products in comparison the all dataset.


# 5. Machine Learning Model Selection and Performance
The following cluster models were applied in the project:
* KMeans.
* GMM.
* Hierarchical clustering.
* DBScan.

These models were applied with a number of groups (k) from 2 to 22 and the best clustering algorithm was Hierarchical. However, we chose k as 10 because with this number of groups it is possible to have a good performance of the model (silhouette score) and it is easier for the marketing team to create targeted actions for each group with a not so large number of groups.

*The algorithms used to create the embedding spaces were: PCA, UMAP, t-SNE and an embedding based on trees with Random Forest (final space).*

# 6. Business Results

# 7. Model in Production

![diagram!](diagram_final.png)

# 8. Conclusion


# 9. Learning and Future Work
Learning

