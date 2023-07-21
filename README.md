# Shuffler

Sinatra app for _Slack Slash commands_ to return words in shuffled order.

It's deployed to https://fly.io and requires `TOKEN` env var to validate requests.

## How to use

Write in any Slack channel:

```
/shuffle John Marry Nick
```

It will return same words in a random order.
