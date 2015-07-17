FROM index.alauda.cn/dubuqingfeng/centos7-mongodb

RUN apt-get update && apt-get install -y python-pip python-dev libpq-dev git curl
RUN mkdir /app
WORKDIR /app

ENV version 2.3.3
COPY requirements.txt /
RUN ls -al requirements.txt
RUN pip install -r requirements.txt

CMD ["bash"]
