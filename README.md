```
$ curl -XPOST -d"title=new thing" http://todoio.herokuapp.com/james/todos
>> {"id":1,"title":"new thing","created_at":"2016-04-23T14:02:58.218Z","complete":false}

$ curl -XPOST -d"title=second thing" http://todoio.herokuapp.com/james/todos
>> {"id":2,"title":"second thing","created_at":"2016-04-23T14:03:26.751Z","complete":false}

$ curl -XPUT -d"title=second thing, edited" http://todoio.herokuapp.com/james/todos/2
>> {"id":2,"title":"second thing, edited","created_at":"2016-04-23T14:03:26.751Z","complete":false}

$ curl -XPUT -d"title=second thing, edited and complete&complete=true" http://todoio.herokuapp.com/james/todos/2
>> {"id":2,"title":"second thing, edited and complete","created_at":"2016-04-23T14:03:26.751Z","complete":true}

$ curl http://todoio.herkouapp.com/james/todos
>> [{"id":1,"title":"new thing","created_at":"2016-04-23T14:02:58.218Z","complete":false},{"id":2,"title":"second thing, edited","created_at":"2016-04-23T14:03:26.751Z","complete":false}]
```
