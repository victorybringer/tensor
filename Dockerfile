From tensorflow/tensorflow:latest-gpu-jupyter

RUN mkdir /tf/scene 



COPY scene    /tf/scene


RUN  cd /tf/scene/ && pip install -r requirements.txt