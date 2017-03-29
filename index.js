var node = document.getElementById('main');
var app = Elm.App.embed(node);

// Initialize Firebase
var config = {
  apiKey: "AIzaSyD8USMRvwZbrgMRHJWS--Zqh1V3jQPZnHo",
  authDomain: "elm-poker.firebaseapp.com",
  databaseURL: "https://elm-poker.firebaseio.com",
  storageBucket: "elm-poker.appspot.com",
  messagingSenderId: "273078846748"
};
firebase.initializeApp(config);
var db = firebase.database();