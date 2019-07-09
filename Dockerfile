From tensorflow/tensorflow:latest-gpu-jupyter

RUN mkdir /tf/scene  



COPY scene    /tf/scene


RUN cd /tf/scene/ && pip install -r requirements.txt 



RUN  apt-get -y install python-numpy && cd /tf/scene/lib && make


RUN cd /tf/scene && chmod 777 ./download.sh && apt-get -y install wget && ./download.sh
