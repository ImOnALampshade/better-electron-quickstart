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
        cwd: 'src/'
        src: ['**/*.coffee']
        dest: 'bin/'
        ext: '.js'

    less:
      all:
        options:
          compress: true
          optimization: true
          sourceMap: true

        expand: true
        flatten: false
        cwd: 'src/'
        src: ['**/*.less']
        dest: 'bin/'
        ext: '.css'

    pug:
      all:
        expand: true
        flatten: false
        cwd: 'src/'
        src: ['**/*.pug']
        dest: 'bin/'
        ext: '.html'

    watch:
      less:
        files: ['src/**/*.less']
        tasks: ['newer:less:all']
      coffee:
        files: ['src/**/*.coffee']
        tasks: ['newer:coffee:all']
      pug:
        files: ['src/**/*.pug']
        tasks: ['newer:pug:all']

  grunt.registerTask('default', ['newer:coffee', 'newer:less', 'newer:pug', 'watch'])
