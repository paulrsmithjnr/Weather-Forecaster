from flask import Flask
from flask_login import LoginManager
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SECRET_KEY'] = "change this to be a more random key"
app.config['SQLALCHEMY_DATABASE_URI'] = "postgresql://mczwgajutllmio:82ec2221ca04e1356b244609f84f32d829bcd3c742665c8037a7d10fb8ce45fa@ec2-34-200-116-132.compute-1.amazonaws.com/d5n956o5m2vh38"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True # added just to suppress a warning
db = SQLAlchemy(app)

app.config.from_object(__name__)
from app import views
