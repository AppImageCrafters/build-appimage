# build-appimage

Create an AppImage using appimage-builder. Check the  [appimage-builder documentation](https://appimage-builder.readthedocs.io/) for more details about writing the recipe files.

## Inputs


### `recipe`

**Required** The appimage-builder recipe file.

### `args`

**Optional** The appimage-builder execution args.


## Example usage

```yaml
uses: AppImageCrafters/build-appimage@master
  with:
    recipe: "./appimage-demo-qt5/AppImageBuilder.yml"
  env:
    UPDATE_INFO: gh-releases-zsync|AppImageCrafters|appimage-demo-qt5|latest|*x86_64.AppImage.zsync
```
