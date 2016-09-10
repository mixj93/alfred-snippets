var gulp = require('gulp');
var del = require('del');

gulp.task('default', function() {
  console.log("This is default task.");
});

gulp.task('clean', function(cb) {
  console.log("Start cleaning the folder snippets/");
  del([
    'collection/*',
    'snippets/*'
  ], cb);
});

gulp.task('generate', function() {
  console.log("This is generate task.");
});
