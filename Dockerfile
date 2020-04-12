FROM fedora
RUN dnf -y install net-tools git java java-devel
WORKDIR /home
RUN (cd /home; git clone https://github.com/adelTouati1/CS455.git)
RUN (cd /home/CS455/;  javac *.java)
RUN /usr/sbin/ifconfig
CMD (cd /home/CS455/;  java TimeServer 5141)
