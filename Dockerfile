FROM ubuntu:latest

RUN apt-get update && apt-get install -y git libssl-dev libpam0g-dev zlib1g-dev dh-autoreconf
RUN git clone https://github.com/stphnsmpsn/shellinabox.git && cd shellinabox
RUN autoreconf -i
RUN ./configure --disable-ssl
RUN make
#RUN make install
RUN useradd -m -g users -G sudo username
RUN echo "username:password" | chpasswd
RUN shellinaboxd -s /:LOGIN
