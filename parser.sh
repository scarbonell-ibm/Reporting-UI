IP="10.3.0.117"
rapid7="https://54.236.84.177:3780"

result=$(curl -k -X POST \
  ${rapid7}/api/3/assets/search \
  -H 'Accept: application/json' \
  -H 'Authorization: Basic U2lkZGhhcnRoX0Nob3VkaGFyeTpTaWRAaGNs' \
  -H 'Content-Type: application/json' \
  -H 'Postman-Token: 0bd2544f-f2a3-460f-ae59-eb5bb96a0923' \
  -H 'cache-control: no-cache' \
  -d '{
	"filters": [{ 
		"field": "ip-address", 
		"operator": "is", 
		"value": '{$IP}'
	}],
	"match": "all"
}')
echo "result"
echo $result
