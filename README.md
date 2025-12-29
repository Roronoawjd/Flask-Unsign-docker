# Flask-Unsign docker 환경

## 도커 실행

```
docker compose up -d
```

## 도커 접근

```
docker exec -it flask-unsign bash
```

## Flask 세션 디코딩

```
flask-unsign --decode --cookie "<Flask 세션 쿠키 값>"
```

## Secret Key 크랙 (무작위 대입 공격)

wordlist 크랙
```
flask-unsign --wordlist "<wordlist 파일 경로>" --unsign --cookie "<Flask 세션 쿠키 값>" --no-literal-eval
```

기본 크랙
```
flask-unsign --unsign --cookie "<Flask 세션 쿠키 값>"
```


## 새로운 세션 생성 (Re-Signing)

```
flask-unsign --sign --cookie "<세션 JSON 데이터>" --secret '<발견한_키>'
```
