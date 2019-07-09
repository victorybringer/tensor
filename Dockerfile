From tensorflow/tensorflow:0.11.0-gpu

RUN mkdir /notebooks/scene  



COPY scene    /notebooks/scene


RUN cd /notebooks/scene/ && pip install -r requirements.txt 



RUN  apt-get -y install python-numpy && cd /notebooks/scene/lib && make


RUN cd /notebooks/scene && chmod 777 ./download.sh && apt-get -y install wget && ./download.sh



