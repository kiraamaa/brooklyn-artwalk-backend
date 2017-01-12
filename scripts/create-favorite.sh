curl --include --request POST http://localhost:4741/favorites \
  --header "Content-Type: application/json" \
  --data '{
    "favorite": {
      "artwalk_id": "2",
      "user_id": "1"
    }
  }'
