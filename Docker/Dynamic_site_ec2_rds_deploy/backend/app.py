from flask import Flask, request, jsonify
import mysql.connector

app = Flask(__name__)

@app.route("/submit", methods=["POST"])
def submit():
    data = request.json
    name = data["name"]
    email = data["email"]
    message = data["message"]

    conn = mysql.connector.connect(
        host="your-rds-endpoint",
        user="youruser",
        password="yourpassword",
        database="yourdb"
    )
    cursor = conn.cursor()
    cursor.execute("INSERT INTO messages (name, email, message) VALUES (%s, %s, %s)", (name, email, message))
    conn.commit()
    conn.close()

    return jsonify({"status": "success"}), 200
