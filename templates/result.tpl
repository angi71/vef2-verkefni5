{% extends "default.html" %}

{% block  content %}
    <h3>Yfirlit</h3>
        <table>
            {% for key, value in result.items() %}
                <tr>
                <th> {{ key }} </th>
                <td> {{ value }} </td>
                </tr>
            {% endfor %}
        </table>
    
{% block end%}