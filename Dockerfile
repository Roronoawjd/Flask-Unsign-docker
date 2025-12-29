# Dockerfile
FROM python:3.11-slim

ENV PYTHONUNBUFFERED=1
WORKDIR /app

# wget, gzip 설치, 캐시 정리
RUN apt-get update && \
    apt-get install -y --no-install-recommends wget gzip ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# flask-unsign 패키지 설치
RUN pip install flask-unsign[wordlist]

# rockyou.txt.gz 받아서 압축 해제
RUN wget -O rockyou.txt.gz "https://github.com/Roronoawjd/wordlist/raw/refs/heads/main/rockyou.txt.gz" && \
    gunzip -f rockyou.txt.gz

RUN ls -lh /wordlists || true
CMD ["bash"]