FROM nginx:latest
RUN apt update && apt -y install python3
WORKDIR /test
COPY . .
RUN python3 -m unittest  test-sitecreator.py
RUN python3 create createsite.py
RUN mv index.html /usr/share/nginx/html
