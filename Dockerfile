FROM gcc:latest

RUN apt-get -y update && apt-get install -y

RUN apt-get -y install gcc
RUN apt-get -y install cmake

