FROM nginx:latest

ARG SOURCE_PATH="/var/www/html"

WORKDIR /var/www/html

COPY . ${SOURCE_PATH}/

COPY . /usr/share/nginx/html

#RUN rm -rf /usr/share/nginx/html/50x.html 
#RUN rm /usr/share/nginx/html/index.html

RUN apt update 
RUN apt install nano -y 
RUN apt install curl 
RUN apt install vim -y

RUN chown -R www-data:www-data ${SOURCE_PATH}