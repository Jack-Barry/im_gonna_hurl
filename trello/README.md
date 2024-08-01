# I'm Gonna Hurl: Trello

## Setup

1. Add a `vars.env` file at the root of this dir with the following values
   populated:

   ```shell
   TRELLO_API_KEY=<KEY>
   TRELLO_API_TOKEN=<TOKEN>
   ```

   Refer to [their docs](https://developer.atlassian.com/cloud/trello/guides/rest-api/authorization/)
   to obtain key and token

2. Use stuff from `scripts` or just run the Hurl requests directly, e.g.

   ```shell
   hurl --variables-file vars.env --variable CARD_ID=<SOME_CARD_ID> api/cards/delete_card.hurl
   ```
