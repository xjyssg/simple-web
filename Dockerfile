FROM python:3

WORKDIR /usr/webapp
COPY web.py /usr/webapp/web.py
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple/ --upgrade pip && \
    pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple/ flask

EXPOSE 5000
ENTRYPOINT [ "python3", "web.py" ]