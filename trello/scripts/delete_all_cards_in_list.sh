#!/bin/bash
list_cards=$(hurl --variables-file vars.env --variable LIST_ID="$1" api/lists/_id/cards/get_cards_in_list.hurl)

echo "$list_cards" | jq -c '.[]' | while IFS= read -r card; do
  card_id=$(echo "$card" | jq -r '.id')

  echo "Deleting card with ID: $card_id"
  hurl \
    --no-output \
    --variables-file vars.env \
    --variable CARD_ID="$card_id" \
    api/cards/delete_card.hurl
done
echo "✅ Deleted all cards in list"
