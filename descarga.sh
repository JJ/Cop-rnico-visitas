#!/bin/sh

curl https://wikimedia.org/api/rest_v1/metrics/pageviews/per-article/es.wikipedia/all-access/all-agents/Nicol%C3%A1s_Cop%C3%A9rnico/daily/2017010100/2017011400 | jq '.items[] | .views ' > datos/2017.dat
curl https://wikimedia.org/api/rest_v1/metrics/pageviews/per-article/es.wikipedia/all-access/all-agents/Nicol%C3%A1s_Cop%C3%A9rnico/daily/2016010100/2016011400 | jq '.items[] | .views ' > datos/2016.dat
curl https://wikimedia.org/api/rest_v1/metrics/pageviews/per-article/es.wikipedia/all-access/all-agents/Teor%C3%ADa_helioc%C3%A9ntrica/daily/2017010100/2017011400 | jq '.items[] | .views ' > datos/visitas-teoría-heliocéntrica-2017.dat
curl https://wikimedia.org/api/rest_v1/metrics/pageviews/per-article/es.wikipedia/all-access/all-agents/Teor%C3%ADa_helioc%C3%A9ntrica/daily/2016010100/2016011400 | jq '.items[] | .views ' > datos/visitas-teoría-heliocéntrica-2016.dat
