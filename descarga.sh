#!/bin/sh

curl https://wikimedia.org/api/rest_v1/metrics/pageviews/per-article/es.wikipedia/all-access/all-agents/Nicol%C3%A1s_Cop%C3%A9rnico/daily/2017010100/2017010900 | jq '.items[] | .views ' > 2017.dat
curl https://wikimedia.org/api/rest_v1/metrics/pageviews/per-article/es.wikipedia/all-access/all-agents/Nicol%C3%A1s_Cop%C3%A9rnico/daily/2016010100/2016010900 | jq '.items[] | .views ' > 2016.dat


