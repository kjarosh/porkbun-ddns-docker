FROM docker.io/python:3.11.2-alpine

WORKDIR /app
RUN pip install requests \
 && cd /app \
 && wget https://github.com/porkbundomains/porkbun-dynamic-dns-python/archive/8dd82e4760a8b60106d0e865569f8cd576f436e9.zip -O app.zip \
 && unzip app.zip \
 && mv porkbun-dynamic-dns-python-*/* /app \
 && rm -rf porkbun-dynamic-dns-python-*

ENTRYPOINT ["python", "/app/porkbun-ddns.py"]
