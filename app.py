from flask import Flask, request

app = Flask(__name__)


@app.route("/index")
def index():
    echo = request.args.get("echo")
    return f"hai, {echo}"
