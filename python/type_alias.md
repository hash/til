# [NewType](https://docs.python.org/3/library/typing.html#newtype)

```python
from typing import NewType

UserId = NewType('UserId', int)
some_id = UserId(524313)
```

> Recall that the use of a type alias declares two types to be equivalent to one another. Doing Alias = Original will make the static type checker treat Alias as being exactly equivalent to Original in all cases. This is useful when you want to simplify complex type signatures.

> In contrast, NewType declares one type to be a subtype of another. Doing Derived = NewType('Derived', Original) will make the static type checker treat Derived as a subclass of Original, which means a value of type Original cannot be used in places where a value of type Derived is expected. This is useful when you want to prevent logic errors with minimal runtime cost.
