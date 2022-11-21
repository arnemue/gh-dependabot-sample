FROM python:3.8

WORKDIR /code

# Install dependencies (globally, within the image).
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Set up our runtime user CrossSell with UID and --create-home --user-group
RUN useradd demouser -u 10001 -m -U
USER 10001
