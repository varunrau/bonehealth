
from sys import argv
from bottle import route, run, template

@route('/')
def index():
    return "Hi, Varun!"

run(host='0.0.0.0', port=argv[1])
