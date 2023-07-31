FROM python:3-slim

WORKDIR /opt/grafana-dashboard-manager
ADD . .
RUN pip install .

WORKDIR /opt
RUN grafana-dashboard-manager --help

#RUN grafana-dashboard-manager \
#	--host \
#	--username \
#	--password \
#	download all \
#	--destination-dir /opt/grafana-download/dashboards

