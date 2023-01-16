FROM node:16.19.0

# 워크 디렉토리 생성
RUN mkdir -p /app
WORKDIR /app
ADD . /app/

# 패키지 설치 && 빌드
RUN npm install
RUN npm run build

# IP, PORT 개방
ENV HOST 0.0.0.0
EXPOSE 3000

# NEST 실행
ENTRYPOINT npm run start:prod