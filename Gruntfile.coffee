
module.exports = (grunt) ->


    grunt.registerTask "jsToCoffee", "description", () ->
        js2coffee = require "js2coffee"
        fs = require "fs"

        jsContent = grunt.file.read "source/debuglog.js"
        coffeeContent = js2coffee.build(jsContent, {show_src_lineno: false, indent: "    "})
        grunt.file.write "source/debuglog.coffee", coffeeContent

        grunt.log.ok "done"