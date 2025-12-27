#!/bin/bash

echo "Starting Streamlit App on Heroku..."

pip install -r requirements.txt --quiet

mkdir -p data

streamlit run streamlit_app.py \
  --server.port=$PORT \
  --server.address=0.0.0.0 \
  --server.headless=true
  
