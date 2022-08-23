FROM python:3.9-slim AS static-analysis

WORKDIR /project
COPY requirements/static_analysis.txt requirements/static_analysis.txt
RUN pip install -r requirements/static_analysis.txt
COPY safety-shim.sh /usr/local/bin/safety
