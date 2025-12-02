#!/bin/bash

# --- Demande le nom du projet ---
read -p "Enter the project name: " PROJECT_NAME

# --- Met à jour le README.md ---
if [ -f "README.md" ]; then
    echo "# $PROJECT_NAME" > README.md
fi

# --- Initialiser uv ---
uv init

# --- Ajouter les packages essentiels ---
uv add numpy pandas scikit-learn matplotlib seaborn statsmodels \
       fastapi "uvicorn[standard]" streamlit

# --- Synchroniser l'environnement ---
uv sync

# --- Initialiser Git si ce n'est pas déjà fait ---
if [ ! -d ".git" ]; then
    git init
    git add .
    git commit -m "Initial project setup"
    echo "✅ Git repository initialized with initial commit"
fi

echo "✅ Environment ready for project '$PROJECT_NAME'!"
echo "Activate your environment with: source .venv/bin/activate"
