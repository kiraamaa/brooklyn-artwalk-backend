curl --include --request POST http://localhost:4741/favorites \
  --header "Content-Type: application/json" \
  --data '{
    "favorite": {
      "title": "new fave",
      "artwalk_id": "67",
      "user_id": "1"
    }
  }'
