# Letters

A letter is a packet of data that is sent from node to another.

A letter can be sent to multiple nodes at once but it has only one origin.

A letter can be the entire routine that is to be completed or it might just be a single link in a long chain of letters that travel between nodes.

A letter is identified by its `letterId` which is bestowd upon it by the original author of the letter. see `cuid`. These should be collision resistant id strings.

A letter's payload does not matter, so long as it is serializable via `JSON.stringify` and parsable via `JSON.parse`

The letter's `envelope` is where most of the magic happens. It can tell us if this

```js
{
  envelope:{
    version:'1.0.0',
    letterId:'unique id',
    recipients:['ids'],
    sender:{
      type:'machine' || 'server' || 'node', //etc
      id: 'id'
    },
    writeTimestamp:'timestamp',
    sentTimestamp:'timestamp',
    directResponseTo:['other_letterIds'] || [], // [optional], 
    responseFnName:'resolve' || 'reject' || 'playNote', //etc [optional]
    expiration:'timestamp', // [optional]
  },
  payload: anything
}
```