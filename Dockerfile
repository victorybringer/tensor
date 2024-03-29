From tensorflow/tensorflow:0.11.0-gpu

RUN mkdir /notebooks/scene &&cd /etc/apt/sources.list.d && rm cuda.list && apt-get update


COPY scene    /notebooks/scene


RUN cd /notebooks/scene/ && pip install -r requirements.txt 



RUN  apt-get -y install python-numpy && cd /notebooks/scene/lib && make


RUN cd /notebooks/scene && chmod 777 ./download.sh && apt-get -y install wget && ./download.sh && cd /notebooks && chmod 777 -R scene




RUN apt-get -y install python-tk && apt-get -y install graphviz


WORKDIR /notebooks/scene


RUN mkdir data/vg && cp mini_VG-SGG-dicts.json data/vg && cp mini_imdb_1024.h5 data/vg/ && cp mini_VG-SGG.h5 data/vg/ && cp  mini_proposals.h5 data/vg/


RUN rm -f  mini_VG-SGG-dicts.json  && rm -f mini_imdb_1024.h5  && rm -f mini_VG-SGG.h5  && rm -f  mini_proposals.h5 
