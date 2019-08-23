# deptrac-action

## What does this action do?

This action runs [`sensiolabs-de/deptrac`](https://github.com/sensiolabs/deptrac).
You define via `args` which command runs and which depfile is used.

That is, when you enable this action, the action will fail when finds violations between layers.

## Usage

Define a workflow in `.github/workflows/ci.yml` (or add a job if you already have defined workflows).

:bulb: Read more about [Configuring a workflow](https://help.github.com/en/articles/configuring-a-workflow).

There are two ways of using this action:

* using the pre-built Docker image (faster)
* letting GitHub build the Docker image for you (slower)

### Pre-built Docker image

```yaml
on: [push, pull_request]
name: Test
jobs:
  deptrac:
    name: deptrac
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - name: deptrac
      uses: docker://smoench/deptrac-action:latest
      with:
        args: analyse depfile.yml
```

You can also execute the image directly by running

```shell script
docker run --interactive --rm --tty --workdir=/app --volume ${PWD}:/app smoench/deptrac-action:latest analyse depfile.yml
```

:bulb: Also see [Docker Docs: Docker run reference](https://docs.docker.com/engine/reference/run/).

### GitHub Repository

If you prefer to have GitHub to build the image for you, you can specify the repository instead:

```yaml
name: CI

on: push

jobs:
  deptrac:
    name: deptrac
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - name: deptrac
        uses: smoench/deptrac-action@master
```

## License

This package is licensed using the MIT License.

## Credits

The implementation of this GitHub action is largely inspired by the work of [`Andreas Möller`](https://github.com/localheinz) on the GitHub actions [`localheinz/composer-normalize-action`](https://github.com/localheinz/composer-normalize-action).
