FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt /app

# caused error
# RUN pip install virtualenv && \
#     virtualenv venv && \
#     . venv/bin/activate && \
#     pip install -r requirements.txt

RUN pip install -r requirements.txt

COPY . /app

CMD ["venv/bin/python", "-m", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
