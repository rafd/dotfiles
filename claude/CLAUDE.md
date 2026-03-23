
## Clojure Style Guide

Follow idiomatic Clojure style, with the following additions and exceptions:

- avoid `#(...)`-style anonymous functions, prefer `(fn [args] body)`

- ns
    - prefer `:as` rather than `:refer [specific]`
        - (when designing the api for a namespace, aim to make it useable with `:as` )
    - never do `:refer :all`

- use `->` and `->>` liberally; almost always when there are 3 or more nested function calls
  - except with math formulas (ie. prefer (/ (* 2 3) 4) over (-> 2 (* 3) (/ 4)))


- prefer `(.. e -target -value)` over `(-> e .-target .-value)`

- avoid `#:user{:name "..." :email "..."}` style map literals
    - (prefer `{:user/name "..." :user/email "..."}` )
- avoid `letfn`
- avoid dense use of `partial`, `juxt` and `comp`
- `(when (not ...) ...)` and `(if (not ...) ...)` are fine
- feel free to leave useful `#_(use-of-some-fn)` below a function, or a multi step `(comment (use-of-some-fn))` at the bottom of a namespace
- when writing data literals, prefer `[]` over `'()`
- when defining data structures, consider if a set `#{}` is more appropriate than a vector `[]`

- if a function takes more than 2 arguments, consider taking in a map
- use ! suffix for all functions with meaningful side-effects (saving to db, sending email, etc.)


### Formatting

- use `;;` for start-of-line comments
- use `#_` for "commenting out" code, not `;;`
- maps have each key-value pair on its own line
- `->>` should have each statement on its own line
- ns requires should be ordered as three groups, and alphabetically within each group:
   - `clojure.*`
   - `other`
   - `current.project.*`
- if expressions should have each branch expression on its own line


