const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const bodyParser = require('body-parser');
const expresshb = require('express-handlebars');
const expressValidator = require('express-validator');
const flash = require('connect-flash');
const session = require('express-session');
const passport = require('passport');
const LocalStrategy = require('passport-local'),
    Strategy;
//const mongo = require('mongodb');
const mysql = require('mysql');
const mongoose = require('mongoose');