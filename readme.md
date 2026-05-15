# README

## Building
update the tag: `git tag x.x.x && git push --tags`
then build:
`./luarocks new_version`
`./luarocks build`
`./luarocks pack lua-rpg-dev-1.rockspec`

then upload:
`./luarocks upload lua-rpg-dev-1.rockspec --api-key=<API-KEY>