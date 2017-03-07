#!/bin/sh

api="https://wikimedia.org/api/rest_v1/metrics/pageviews/per-article/es.wikipedia/all-access/all-agents"
req="daily/2017011500/2017021500"
oldreq="daily/2016011500/2016021500"

for i in "Paloma_Chamorro" "Winona_Ryder" "John_Hurt" 
do
    curl "$api/$i/$req" | jq '.items[] | .views ' > "datos/$i-2017.dat"

    curl "$api/$i/$oldreq" | jq '.items[] | .views ' > "datos/$i-2016.dat"
done    
