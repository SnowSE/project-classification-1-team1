[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/BRpgHbV1)
# Spam Detection: Naive Bayes vs SVM

## Overview

Students will:
1. Load a spam email dataset (1000 emails, 10 features)
2. Train a **Naive Bayes** classifier
3. Train a **k-Nearest Neighbors** classifier
4. Train an **SVM** classifier
5. Compare the results

**Time Required:** 3-5 hours

---

## Project Structure

```
3480project-classification1/
├── data/
│   └── spam_data.csv              # 1000 emails, 10 features
├── notebooks/
│   └── spam_classification.ipynb   # Main notebook (This is where you do your work)
└── README.md                       # This file
```

---

## What Students Will Do

### Step 1: Load Data
- Import libraries
- Load the spam dataset
- View class distribution

### Step 2: Prepare Data
- Clean dataset
- Split into train/test sets (70/30)
- Scale features for SVM

### Step 3: Train Naive Bayes
- Create Naive Bayes Classifier model
- Make predictions
- View confusion matrix

### Step 4: Train k-Nearest Neighbors
- Determine best value of $k$
- Create kNN model
- Make predictions
- View confusion matrix

### Step 5: Train SVM
- Create SVM model with RBF kernel
- Make predictions
- View confusion matrix

### Step 6: Compare Models
- Compare accuracy, precision, recall, F1-score
- Create comparison visualization

### Step 7: Discussion Questions
- Which model performed better?
- What's the difference between metrics?
- When to use each algorithm?

---

## Dataset

**Email Spam Classification Dataset**
- **Size:** 1,000 emails
- **Features:** 10 numerical features
  - word_free, word_money, word_winner, word_click, word_urgent
  - num_exclamation, num_dollar, num_capitals
  - email_length, has_link
- **Target:** is_spam (0=Ham, 1=Spam)
- **Distribution:** 60% Ham, 40% Spam

---

## Learning Objectives

After completing this project, students will understand:
- How to implement classification algorithms with scikit-learn
- The difference between Naive Bayes and SVM
- How to evaluate models using multiple metrics
- When to use different algorithms

---

## Grading (100 points)

- **Data Loading & Preparation (20 points)**
  - Correctly load and split data
  - Apply appropriate preprocessing

- **Naive Bayes Implementation (20 points)**
  - Train model correctly
  - Generate predictions and confusion matrix

- **SVM Implementation (20 points)**
  - Train model with scaled data
  - Generate predictions and confusion matrix

- **Model Comparison (20 points)**
  - Calculate all metrics
  - Create comparison visualization

- **Discussion Questions (20 points)**
  - Answer all 4 questions thoughtfully
  - Demonstrate understanding of concepts

---

## Expected Results

Students should see:
- Both models achieving 80-95% accuracy
- SVM typically slightly more accurate
- Similar precision and recall values
- Clear differences in confusion matrices

---

## Key Concepts

### Naive Bayes
- **Type:** Probabilistic classifier
- **Assumption:** Features are independent
- **Pros:** Fast, simple, works well with limited data
- **Cons:** Independence assumption rarely holds

### k-Nearest Neighbors
- **Type:** Instance-based/lazy learner
- **Assumption:** Similar data points belong to the same class
- **Pros:** Simple, no training phase, works well with irregular decision boundaries, naturally handles multi-class
- **Cons:** Slow predictions, sensitive to irrelevant features, requires feature scaling, memory intensive (stores all training data)

### SVM (Support Vector Machine)
- **Type:** Margin-based classifier
- **Goal:** Find optimal hyperplane separating classes
- **Pros:** Effective, handles non-linear data (with kernels)
- **Cons:** Requires feature scaling, slower training

### Evaluation Metrics
- **Accuracy:** Overall correctness
- **Precision:** Of predicted spam, how many were actually spam?
- **Recall:** Of actual spam, how many did we catch?
- **F1-Score:** Balance between precision and recall

---

## Troubleshooting

**Problem:** Can't import sklearn
```bash
pip install scikit-learn
```

**Problem:** Kernel keeps dying
- Reduce dataset size
- Close other programs
- Restart Jupyter

**Problem:** Different results each time
- Check that `random_state=42` is set everywhere

---

## Tips

1. **Run cells in order** - Don't skip ahead
2. **Read error messages** - They usually tell you what's wrong
3. **Compare your metrics** - Both models should work reasonably well
4. **Think about the questions** - There's no single "right" answer

---

## Submission Checklist

- [ ] Notebook runs completely without errors
- [ ] All cells have output visible
- [ ] Comparison tables (confusion matrix and classification report) are generated
- [ ] All 4 discussion questions are answered
- [ ] Your name and date are filled in

---

## Resources

- [Scikit-learn Naive Bayes](https://scikit-learn.org/stable/modules/naive_bayes.html)
- [Scikit-learn SVM](https://scikit-learn.org/stable/modules/svm.html)
- [Classification Metrics](https://scikit-learn.org/stable/modules/model_evaluation.html#classification-metrics)

---

## Questions?

Contact me at any time if you have questions. The best time to reach me is during my office hours.

**Good luck!** 🚀
