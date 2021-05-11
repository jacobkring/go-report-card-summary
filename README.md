# Hello world docker action

This action prints "Hello World" to the log or "Hello" + the name of a person to greet. To learn how this action was built, see "[Creating a Docker container action](https://help.github.com/en/articles/creating-a-docker-container-action)" in the GitHub Help documentation.

## Inputs

### `percent`

**Required** The percentage to pass the report card. Default `"80"`.

## Outputs

### `time`

The time we greeted you.

## Example usage

```yaml
uses: jacobkring/go-report-card-summary@v1
with:
  percent: '80'
```
