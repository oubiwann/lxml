# The API

## ``start``

> Starting up lxml for parsing URLs and following media links:

```cl
> (lxml:start)
(#(inets ok) #(ssl ok) #(lhttpc ok) #(lhc ok) #(lxml ok))
```

This function simply starts the lhc LFE HTTP client. If you plan on parsing XML
from URLs or if you want to be able to call the ``get-linked`` function, you
will first need to call ``start``.

## ``parse``

## ``get-data``

## ``get-in``

## ``get-linked``

## ``map``

## ``foldl``
