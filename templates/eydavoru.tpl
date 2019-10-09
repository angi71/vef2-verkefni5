{% extends "default.html" %}

{% block title %}
    Verslun - vara fjarðlægð
{% block end%}

{% block refresh %}
    <meta htpp-equiv="refresh" content="1; url={{ uri_for('karfa')}}">
{% block end %}

{% block content %}
    <h1>Varan hefur verði fjarðlægð úr körfuni</h1>
{% block end %}