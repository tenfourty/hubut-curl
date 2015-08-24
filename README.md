# hubot-curl [![Build Status](https://travis-ci.org/tenfourty/hubut-curl.svg?branch=master)](https://travis-ci.org/tenfourty/hubot-curl)

This is a hubot script that calls curl (requires mac or linux to run).

This could be a bit dodgy as I don't do any filtering of the commands that can be run by curl!

Dependencies:
  None

Configuration
  None

Commands:
```
  hubot curl <args> - run curl with <args>
```

See [`src/curl.coffee`](src/curl.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-curl --save`

Then add **hubot-curl** to your `external-scripts.json`:

```json
[
  "hubot-curl"
]
```

## Sample Interaction

```
user1>> hubot curl
hubot>> curl: try 'curl --help' or 'curl --manual' for more information
```
