{% extends "default-karfa.html" %}



{% block title %}
    Vörulistinn
{% endblock %}

{% block content %}
    <h1>Vörulistinn</h1>
        <section>
            {% for i in v %}
            <div>
                {{ i[1] }}
                <img src="/static/{{ i[2] }}">
                <h2> Verð:<a href="/add/{{ i[0] }}">{{ i[3] }}</a></h2>
            </div>
            {% endfor %}
        </section>
   
{% endblock %}
