#!/bin/sh

api="https://wikimedia.org/api/rest_v1/metrics/pageviews/per-article/es.wikipedia/all-access/all-agents"
today=`date +"%Y%m%d"`
req="daily/2017011500"
oo="00"
oldtoday=`date +"%m%d"`
oldreq="daily/2016011500/2016"

for i in "Paloma_Chamorro" "Winona_Ryder" "John_Hurt" 
do
    curl "$api/$i/$req/$today$oo" | jq '.items[] | .views ' > "datos/$i-2017.dat"

    curl "$api/$i/$oldreq$oldtoday$oo" | jq '.items[] | .views ' > "datos/$i-2016.dat"
done    
