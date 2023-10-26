FROM python:3.8
RUN mkdir -p /app
WORKDIR /app
ADD requirements.txt /app/requirements.txt
RUN pip3 install -r /app/requirements.txt
COPY spectrum.py /app/
ENTRYPOINT ["python3", "spectrum.py"]