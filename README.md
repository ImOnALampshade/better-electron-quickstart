# better-electron-quickstart

I got fed up with the electron quickstart not having what I wanted in it, so I
made my own.

This repo is a quickstart for electron, using [Grunt](https://gruntjs.com/) to
transpile all the code.

When you run `grunt`, it will:

* Compiles [pug]() into HTML. You can find all the pug files in the `pug/`
folder.

* Compiles [less]() into CSS. You can find all the less files in the `less/`

folder.

* Compiles [coffeescript]() into JavaScript. You can find all the coffeescript
files in the `coffee/` folder.

* Watch the directory for any changes and compile them

So, just run `grunt` and continue your developement in the `pug`, `less`, and
`coffee` directories. There is also a `compile` script in `package.json` that
**just** run the compilation steps without watching the directory. You can use
this with `npm run compile`.

# FAQ

* **Why don't you include [something else]?** Either because I haven't heard of
it, or because I don't really like it. Either way, send me a pull request and
see how it goes.

* **I hate (coffeescript\|pug\|less).** That's not a question. But you're
entitled to your opinon! I, however, do like them, and will continue to use
them.

* **You just made these questions up based on what you thought people would ask,
didn't you?** You shut your mouth.

# [License](LICENSE)
