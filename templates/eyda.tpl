{% extends "default.html" %}

{% block title %}
    Verslun - karfan eytt
{% block end%}

{% block refresh %}
    <meta htpp-equiv="refresh" content="1; url={{ uri_for('index')}}">
{% block end %}

{% block content %}
    <h1>Karfan efur verið eytt</h1>
{% block end %}