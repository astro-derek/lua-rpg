#!/bin/sh

if [ -z "$1" ]; then
	echo "Error: the rockspec file must be passed."
	exit 1
fi

if [ -z "$rocks_api_key" ]; then
	echo "Error: rocks_api_key must be set."
	exit 1
fi

luarocks build
luarocks pack "$1"
luarocks upload "$1" --api-key="$rocks_api_key"