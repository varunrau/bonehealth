
from sys import argv
from bottle import route, run, template, get

@route('/')
def index():
    return "Hi, Varun!"

@get("/<filename:re:.*\.js>")
def javascripts(filename):
    return static_file(filename, root="static/javascripts")

@get("/<filename:re:.*\.(png|jpg)>")
def images(filename):
    return static_file(filename, root="static/images")

@get("/<filename:re:.*\.css>")
def stylesheets(filename):
    return static_file(filename, root="static/stylesheets")

run(host='0.0.0.0', port=argv[1])
