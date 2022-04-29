FROM httpd:2.4
RUN apt-get update
#strona
COPY ./index.html /usr/local/apache2/htdocs/
#konfiguracja
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
RUN apachectl restart
#RUN sed -i \
		#-e 's/^#\(Include .*httpd-ssl.conf\)/\1/' \
		#-e 's/^#\(LoadModule .*mod_ssl.so\)/\1/' \
		#-e 's/^#\(LoadModule .*mod_socache_shmcb.so\)/\1/' \
		#conf/httpd.conf
	#przekierowanie na port 443 i 80
#EXPOSE 80
#EXPOSE 443

