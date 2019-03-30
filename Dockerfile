FROM python:3

EXPOSE 8888

# Install base packages
RUN apt-get update && apt-get install -y \
    graphviz \
    pandoc \
    texlive-latex-base \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-latex-extra \
    poppler-utils \
  && rm -rf /var/lib/apt/lists/*

# Install Python 3 modules
RUN pip3 install jupyter 
RUN pip3 install graphviz
RUN pip3 install pyyaml
RUN pip3 install pandas
RUN pip3 install numpy
RUN pip3 install matplotlib
RUN mkdir /root/.jupyter

# Add default password
ADD jupyter_notebook_config.json /root/.jupyter

# Configure
WORKDIR /workdir
CMD ["/usr/local/bin/jupyter","notebook","--ip=0.0.0.0","--allow-root","--no-browser"]
