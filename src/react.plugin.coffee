module.exports = (BasePlugin) ->
   require('node-jsx').install({extension: '.jsx'})
   React = require('react')
   path = require('path')

   class ReactPlugin extends BasePlugin
      name: 'react'
      renderBefore: ({templateData}, next) ->
         templateData.react = (name) ->
            component = require(path.resolve(docpad.config.srcPath, name))
            if docpad.config.env == "test"
               React.renderComponentToStaticMarkup(component())
            else
               React.renderComponentToString(component())
         next()
         @