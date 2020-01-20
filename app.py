from flask import Flask, request, jsonify

app = Flask(__name__)


@app.route("/index")
def index():
    echo = request.args.get("echo")
    return jsonify({"echo" : echo})
