# hubot-roman-numerals

A hubot script for translating decimal numbers into roman numerals

See [`src/roman-numerals.coffee`](src/roman-numerals.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-roman-numerals --save`

Then add **hubot-roman-numerals** to your `external-scripts.json`:

```json
[
  "hubot-roman-numerals"
]
```

## Sample Interaction

```
user1>> hubot translate 1
hubot>> I
```

```
user1>> hubot translate 2
hubot>> II
```

```
user1>> hubot translate 3
hubot>> III
```

```
user1>> hubot translate 27
hubot>> XXVII
```

```
user1>> hubot translate 1024
hubot>> MXXIV
```

## NPM Module

https://www.npmjs.com/package/hubot-roman-numerals
