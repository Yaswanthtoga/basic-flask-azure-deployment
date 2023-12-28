from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return 'Hello, Every One Welcome to Azure Web App with Flask!'

if __name__ == '__main__':
    app.run()
