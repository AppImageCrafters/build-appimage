# build-appimage-action

This action creates an AppImage using appimage-builder. Check the 
[appimage-builder documentation](https://appimage-builder.readthedocs.io/) for more details about writing the recipe
files.

## Inputs


### `recipe`

**Required** The appimage-builder recipe file.


## Outputs

### `appimage_file`

The generated AppImage file

### `appimage_zsync_file`

The generated AppImage zsync file if the update information was set.

## Example usage

```yaml
uses: actions/build-appimage-action@master
with:
  recipe: 'AppImageBuilder.yml'
```
