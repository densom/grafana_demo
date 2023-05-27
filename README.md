# Grafana Demo

## Table of Contents

- [About](#about)
- [Usage](#usage)

## About <a name = "about"></a>

Simple docker compose set of grafana, loki, promtail, and graphite.  Also, a [log generator](https://pypi.org/project/log-generator/) pushes random log
data to loki via a promtail sidecar for demonsttrating pipelines.

![alt](https://lucid.app/publicSegments/view/368da1ee-3204-4d86-8994-cf1be93142d3/image.png)

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- (optional) [RestClient](https://marketplace.visualstudio.com/items?itemName=humao.rest-client)


End with an example of getting some data out of the system or using it for a little demo.

## Usage <a name = "usage"></a>

* `docker compose up`
* Create the Loki datasource (one of the following):
    * Run `.\create-datasource.ps1`
    * Use the snippet in the [testing.http](testing.http) along with the recommended [RestClient](https://marketplace.visualstudio.com/items?itemName=humao.rest-client) to create the datasource.
    * (optional) If you did not use the automation above, you can manually add a datasource in Grafana of type "Loki" and point it to http://loki:3100/.
* Navigate to Grafana at http://localhost:3000.
