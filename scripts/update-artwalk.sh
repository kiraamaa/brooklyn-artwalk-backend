curl --include --request PATCH http://localhost:4741/artwalks/1 \
  --header "Content-Type: application/json" \
  --data '{
    "artwalk": {
      "tags": ["New Gallery", "Cool Gallery"]
    }
  }'
