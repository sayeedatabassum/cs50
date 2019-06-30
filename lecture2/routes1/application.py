from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    return "Hello, world!"

@app.route("/<string:name>")
def Hello(name):
    name=name.capitalize()
    return f"<h1>Hello, {name}!</h1>"
