# Fluentd


[Collecting Logs into Elasticsearch and S3](https://www.fluentd.org/guides/recipes/elasticsearch-and-s3)


## Sample td-agent.conf
```
# HTTP input
# POST http://localhost:8888/<tag>?json=<json>
# POST http://localhost:8888/td.myapp.login?json={"user"%3A"me"}
# @see http://docs.fluentd.org/articles/in_http
<source>
  @type http
  port 8888
</source>

## match tag=debug.** and dump to console
<match debug.**>
  @type stdout
</match>
```

- <source> is for input plugins
- <match> is for output plugins
In this case, http request is routed to stdout and http request like `http://localhost:8888/debug.test` which includes `debug` is routed.

#### match
イベントをタグ指定してoutputプラグインに渡す

#### filter
パイプライン的に複数のfilterを割り当てることができる

#### system
システムレベルの設定を記述

#### label
matchやfilterをlabelでグルーピングする

