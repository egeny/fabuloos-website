---
layout: function
name: fab.extend
description: Extend some objects or the fabuloos' prototype
tags: utility
signatures:
  -
    params:
    -
      name: obj
      type: object
      description: The object to merge to the prototype.
    return:
      type: undefined
      description: Return nothing.
  -
    params:
    -
      name: ...
      type: object
      description: The objects to merge together.
    return:
      type: undefined
      description: Return nothing.
---

Basically, this function merge some objects.  
When passing just one object, it will be merge to the fabuloos' prototype and a `_super` property will be created if necessary:

```js
// Add a foo method to the fabuloos' prototype:
fab.extend({
  foo: function() { console.log("foo"); }
});

fab("player").foo(); // Display "foo" in the console

// If you want to “surcharge” the foo method, just override it
fab.extend({
  foo: function() { console.log("bar"); }
});

fab("player").foo(); // Display "bar" in the console

// The first method (displaying "foo") is dumped since the last once doesn't call _super
// Now if you prefer to simulate inheritance:
fab.extend({
  foo: function() {
    this._super(); // Call the previous "foo" method
    console.log("yay!");
  }
});

fab("player").foo(); // Display "bar" and "yay!" in the console
```

Passing two or more objects will merge the objects in the first one, for instance:

```js
var
  one = { one: 1 },
  two = { two: 2 };

fab.extend(one, two);

console.log(one); // Will give { one: 1, two: 2 }
console.log(two); // Will give { two: 2 }
```

{% alert %}
As you can see, this will **modify** the first object, use with caution.
{% endalert %}

This behaviour is useful when you want to extend a “class” with static members:

```js
fab.extend(fab, {
  clear: function() { console.log("clear"); }
});
```

This will add a `clear` function to `fab` (static), not to the prototype.

This function is designed to work with every object, so you can add a reference to one of your “class”:

```js
function MyClass() {}

MyClass.extend = fab.extend; // Create a reference to extend on MyClass

// This will add the method foo to MyClass' prototype
MyClass.extend({
  foo: function() { console.log("foo"); }
});
```