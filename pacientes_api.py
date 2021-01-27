from flask import Flask, request, jsonify
import db
import pymysql

app = Flask(__name__)

@app.route("/paciente/<int:consecutivo>", methods=['GET'])

def get_paciente(consecutivo):

    con = db.get_connection() 
    cursor = con.cursor(pymysql.cursors.DictCursor)
    retorno={}
    try:
        sql="SELECT * FROM pacientes WHERE consecutivo = {}".format(consecutivo)
        cursor.execute(sql)
        retorno = cursor.fetchone()
        return jsonify(retorno)
    finally:
        con.close()
        print("Conexion cerrada")

@app.route("/pacientes", methods=['GET'])
def get_pacientes():
    con = db.get_connection()
    cursor = con.cursor(pymysql.cursors.DictCursor)
    try:
        sql="SELECT * FROM pacientes"
        cursor.execute(sql)
        retorno = cursor.fetchall()
        return jsonify(retorno)
    finally:
        con.close()
        print("Conexion cerrada")

@app.route("/pacientes", methods=['POST'])
def create():
    data = request.get_json()
    documento = data['documento']
    nombres = data['nombres']
    apellidos = data['apellidos']
    edad = data['edad']
    genero = data['genero']
    eps = data['eps']
    tp = data['tp']
    ptt = data['ptt']
    at = data['at']
    tt = data['tt']
    fibrinogeno = data['fibrinogeno']
    con = db.get_connection()
    cursor = con.cursor()
    try:

        sql="INSERT INTO pacientes(documento,nombres,apellidos,edad,genero,eps,tp,ptt,at,tt,fibrinogeno) VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}')".format(documento,nombres,apellidos,edad,genero,eps,tp,ptt,at,tt,fibrinogeno)
        
        cursor.execute(sql)
        con.commit()
        return jsonify({"mensaje":"OK"})
    finally:
        con.close()
        print("Conexion cerrada")

@app.route("/pacientes/<int:consecutivo>", methods=['PUT'])
def update(consecutivo):
    data = request.get_json()
    tp = data['tp']
    ptt = data['ptt']
    at = data['at']
    tt = data['tt']
    fibrinogeno = data['fibrinogeno']
    
    con = db.get_connection()
    cursor = con.cursor()
    try:
        sql="UPDATE pacientes set tp='{0}', ptt='{1}', at='{2}', tt='{3}', fibrinogeno='{4}' WHERE consecutivo = {5}".format(tp, ptt, at,tt,fibrinogeno,consecutivo)
        cursor.execute(sql)
        con.commit()
        return jsonify({"mensaje":"OK"})
    finally:
        con.close()
        print("Conexion cerrada")

@app.route("/pacientes/<int:consecutivo>", methods=['DELETE'])
def delete(consecutivo):
    con = db.get_connection()
    cursor = con.cursor()
    try:
        sql="DELETE FROM pacientes WHERE consecutivo = {}".format(consecutivo)
        cursor.execute(sql)
        con.commit()
        return jsonify({"mensaje":"OK"})
    finally:
        con.close()
        print("Conexion cerrada")
