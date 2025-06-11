from flask import Flask
app = Flask(__name__)
@app.route('/')
def home():
    return "Welcome to the Flask Health Check App!"
@app.route('/about')
def about():
    return "This app is designed to demonstrate a simple Flask application with health check endpoints." 
@app.route('/health')
def health():
    return "The application is running smoothly!", 200  

if __name__ == '__main__':
    app.run(host='0.0.0', port=5000, debug=True)