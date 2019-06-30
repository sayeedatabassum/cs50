from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    return "Hello, world!"

@app.route("/dynamo")
def dynamo():
    return "Hello, Dynamo!"

@app.route("/maina")
def maina():
    return "Hello, Maina!"