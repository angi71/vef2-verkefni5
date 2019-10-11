{% extends "default.html" %}

{% block  content %}
  <h3>{{ self.title() }}</h3>
  <div>
    <table>
        <tr>
            <td>Nafn: </td><th>{{name}}</th>
        </tr>
        <tr>
            <td>Tölvupóstfang:</td><th>{{email}}</th>
        </tr>
        <tr>
            <td>Símanúmer: </td><th>{{phone}}</th>
        </tr>
        <tr>
        <th>Heildarverð</th><td>{{price}}</td>
        </tr> 
        <tr>
            <td><a href ='/karfa'>Aftur í körfuna</a></td>
            <td><a href ='/logout'>Útskráning</a></td>
        </tr> 
    </table>
  </div>
  <div>
     <h3>Takk fyrir viðskiptin {{name}} :)
</div>
{% endblock %}