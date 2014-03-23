module.exports = (BasePlugin) ->
   React = require('react')
   path = require('path')
   _require = require("enhanced-require")(module, { recursive: true })

   class ReactPlugin extends BasePlugin
      name: 'react'
      renderBefore: ({templateData}, next) ->
         templateData.react = (name) ->
            component = _require("jsx-loader!" + path.resolve(docpad.config.srcPath, name).toString())
            if docpad.config.env == "test"
               React.renderComponentToStaticMarkup(component())
            else
               React.renderComponentToString(component())
         next()
         @