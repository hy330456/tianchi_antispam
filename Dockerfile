FROM registry.cn-shanghai.aliyuncs.com/tcc-public/tianchi_antispam:v1
WORKDIR /app
EXPOSE 80
EXPOSE 443

RUN pip3 install numpy
RUN mkdir -p /workfolder
COPY ./main.py /workfolder

CMD ["/bin/bash","run.sh"]