FROM python:3.9-slim AS static-analysis

WORKDIR /project
COPY requirements/static_analysis.txt requirements/static_analysis.txt
RUN pip install -r requirements/static_analysis.txt
RUN apt-get update && apt-get install -y \
    wget \
    && rm -rf /var/lib/apt/lists/*
COPY . /project
