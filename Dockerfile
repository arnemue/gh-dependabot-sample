FROM python:3.10-slim

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

RUN groupadd -r demouser && useradd --no-log-init -r -s /bin/bash -g demouser demouser

COPY --chown=demouser app /code/app

WORKDIR /code/app

USER demouser

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5000"]
