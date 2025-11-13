# docker build -f Dockerfile -t weirdaal .
FROM python:3.8.10

WORKDIR /app/weirdAAL
COPY . .
RUN pip3 install -r /app/weirdAAL/requirements.txt
RUN python3 /app/weirdAAL/create_dbs.py

# docker run --entrypoint bash -it weirdaal
# python3 weirdAAL.py -m recon_all -t {{ name }}