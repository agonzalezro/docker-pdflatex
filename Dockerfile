FROM ubuntu:12.04
MAINTAINER Alexandre Gonzalez <agonzalezro@gmail.com>

RUN echo "deb mirror://mirrors.ubuntu.com/mirrors.txt precise main restricted universe multiverse" > /etc/apt/sources.list && \ 
  apt-get update &&  \
  apt-get -y install texlive-latex-extra texlive-fonts-recommended &&  \
  apt-get clean && apt-get purge

VOLUME ["/output"]

ENTRYPOINT ["pdflatex", "-output-dir=/output"]
