FROM python:3.7

# set work directory
WORKDIR /app

EXPOSE  5000

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV FLASK_APP="ls2.py"

# install dependencies
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

# copy project
COPY . /app

CMD ["python", "lb2.py"]
