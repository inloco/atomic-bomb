# Atomic Bomb - In Loco Atomic CSS

## Installing

```sh
  npm install --save @inloco/atomic-bomb
  #or
  yarn add @inloco/atomic-bomb
```

### Release

To release, follow these steps (let's pretend we're releasing `1.2.3`):

1. Update the version in `package.json` to the new one (in this case `1.2.3`).
2. Create a commit with the version number as the title: `v1.2.3`:

```sh
git commit -m v1.2.3
```

3. Create a new git tag:

```sh
git tag -a v1.2.3 -m v1.2.3
```

4. Push the commit and the tag to master:

```sh
git push origin master --tags
```

5. Publish to npm (you'll need to be logged in and have permission on **In Loco** organization):

```sh
npm publish --access public
```
