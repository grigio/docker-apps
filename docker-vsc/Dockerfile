FROM debian:8

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y unzip sudo libgtk2.0-0 libgconf2-4 libnss3 \
            libasound2 libxtst6 libcanberra-gtk-module libgl1-mesa-glx && rm -rf /var/lib/apt/lists/*

# source http://download.microsoft.com/download/0/D/5/0D57186C-834B-463A-AECB-BC55A8E466AE/VSCode-linux-x64.zip
ADD ./VSCode-linux-x64.zip /vcs/

WORKDIR /vcs

RUN unzip VSCode-linux-x64.zip && rm VSCode-linux-x64.zip

RUN adduser --disabled-login --uid 1000 \--gecos 'dummy' dummy

CMD ["sudo","-u","dummy","/vcs/Code"]
