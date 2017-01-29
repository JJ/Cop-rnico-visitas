#!/bin/sh


api="https://wikimedia.org/api/rest_v1/metrics/pageviews/per-article/es.wikipedia/all-access/all-agents"

curl "$api/Carrie_Fisher/daily/2016121500/2017011500" | jq '.items[] | .views ' > datos/Carrie-Fisher-2017.dat
curl "$api/Carrie_Fisher/daily/2015121500/2016011500" | jq '.items[] | .views ' > datos/Carrie-Fisher-2016.dat

curl "$api/George_Michael/daily/2016121500/2017011500" | jq '.items[] | .views ' > datos/George-Michael-2017.dat
curl "$api/George_Michael/daily/2015121500/2016011500" | jq '.items[] | .views ' > datos/George-Michael-2016.dat

curl "$api/Robert_Vaughn/daily/2016111500/2016121500" | jq '.items[] | .views ' > datos/Vaughn-2016.dat
curl "$api/Robert_Vaughn/daily/2015111500/2015121500" | jq '.items[] | .views ' > datos/Vaughn-2015.dat
