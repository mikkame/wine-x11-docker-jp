FROM hironishi/openbox-mozc-docker


USER root
RUN dpkg --add-architecture i386
RUN apt update &&  apt-get install wine32-development -y

USER ubuntu
CMD [xvnc]