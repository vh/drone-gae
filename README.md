# drone-gae

## Example
```
deploy:
  image: maki/drone-gae
  project: example-app
  version: 1
  secrets: [ google_credentials ]
  when:
    event: push
    branch: master
```
