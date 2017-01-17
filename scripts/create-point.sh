curl --include --request POST http://localhost:4741/points \
  --header "Content-Type: application/json" \
  --data '{
    "point": {
      "lat": "32",
      "lng": "11",
      "title": "Egg walk",
      "content": "cool place",
      "done": "false",
      "artwalk_id": "13"
    }
  }'
