--1
let numero = 1
while (numero <= 150){
console.log(numero + ".Banana")
numero++;}

--2
let numero = 10
while (numero >= 1) {
console.log(numero + ".Banana")
numero--;}

--3
let numero = 2
while (numero <= 20) {
console.log(numero + ".Banana")
numero+=2;}

--4
let numero = 0
let soma = 1
while (soma <= 5){
numero += soma 
console.log("Resultado:" + numero)
soma++
;}

--5
const prompt = require("prompt-sync")();

let horasEstacionadas = Number(prompt("digite o total de horas"))
    saldoCliente = 35,
    valorHoras = 8;

while (saldoCliente >= valorHoras) {

    saldoCliente -= valorHoras;

    horasEstacionadas++;

    console.log("Saldo restante: R$ " + saldoCliente);
}

console.log("Horas pagas: " + horasEstacionadas);
console.log("Saldo final: R$ " + saldoCliente);
