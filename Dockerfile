FROM rocker/shiny:4.3.2
RUN install2.r rsconnect
WORKDIR /home/shinyusr
COPY app.R app.R
COPY deploy.R deploy.R
CMD Rscript deploy.R
