curl https://connect.squareupsandbox.com/v2/catalog/object \
  -X POST \
  -H 'Square-Version: 2020-05-28' \
  -H 'Authorization: Bearer EAAAELAA21m2GkfUkDLCzB02S2I4zZuWAMi655HsM8W6fZYaNookbpFy3tNkmjeS' \
  -H 'Content-Type: application/json' \
  -d '{
    "idempotency_key": "2363479e-ac49-4a1d-9575-ed7fe5858e08",
    "object": {
      "id": "#coffee",
      "type": "ITEM",
      "item_data": {
        "abbreviation": "Co",
        "description": "Coffee Drink",
        "name": "Coffee"
      }
    }
  }'

