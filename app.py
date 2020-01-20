from flask import Flask, jsonify, request

app = Flask(__name__)


@app.route("/index")
def index():
    echo = request.args.get("echo")
    return jsonify({"echo": echo})
