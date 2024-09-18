FROM python:3.12.6-bookworm

RUN python -m pip install django

COPY . /app

WORKDIR /app

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]