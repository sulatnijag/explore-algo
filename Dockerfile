FROM python:3

WORKDIR /usr/src/app

#COPY requirements.txt ./
#RUN pip install --no-cache-dir -r requirements.txt

RUN pip install lightstreamer-client-lib

COPY src/. .
ENV PYTHONUNBUFFERED=1

#ENTRYPOINT ["tail"] 
#CMD ["-f","/dev/null"]

CMD [ "python3", "-u", "stock_list_demo.py" ]
