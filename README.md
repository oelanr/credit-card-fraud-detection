# Credit Card Fraud Detection

This project aims to detect fraudulent credit card transactions using machine learning. The dataset contains anonymized transactional data with a severe class imbalance (fraudulent transactions are rare). The goal is to build a robust pipeline to identify anomalies and flag potential frauds in (near) real-time.

I learned everything in the [Fraud Detection Handbook](https://fraud-detection-handbook.github.io/) to make this project.

## What's in this repo
- Shell scripts and utilities to run data preparation, training, and evaluation steps.
- Documentation and notes describing experiments and key design choices.
- Simple pipelines and examples demonstrating handling class imbalance, feature preprocessing, and model evaluation.

## Key features
- Handling severe class imbalance (sampling strategies, metrics for imbalanced data).
- Preprocessing and feature engineering tailored for transactional data.
- Model training and evaluation with appropriate fraud-detection metrics (precision, recall, F1, AUPRC).
- Clear, reproducible steps to run the experiments.

## Dataset
The project uses anonymized transaction data. The original data is commonly available in public repositories (for example, the Kaggle credit card fraud dataset). You must obtain and place any required CSVs or dataset files into a data/ directory before running the pipeline.

## Quick start
1. Clone the repository:
   git clone https://github.com/oelanr/credit-card-fraud-detection.git
2. Create and activate a virtual environment:
   python -m venv .venv
   source .venv/bin/activate  # macOS / Linux
   .venv\Scripts\activate     # Windows
3. Install typical dependencies:
   pip install pandas numpy scikit-learn imbalanced-learn matplotlib seaborn jupyter
4. Prepare the data:
   - Put dataset files into a `data/` folder as expected by the scripts.
5. Run the pipeline scripts or follow the provided shell scripts to preprocess, train, and evaluate models.

## Evaluation
Use metrics appropriate for imbalanced classification:
- Precision, Recall, F1-score
- Area under the Precision-Recall Curve (AUPRC)
- Confusion matrix and business-oriented cost analysis

## Notes
- Results depend on dataset splits, preprocessing choices, and model hyperparameters.
- For production / real-time use, consider streaming pipelines, feature stores, and monitoring for concept drift.

## Contributing
Contributions, improvements to preprocessing, new model experiments, or integration with streaming systems are welcome. Please open an issue or a pull request.

## Author
oelanr
