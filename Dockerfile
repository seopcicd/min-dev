# Nginx 이미지 불러오기
FROM nginx:latest

# 컨테이너 내부의 /usr/share/nginx/html/index.html 파일을
# index.html 파일로 덮어쓰기
COPY ./index.html /usr/share/nginx/html/

# 데몬으로 실행(백그라운드에 접속하지 않고 실행하라고만 함) (컨테이너 실행할 때 동작)
CMD ["nginx", "-g", "daemon off;"]
