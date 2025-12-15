# connect to server 1
sudo ssh tony@stapp01
# create Dockerfile and add the content into it : 
vi /python_app/Dockerfile
# content od Dockerfile

FROM python:3.12-slim

WORKDIR /app

COPY src/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY src/ .

EXPOSE 8087

CMD ["python", "server.py"]


# To build The image : 
cd /python_app
docker build -t nautilus/python-app .

# To run the container
docker run -d --name pythonapp_nautilus -p 8096:8087 nautilus/python-app


