FROM ruby:2.3.1
ADD * /
RUN apt-get update
RUN apt-get -y install curl
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash
RUN apt-get -y install nodejs
RUN npm install mdpdf -g
ENTRYPOINT ["/release-pdf.sh"]
CMD [ ]