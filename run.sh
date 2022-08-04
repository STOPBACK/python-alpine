#!/bin/sh
cd /app
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
fi
python main.py