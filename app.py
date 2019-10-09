import os
from flask import Flask, render_template, session, url_for, request, redirect, escape

app = Flask(__name__)

app.secret_key = os.urandom(16)

vorur = [
    [0, "hlutur 1", "jpg", 6000],
    [1, "hlutur 2", "jpg", 500]
]

@app.route('/')
def index():
    karfa = []
    fjoldi = 0
    if "karfa" in session:
        karfa = session["karfa"]
        fjoldi = len(karfa)
    return render_template("index.tpl", v=vorur, fjoldi=fjoldi )

@app.route("/add/<int:id>")
def voru(id):
    karfa = []
    fjöldi = 0
    if "karfa" in session:
        karfa = session["karfa"]
        karfa.append(vorur[id])
        session["karfa"] = karfa
        fjoldi = len(karfa)
    else:
        karfa.append(vorur[id])
        session["karfa"] = karfa
        fjoldi = len(karfa)
    return render_template("index.tpl", v=vorur, f=fjoldi )

@app.route('/karfa')
def karfa():
    karfa = []
    summa = 0
    if "karfa" in session:
        karfa = session["karfa"]
        fjoldi = len(karfa)
        for i in karfa:
            summa += int(i[3])
        return render_template("karfa.tpl", k ="karfa", tom = False, f ="fjoldi", s ="summa")
    else:
        return render_template("karfa.tpl", k ="karfa", tom = True,)

@app.route("/eydavoru/<int:id>")
def eydavoru(id):
    karfa = []
    karfa = session["karfa"]
    index = 0
    for i in range(len(karfa)):
        if karfa[1][0] == id:
            index = 1
    karfa.remove(karfa[index])
    session["karfa"] = karfa
    return render_template("eydavoru.tpl")

@app.route("/eyda")
def eyda():
    session.pop("karfa", None)
    return render_template("eyda.tpl")

@app.route("/result", methods = ["POST"])
def result():
    if request.method == ["POST"]:
        kwargs={
            "name": request.form["Nafn"],
            "email": request.form["Email"],
            "phone": request.form["Simi"],
            "price": request.form["Samtals"]

        }
        return render_template("result.tpl", **kwargs)

@app.route("/logout", methods = ["Grt","POST"])
def logout():
    session.pop("karfa", None)
    return redirect(url_for("index"))

@app.errorhandler(404)
def pagenotfound(error):
    return render_template("pagenotfound.tpl"), 404

@app.errorhandler(405)
def pagenotfound(error):
    return render_template("method_not_alloved.tpl"), 405

if __name__ == '__main__':
    #app.run()
    app.run(debug=True, use_reloader=True)