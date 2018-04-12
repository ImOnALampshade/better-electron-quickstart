JSXDom = require '../jsx-dom'

# We are using Node.js #[script document.write(process.versions.node)]
# Chromium #[script document.write(process.versions.chrome)]
# and Electron #[script document.write(process.versions.electron)]

class VersionNumberView extends JSXDom.View
  constructor: (app) ->
    super(app)

  render: ->
    elem = 
      <div class='version-container'>
        <h1>Hello world!</h1>
        <p>
          We are using {process.versions.node}, Chromium {process.versions.chrome}, and Electron {process.versions.electron}
        </p>
      </div>

    return elem

class MyApp extends JSXDom.App
  constructor: (opts) ->
    super()

    @addView
      view: new VersionNumberView

app = new MyApp
app.show(document.body)
