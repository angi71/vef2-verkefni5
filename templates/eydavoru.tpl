{% extends "default.html" %}

{% block title %}
    Verslun - vara fjarðlægð
{% endblock %}

{% block refresh %}
    <meta htpp-equiv="refresh" content="1"; url={{ url_for('karfa')}}">
{% endblock %}

{% block content %}
    <h1>Varan hefur verði fjarðlægð úr körfuni</h1>
{% endblock %}