FROM python:2.7

LABEL Maintainer="Matt Burdan <burdz@burdz.net>"

RUN mkdir DuckToolkit

ADD . ./DuckToolkit

WORKDIR DuckToolkit

RUN python setup.py install

ENTRYPOINT python ducktools.py
