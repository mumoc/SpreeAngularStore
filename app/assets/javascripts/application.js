// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require angular
//= require angular-resource
// Here are three main things:
// first - remember that this is only a manifesto, and if you're requiring another manifesto, the other should require all its dependencies,
// I'm speaking of requiring app. The App files could contain the require for /angular so wherever you load app.js.coffe, it will load its 
// dependencies.
// second - Naming, again, remember the best practices on naming, is something we have pretty much writen in stone, the file names, classes, 
// resources, etc, should REPRESENT what they're describing, I mean, app.js.coffee represents.... an ... app? what about Application.js? 
// My intention is to make you aware of the your lack on thinking on domains and resources, you need to star thinking on what are you representing?
// What's the business model? What's THIS? Your current naming makes me thing that you were following a tutorial just as it was saying you to do
// it xD, just learn to take a moment, think about it, and choice the right and representing name
// third - Remember, the asset pipeline let us have a folder (like /angular) and inside it have an index or all file that will act as manifesto. Saying that
// you could have an /angular/index.js that requires the whole tree (require_tree .) so you could just have =require angular (instead of require_tree ./angular)
//
// You need to learn more on the asset pipeline as it will help you on requiring the exact files you want thus will help on preventing those pesky multioverrides
// or importants on css
//= require app
//= require_tree ./angular
