---
layout: function
name: fab.toArray
description: A simple useful wrapper to cast to array
tags: [utility]
signatures:
  -
    params:
    -
      name: obj
      type: "*"
      description: The object to cast to array.
    return:
      type: array
      description: Return the object casted.
---

This function is useful when you need a real array (for instance, when you want to cast `arguments` or `NodeList`).

Since it is just a wrapper for `Array.prototype.slice` you cannot pass `null` or `undefined`. If you do so, this function will raise an exception.