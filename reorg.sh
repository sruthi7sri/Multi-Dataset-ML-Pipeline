#!/usr/bin/env bash

# 1. Create the target directories
mkdir -p notebooks data models docs

# 2. Move the four core notebooks
git mv "sv94_sarojavu_A1_part1_penguins.ipynb"      notebooks/penguins_classification.ipynb
git mv "sv94_sarojavu_part1_diamonds.ipynb"         notebooks/diamonds_regression.ipynb
git mv "sv94_sarojavu_A1_part1_birds.ipynb"         notebooks/bird_atlas_classification.ipynb
git mv "sv94_sarojavu_A1_part2_penguins.ipynb"      notebooks/auto_mpg_regression.ipynb

# 3. Move data files
git mv "Diamonds_preprocessed.csv"                  data/diamonds_preprocessed.csv
git mv "breeding_bird_atlas.csv"                    data/breeding_bird_atlas.csv
git mv "processed_breeding_bird_atlas_numeric.csv"  data/bird_atlas_numeric.csv

# 4. Move model artifacts
git mv "Auto_mpg_Best_Ridge_Regression_model.pkl"   models/auto_mpg_ridge.pkl
git mv "Penguins_best_logistic_regression_model.pkl" models/penguins_logistic.pkl

# 5. Move your main PDF to docs
git mv "fall24_ML_D_Assignment_1.pdf"               docs/fall24_ml_assignment1.pdf

# 6. Clean up Colab-export PDFs and junk
find . -type f -name "*- Colab.pdf"   -delete
find . -type f -name ".DS_Store"      -delete

# 7. Remove the venv folder and any A1 Bonus folder
rm -rf venv "A1 Bonus/"

# 8. Make sure README, LICENSE, requirements.txt stay at root

# 9. Commit your changes
git add .
git commit -m "chore: reorganize project structure for portfolio"
