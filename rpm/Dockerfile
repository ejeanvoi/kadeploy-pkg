FROM centos:7
RUN yum -y install which ruby rake git help2man mysql-devel texlive-latex-bin-bin texlive-texconfig texlive-collection-latexrecommended tar rpm-build
RUN gem install ruby-mysql
RUN adduser deploy
RUN mkdir /tmp/kadeploy && mkdir /tmp/build_result && git clone https://github.com/madynes/kadeploy.git /tmp/kadeploy
CMD cd /tmp/kadeploy && rake rpm && cp /tmp/kabuild/RPMS/noarch/*.rpm /tmp/build_result
