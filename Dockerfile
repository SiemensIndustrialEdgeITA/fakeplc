FROM python:3.8.8-buster

WORKDIR /app/

COPY main.py \
     requirements.txt \
     custom_nodes.xml \
     ./

RUN pip3 install -r requirements.txt

CMD ["python3","-u","./main.py"]
