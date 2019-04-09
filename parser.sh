IP="10.3.0.117"
rapid7="https://54.236.84.177:3780"

result=$(curl -k -X POST \
  ${rapid7}/api/3/assets/search \
  -H 'Accept: application/json' \
  -H 'Content-Type: application/json' \
  -u Siddharth_Choudhary:Sid@hcl
  -d '{
	"filters": [{ 
		"field": "ip-address", 
		"operator": "is", 
		"value": "'"$IP"'"
	}],
	"match": "all"
}')
echo "result"
echo $result
