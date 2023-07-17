FROM ubuntu:latest
FROM r-base:4.0.4

RUN apt-get update && apt-get install -y libcurl4-openssl-dev libfontconfig1-dev libxml2-dev libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev libgdal-dev libv8-dev cmake

ADD setupPANDA.R .
RUN Rscript setupPANDA.R

RUN echo "local(options(shiny.port = 3838, shiny.host = '0.0.0.0'))" > /usr/lib/R/etc/Rprofile.site
EXPOSE 3838

ENTRYPOINT ["bash"]
