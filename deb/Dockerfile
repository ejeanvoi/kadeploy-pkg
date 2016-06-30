FROM debian:jessie
RUN apt-get update && apt-get install -y git rake help2man ruby-mysql texlive-base texlive-latex-base texlive-latex-extra git-buildpackage gem2deb
RUN git config --global user.email "emmanuel.jeanvoine@inria.fr" && git config --global user.name "Emmanuel Jeanvoine"
RUN mkdir /tmp/kadeploy && mkdir /tmp/build_result && git clone https://github.com/madynes/kadeploy.git /tmp/kadeploy
CMD cd /tmp/kadeploy && rake doc && rake apidoc && rake debian | sh && cp doc/*.pdf doc/api/*.html ../*.deb ../*.xz /tmp/build_result
