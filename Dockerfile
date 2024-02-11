# alpine version is v lightweight, v fast
FROM python:3-alpine   

# make /var/app_data directory to hold our content
RUN mkdir -p /var/app_data

# set current/working directory
WORKDIR /app

# run these commands within the working directory
COPY requirements.txt .
RUN pip install -r requirements.txt

# copy app/ into working directory
COPY app/ ./

# export port 8080 from container
EXPOSE 8080
# execute command: python3 app.py
CMD ["python3", "app.py"]
