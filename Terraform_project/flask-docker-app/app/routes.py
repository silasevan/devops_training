from flask import Blueprint, render_template, request

main = Blueprint('main', __name__)

@main.route("/", methods=["GET", "POST"])
def index():
    name = None
    if request.method == "POST":
        name = request.form.get("name")
    return render_template("index.html", name=name)
