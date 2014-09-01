gulp = require 'gulp'
jasmine = require 'gulp-jasmine'
coffee = require 'gulp-coffee'



gulp.task 'spec', ->
  gulp.src(['spec/**/*-spec.coffee'])
  .pipe jasmine()

gulp.task 'watch', ->
  gulp.watch ['spec/**/*-spec.coffee', 'lib/**/*.coffee'], ['spec']


gulp.task 'build', ->
  gulp.src(['src/**/.coffee', 'src/*.coffee'])
  .pipe coffee(bare: true)
  .pipe gulp.dest('lib')


gulp.task 'default', ['watch']