{% extends "default.html" %}

{% block title %}
    Verslun - karfan eytt
{% endblock %}

{% block refresh %}
    <meta htpp-equiv="refresh" content="1"; url={{ url_for('index')}}">
{% endblock %}

{% block content %}
    <h1>Karfan efur verið eytt</h1>
{% endblock %}