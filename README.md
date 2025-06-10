# Multi-Dataset ML Pipeline

A consolidated machine learning repository showcasing end-to-end pipelines for classification and regression on four real-world datasets.

## Table of Contents
1. [Project Overview](#project-overview)  
2. [Features](#features)  
3. [Prerequisites](#prerequisites)  
4. [Installation & Setup](#installation--setup)  
5. [Project Structure & File Organization](#project-structure--file-organization)  
6. [Usage](#usage)  
7. [Assignment Goals](#assignment-goals)  
8. [License](#license)  


## Project Overview

This repository provides a reusable machine learning pipeline that performs both classification and regression tasks on four real-world datasets:
- Penguins (notebooks/penguins_classification.ipynb): Classify penguin species by physical measurements.
- Diamonds (notebooks/diamonds_regression.ipynb): Predict diamond prices based on cut, color, carat, and dimensions.
- Bird Atlas (notebooks/bird_atlas_classification.ipynb): Classify bird presence/absence in ecological surveys.
- Auto MPG (notebooks/auto_mpg_regression.ipynb): Estimate fuel efficiency (miles per gallon) from automotive features.

Each dataset follows a consistent workflow:
- Data Loading & Exploration: Load CSVs, inspect distributions, check for missing values.
- Preprocessing: Impute missing data, encode categorical features, scale numerical variables via scikit-learn ColumnTransformer.
- Feature Engineering: Create polynomial/interactions and drop low-variance or highly correlated features.
- Modeling: Use Logistic Regression for classification and Ridge Regression for regression, wrapped in scikit-learn Pipeline.
- Hyperparameter Tuning: Optimize model parameters with GridSearchCV and cross-validation.
- Evaluation: Report accuracy, precision/recall (classification), RMSE, R² (regression) on test sets.
- Serialization: Save best models to models/ as .pkl files for future inference.

## Repository Structure
```
ml-multi-dataset-pipeline/
├── notebooks/                  # Jupyter notebooks
│   ├── penguins_classification.ipynb
│   ├── diamonds_regression.ipynb
│   ├── bird_atlas_classification.ipynb
│   └── auto_mpg_regression.ipynb
├── data/                       # Cleaned and preprocessed CSV files
│   ├── diamonds_preprocessed.csv
│   ├── breeding_bird_atlas.csv
│   └── bird_atlas_numeric.csv
├── models/                     # Trained model artifacts
│   ├── penguins_logistic.pkl
│   └── auto_mpg_ridge.pkl
├── docs/                       # Generated HTML reports and PDFs
│   └── fall24_ml_assignment1.pdf
├── requirements.txt            # Python dependencies
└── README.md                   # Project overview and instructions
```

## Getting Started

### Prerequisites
Python 3.8 or newer
Git
pip or conda

### Clone the Repository

```bash
git clone https://github.com/sruthi7sri/Multi-Dataset-ML-Pipeline.git
cd Multi-Dataset-ML-Pipeline
```

### Create & Activate Virtual Environment
```bash
python -m venv venv
source venv/bin/activate   # macOS/Linux
venv\Scripts\activate      # Windows
```

### Install Dependencies
If requirements.txt exists:
```bash
pip install -r requirements.txt
```
If you receive an error about a missing file, install core packages and generate your own:
```bash
pip install pandas numpy scikit-learn matplotlib jupyter nbconvert
pip freeze | grep -E "pandas|numpy|scikit-learn|matplotlib|jupyter|nbconvert" > requirements.txt
```

## Run Notebooks Locally
1. Launch Jupyter:
    ```bash
    jupyter notebook
    ```
2. Open any notebook in notebooks/, run all cells, and inspect results.

### Project Goals
- Demonstrate proficiency with data cleaning, feature engineering, and preprocessing techniques.
- Implement end-to-end ML workflows for both classification and regression.
- Apply cross-validated hyperparameter tuning for model optimization.
- Evaluate and compare different models and metrics.
- Showcase ability to serialize and deploy models.

## Collaborators

- Sruthisri Venkateswaran  
- Saroja Vuluvabeeti

## License
© 2025 Sruthisri Venkateswaran and Saroja Vuluvabeeti. All rights reserved.

## Contact

we are always open to feedback, collaborations, or new opportunities in deep learning, ML deployment, and NLP research.

- Linkedin: ([www.linkedin.com/in/sruthisri/](https://www.linkedin.com/in/sruthisri/))
- For issues, suggestions, or improvements: [Open an Issue](https://github.com/sruthi7sri/Multi-Dataset-ML-Pipeline/issues)
