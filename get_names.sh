#!/usr/bin/env bash

jq -r -s '.[].response.games[] | "\(.appid) \(.playtime_forever)" ' aloyr_games.json | \
  while read sid playtime; do \
    jq -sr "[.[].applist.apps[]] | sort_by(.appid) | unique_by(.appid) | .[] | select(.appid==${sid}) | \"${playtime} \(.name)\"" all_apps_list.json
  done
