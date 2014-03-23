# React Plugin for [DocPad](http://docpad.org)

[![Build Status](https://secure.travis-ci.org/chrishale/docpad-plugin-react.png?branch=master)](http://travis-ci.org/chrishale/docpad-plugin-react "Check this project's build status on TravisCI")

This plugin pre-renders React components from js or jsx files during the site generation.

    <%- @react('./files/components/App.jsx') %>

NOTE: path is relative to docpad's srcPath.

This should also work with webpack style loaders (as long as you define the loader at the point of requiring in your js). For example:

    var svg = require('url?mimetype=image/svg+xml!./example.svg');

You will also need to have the loaders as dependencies in your sites package.json

## License
Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT License](http://creativecommons.org/licenses/MIT/)
<br/>Copyright &copy; 2014 Chris Hale