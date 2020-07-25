curl https://connect.squareupsandbox.com/v2/locations/PR4NVQPCRMEYP/orders \
  -X POST \
  -H 'Square-Version: 2020-07-22' \
  -H 'Authorization: Bearer EAAAEM258AC31Bsjmqof2qcdEeohSzhJEuWbFcyiFp3Z1JVbyqPrCmKruAMuLbAZ' \
  -H 'Content-Type: application/json' \
  -d '{
    "idempotency_key": "8193148c-9586-11e6-99f9-28cfe92138cf",
    "order": {
      "reference_id": "my-order-001",
      "line_items": [
        {
          "name": "New York Strip Steak",
          "quantity": "1",
          "base_price_money": {
            "amount": 1599,
            "currency": "USD"
          }
        },
        {
          "quantity": "2",
          "catalog_object_id": "BEMYCSMIJL46OCDV4KYIKXIB",
          "modifiers": [
            {
              "catalog_object_id": "CHQX7Y4KY6N5KINJKZCFURPZ"
            }
          ],
          "applied_discounts": [
            {
              "discount_uid": "one-dollar-off"
            }
          ]
        }
      ],
      "taxes": [
        {
          "uid": "state-sales-tax",
          "name": "State Sales Tax",
          "percentage": "9",
          "scope": "ORDER"
        }
      ],
      "discounts": [
        {
          "uid": "labor-day-sale",
          "name": "Labor Day Sale",
          "percentage": "5",
          "scope": "ORDER"
        },
        {
          "uid": "membership-discount",
          "catalog_object_id": "DB7L55ZH2BGWI4H23ULIWOQ7",
          "scope": "ORDER"
        },
        {
          "uid": "one-dollar-off",
          "name": "Sale - $1.00 off",
          "amount_money": {
            "amount": 100,
            "currency": "USD"
          },
          "scope": "LINE_ITEM"
        }
      ]
    }
  }'

