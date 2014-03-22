module.exports = (BasePlugin) ->
   require('node-jsx').install({extension: '.jsx'})
   React = require('react')
   path = require('path')

   class ReactPlugin extends BasePlugin
      name: 'react'
      renderBefore: ({templateData}, next) ->
         templateData.react = (name) ->
            console.log docpad
            component = require(path.resolve(docpad.instanceConfig.srcPath, name))
            React.renderComponentToString(component()) || React.renderComponentToStaticMarkup(component())
         next()
         @