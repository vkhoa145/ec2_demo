FROM nginx:1.23

RUN apt-get update && \
  apt-get install -y apt-utils vim \
  locales && \
  echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen && \
  locale-gen ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8
# Rails環境の設定ファイル
ADD ./docker/nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./docker/nginx/default.conf /etc/nginx/conf.d/default.conf