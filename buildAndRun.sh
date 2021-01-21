#!/bin/sh
mvn clean package && docker build -t com.avbravo/microprofilehealthserver .
docker rm -f microprofilehealthserver || true && docker run -d -p 9080:9080 -p 9443:9443 --name microprofilehealthserver com.avbravo/microprofilehealthserver