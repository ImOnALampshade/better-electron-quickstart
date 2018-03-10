module.exports = (grunt) ->
  require('jit-grunt')(grunt);

  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    coffee:
      all:
        options:
          bare: true
          sourceMap: true

        expand: true
        flatten: false
        cwd: 'coffee/'
        src: ['**/*.coffee']
        dest: 'bin/js'
        ext: '.js'

    less:
      all:
        options:
          compress: true
          optimization: true
          sourceMap: true

        expand: true
        flatten: false
        cwd: 'less/'
        src: ['**/*.less']
        dest: 'bin/css/'
        ext: '.css'

    pug:
      all:
        expand: true
        flatten: false
        cwd: 'pug/'
        src: ['**/*.pug']
        dest: 'bin/html/'
        ext: '.html'

    watch:
      less:
        files: ['less/**/*.less']
        tasks: ['newer:less:all']
      coffee:
        files: ['coffee/**/*.coffee']
        tasks: ['newer:coffee:all']
      pug:
        files: ['pug/**/*.pug']
        tasks: ['newer:pug:all']

  grunt.registerTask('default', ['newer:coffee', 'newer:less', 'newer:pug', 'watch'])
