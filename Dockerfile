# Pull base image
FROM python:3.10

# Set environement variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code3

# Install dependencies
COPY Pipfile Pipfile.lock /code3/
RUN pip install pipenv && pipenv install --system


# Copy project

COPY . /code3/