harbor/graphite
---------------

A simple graphite container for small-scale deployments.


Example crane.yaml
------------------

``` yaml
containers:
  graphite-carbon:
    image: harbor/graphite
    run:
      detach: true
      env-file: [environment]
      publish: ["2003:2003", "2004:2004", "7002:7002"]
      restart: always
      volume: ["conf:/opt/graphite/conf"]
      volumes-from: [graphite-data]
      cmd: ["/opt/graphite/bin/carbon-cache.py", "start", "--nodaemon"]
  graphite-data:
    image: busybox
    run:
      detach: true
      volume: [/opt/graphite/storage]
```
