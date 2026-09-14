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


--6 ex 
let numero = 0

while (numero <= 8){
    console.log(numero)
    numero ++
}


--7
for (let i = 4; i < 40; i+=4){
    console.log(i)
}


--8
const prompt = require ("prompt-sync")();

let numero = Number(prompt("Digite o numero para o dobro: "));

let dobro = numero + numero 

console.log(`O dobro do numero é ${dobro}`)

--9
const fruta = [
    "banana",
    "maça",
    "morango",
    "tomate" 
]

for (let i = 0; i < fruta.length; i++){
    console.log(fruta[i])
}

--10
const fruta = {
    titulo: "Don carmago",
    autor: "frutidi",
    ano: 2026

}

for (let i in fruta)[
    console.log(i + ":" + fruta[i])
]

--11
let numero = 1
let soma = 0

while (numero <= 20){
    soma+=numero
    console.log(soma)
    numero+=2 
}

--12
const prompt = require ("prompt-sync")();
let numero = Number(prompt("coloque o numero:"));
let soma = 0

while (numero > 0){
   soma = (soma += numero)
    numero = Number(prompt("tente denovo: "))
    
}
console.log(soma)

--13
    
