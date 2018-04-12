# better-electron-quickstart

I got fed up with the electron quickstart not having what I wanted in it, so I
made my own.

This repo is a quickstart for electron, using [Grunt](https://gruntjs.com/) to
transpile all the code.

When you run `grunt`, it will:

* Compiles [pug](https://pugjs.org/api/getting-started.html) into HTML.

* Compiles [less](http://lesscss.org/) into CSS.

* Compiles [coffeescript](http://coffeescript.org/) into JavaScript.

* Watch the directory for any changes and compile them.

So, just run `grunt` and continue your developement in the `src` directory.
There is also a `compile` script in `package.json` that **just** run the 
compilation steps without watching the directory. You can use this with 
`npm run compile`.

# FAQ

* **Why don't you include [something else]?** Either because I haven't heard of
it, or because I don't really like it. Either way, send me a pull request and
see how it goes.

* **I hate (coffeescript\|pug\|less).** That's not a question. But you're
entitled to your opinon! I, however, do like them, and will continue to use
them.

* **You just made these questions up based on what you thought people would ask,
didn't you?** You shut your mouth.

# JSX

You can use JSX in coffeescript, and it will be converted directly into DOM
elements (Which vastly reduces the typical amount of resource usage you see from
using frameworks). This is done through Babel. All your render modules that use
this must include `jsx-dom` (which is just a file in this repo):

    JSXDom = require './jsx-dom'

# [MIT Licensed](LICENSE)
