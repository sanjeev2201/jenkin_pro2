from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "Hello from Flask + Jenkins!"

if __name__ == '__main__':
    app.run(port=5051,debug=True)
