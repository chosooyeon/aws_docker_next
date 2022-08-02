#우분투 버전 FROM <이미지>:<태그>
#FROM ubuntu:14.19.1
FROM node:16.13.2-alpine

WORKDIR /myprj/aws_docker_next

#컨테이너 내부에 파일을 복사한다
COPY . .

RUN npm run build

#컨테인 포트 3000번 설정
EXPOSE 3000

#애플리케이션 실행
CMD ["npm","run","dev"]