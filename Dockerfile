FROM continuumio/anaconda
MAINTAINER gangt.tao@outlook.com

RUN pip install boto3
RUN pip install mlflow
RUN /opt/conda/bin/conda install jupyter -y --quiet
RUN mkdir /opt/notebooks

COPY ./start.sh /
RUN chmod +x /start.sh

WORKDIR /
EXPOSE 8888

CMD ["/bin/sh","./start.sh"]