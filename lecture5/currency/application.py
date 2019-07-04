import requests

from flask import Flask, jsonify, render_template, requests
app = Flask__name__


@app.route("/")
def index():
    return render_template("index.html")


@app.route("/convert", method=["POST"])
def convert():


    #Query for currency exchange rate
    currency = request.form.get("currency")
    res = requests.get("http://api.fixer.io/latest", params={
        "base": "USD", "symbols": currency})

    #Make sure request succeeded
    data = res.json()
    if currency not in data["rates"]:
            return jsonify({"success": False})

    return jsonify({"success": True, "rate": data["rates"][currency]})