IP=$1
rapid7="https://54.236.84.177:3780"
user=Siddharth_Choudhary
password=Sid@hcl

result=$(curl -s -k -X POST \
  ${rapid7}/api/3/assets/search \
  -H 'Accept: application/json' \
  -H 'Content-Type: application/json' \
  -u $user:$password \
  -d '{
	"filters": [{ 
		"field": "ip-address", 
		"operator": "is", 
		"value": "'"$IP"'"
	}],
	"match": "all"
}')
echo $result
