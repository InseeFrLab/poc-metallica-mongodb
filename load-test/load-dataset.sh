#!/bin/bash
occurences=40000
db="mongodb"
 
case $db in
  mongodb) plateform="QF1";;
  postgresql) plateform="QF2";;
  *) plateform="none";;
esac

#Step 1 : init context

http_code_context=$(curl -o /dev/null -s -w "%{http_code}" -X POST "https://queen-api-mongo.dev.insee.io/api/create-dataset")
echo $http_code_context

#Step 2 : init survey units
 if [ ${http_code_context} -eq 200 ]; then
    curl -X POST "https://sabiane-data-api.dev.insee.io/queen/api/integrate-generated-data?campaign=VQS2021X00&questionnaireId=VQS2021X00&occurrences=${occurences}&index=1&plateform=${plateform}&better=true"
 fi

