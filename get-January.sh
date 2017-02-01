#!/bin/sh

api="https://wikimedia.org/api/rest_v1/metrics/pageviews/per-article/es.wikipedia/all-access/all-agents"
req="daily/2017010100/2017013100"
oldreq="daily/2016010100/2016013100"

for i in "Nicol%C3%A1s_Cop%C3%A9rnico" "Meryl_Streep" "Teor%C3%ADa_helioc%C3%A9ntrica"
do
    curl "$api/$i/$req" | jq '.items[] | .views ' > "datos/$i-2017.dat"

    curl "$api/$i/$oldreq" | jq '.items[] | .views ' > "datos/$i-2016.dat"
done    
