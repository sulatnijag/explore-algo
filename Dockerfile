FROM python:3

WORKDIR /usr/src/app

#COPY requirements.txt ./
#RUN pip install --no-cache-dir -r requirements.txt

RUN pip install lightstreamer-client-lib

COPY src/. .

#ENTRYPOINT ["tail"] 
#CMD ["-f","/dev/null"]

CMD [ "python", "main.py" ]
