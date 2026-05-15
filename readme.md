# README

## Building
create a new version: `./luarocks new_version`
update the tag: `git tag x.x.x && git push --tags`
`./luarocks build`
`./luarocks pack lua-rpg-dev-1.rockspec`

then upload:
`./luarocks upload lua-rpg-dev-1.rockspec --api-key=<API-KEY>`