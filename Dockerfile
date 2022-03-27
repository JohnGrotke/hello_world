FROM gcc:latest

RUN apt-get -y update && apt-get install -y

RUN apt-get -y install gcc
RUN apt-get -y install cmake

COPY . /usr/src/hello_world

WORKDIR /usr/src/hello_world

RUN cmake -S . -B build/
RUN make -C build/

CMD [ "./build/HelloWorld" ]