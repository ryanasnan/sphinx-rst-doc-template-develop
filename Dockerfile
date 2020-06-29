FROM python:slim
LABEL maintainer="Ryan Asnan"

RUN apt-get update \
 && apt-get install -y \
      sudo \
      git \
      graphviz \
      imagemagick \
      make \
 && apt-get autoremove \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install -U pip
RUN python3 -m pip install Sphinx==3.1.1 Pillow
RUN python3 -m pip install sphinx-rtd-theme==0.5.0
RUN python3 -m pip install sphinxcontrib-httpdomain
RUN python3 -m pip install sphinxcontrib-httpexample

RUN useradd -mk /home/ryan -u 1000 -U ryan
RUN usermod -aG sudo ryan

RUN mkdir /sphinxrtd
RUN chown ryan /sphinxrtd

USER ryan
WORKDIR /sphinxrtd

CMD ["make", "clean", "html"]
