FROM python:3.12-alpine
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt
COPY . .
EXPOSE 8000
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]