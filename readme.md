# README

## Building
- change version string in `init.lua`
- create a new version: `luarocks new_version`
- change tag in `.rockspec` file
- `git add .`
- `git commit -m "add message"`
- `git push`
- update the tag: `git tag x.x.x && git push --tags`

The following lines can be run with the correct rockspec file. Or
the `deploy-rock.sh` script can be executed as long as the rockspec
is passed and the api-key is set.
- `luarocks build`
- `luarocks pack lua-rpg-dev-1.rockspec`
- `luarocks upload lua-rpg-dev-1.rockspec --api-key=$rocks_api_key`