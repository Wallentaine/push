FROM httpd:2.4.33-alpine

# Обновление пакетов
RUN apk update && apk upgrade

# Копирование файла конфигурации Apache
COPY apache.conf /usr/local/apache2/conf/demo.apache.conf

# Включение файла конфигурации в основной конфигурационный файл Apache
RUN echo "Include /usr/local/apache2/conf/demo.apache.conf" \
    >> /usr/local/apache2/conf/httpd.conf

# Включение модуля mod_rewrite
RUN sed -i '/LoadModule rewrite_module/s/^#//g' /usr/local/apache2/conf/httpd.conf
