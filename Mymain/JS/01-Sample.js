-- Cada Numero é um codigo novo, e todos os dias estarei atualizando conforme meu aprendizado!


--1
console.log("Ola mundo!");

--2
console.log("Meu nome é allex");
console.log("Tenho 18 anos")
console.log("Estou aprendendo JavaScript!");
console.log(30);
console.log(5+8);

--3
let nome = ("Ana");

--4
const nome = ("Bob");
let pontos = (20);

console.log(nome);
console.log(pontos);

pontos = 10;
console.log(pontos);


------------------------------------------------------------



--EX1 (p1,p2,p3,p4)

--p1 
console.log("allex");
console.log("18");

--p2
const cidade = ("Um lugar por ai");

--p3
let pontos = (50);

console.log(pontos);

pontos = 150;

console.log(pontos);

--p4
const nome = ("Gohan");
let idade = (29);
const curso = ("beleza")
let cidade = ("Toki Toki");

console.log(nome);
console.log(idade);
console.log(curso);
console.log(cidade);


---------------------------------------------------------



--5
let n1 = (10);
let n2 = (20);
let total = n1+n2;

console.log(total);

--6
let n1 = (50);
let n2 = (30);
let total = (n1-n2);

console.log(total);

--7
let nota1 = (9);
let nota2 = (6);
let media = (nota1+nota2)/2;

console.log(media);

--8
let idadeAtual = (18);
let anosPassados = (7);
let idadeFutura = idadeAtual + anosPassados;

console.log(idadeFutura);

-------------------------------------------------------------




--EX2 (p1,...,p12)

--p1 
const nome = ("batata");
let idade = (3);

console.log(idade);
console.log(nome);

--p2
let n1 = (2424);
let n2 = (2013);
let nt = n1 + n2;

console.log(nt);

--p3
let n1 = (40);
let n2 = (50);
let soma = n1 + n2;
let sub = n1 - n2;
let mult = n1*n2;
let div = n1/n2;

console.log(soma);
console.log(sub);
console.log(mult);
console.log(div);

--p4
let n1 = (40);

console.log(n1*2);

--p5
let n1 = (5);

console.log(n1*3);

--p6
let n1 = (6);
let n2 = (3);
let media = (n1+n2)/2;

console.log(media);

--p7
let idadeAtual = (59);
let idadeFutura = 59 + 10;

console.log(idadeFutura);

--p8
let preco = (90)
let quantidade = (4)
let ValorTotal = preco*quantidade;

console.log(ValorTotal);

--p9
let camisa = (50)
let quantidade = (6)
let total = camisa*quantidade;

console.log(total);

--p10
let conta = (240);
let pessoas = (4);
let valorPago = conta/pessoas;

console.log(valorPago);

--p11
let produto = (200);
let desconto = (30);
let realDesconto = produto - desconto;

console.log(realDesconto);

--p12
let salario = (2500);
let internet = (100);
let alimentacao = (600);
let transporte = (300);
let totalGasto = internet + alimentacao + transporte;
let finalMes = salario - totalGasto;

console.log("total gasto:" +totalGasto+ ", sobrou:" +finalMes);

-------------------------------------------------------------------------

--9
const prompt = require("prompt-sync")();

let nome = prompt("Digite seu nome:");
let idade = prompt("Digite sua idade:");
let endereco = prompt("Digite seu endereço:");
let numero = Number( prompt("Digite numero:"));
let numero2 = Number( prompt("Digite segundo numero:"));

console.log("seu nome é: "+nome+" e sua idade é: "+idade+" voce mora na: "+endereco+" sua soma favorita é: "+ (numero+numero2));

--10
const prompt = require("prompt-sync")();
let n1 = Number(prompt ("Primeiro numero "));
let n2 = Number(prompt ("Segundo numero "));

console.log("soma: " + (n1 + n2));
console.log("subtracao: " + (n1 - n2));
console.log("Multiplicacao: " + (n1 * n2));
console.log("Divisao: " + (n1 / n2));

--11
const prompt = require("prompt-sync")();

console.log("Calcular data de nascimento");
let n1 = Number(prompt ("Ano atual: "));
let n2 = Number(prompt ("Ano de nascimento: "));
console.log("subtracao: " + (n1 - n2));

--12
const prompt = require("prompt-sync")();

console.log("Conversor de temperatura")
let celsius = Number (prompt("Coloque os celsius:"));
let farenheit = (celsius*9/5+32);
console.log(celsius+ "equivalem a:" +farenheit+ "farenheit");

--13
const prompt = require ("prompt-sync")();

console.log("loja de compras!!!!");
let produto = prompt ("Liste seu produto:");
let preco = prompt ("Escolha a o preço:");
let quantidade = Number(prompt ("Escolha a quantidade:"));
let valortotal = (preco*quantidade);

console.log("Resumo total do produto: " + "item" +produto+  " preço: " +preco+ " quantidade: " +quantidade+ " valor total: " +valortotal);

--14
const prompt = require ("prompt-sync")();

console.log("O professor está na sala?");
let resposta = prompt("Digite: ");

if (resposta === "sim") {
console.log("O professor e legal");
} else { console.log("Irresponsável");
}

--15
const prompt = require ("prompt-sync")();

console.log("Verificador de numeros");
let numero = prompt("digite um numero para saber se e maior de 100:");

if (numero > "100") {
console.log ("o numero é maior que 100");}
else {console.log("seu numero e menor que 100");}

--16
const prompt = require("prompt-sync")();

console.log("Verificador de classificação de idade")

let idade = Number(prompt("digite sua idade:"));

if (idade < 2){
console.log ("vc é um baby");}
else if (idade < 12){
console.log ("vc é uma criança");}
else if (idade < 18){
console.log("você é adolecente");}
else if (idade <60 ){console.log("vc é um adulto");}
else {console.log("você é vovo");}

--17
const prompt = require ("prompt-sync")();

console.log("nota max:10")
let nota = Number(prompt ("digite a nota do aluno: "));

if (nota == 10){
console.log("Excelente");}
else if (nota => 7){
console.log("bom");}
else if (nota == 6){
console.log("regular");}
else{console.log("insulficiente");}

--18
const prompt = require ("prompt-sync")();

console.log("Faixa de velocidade!")
let velocidade = Number(prompt("digite sua velocidade em km/h:"));

if (velocidade > 100){
console.log("Muito alta");}

else if (velocidade >= 80){
console.log("alta");}

else if (velocidade >= 40){
console.log("moderada");}

else {console.log("baixa");}

--19
const prompt = require ("prompt-sync")();

console.log("Calculadora");
let numero1 = Number(prompt("digite seu primeiro numero:"));
let numero2 = Number(prompt("digite seu segundo numero:"));
let operacao = prompt("digite operação:");

if (operacao === "+"){
console.log(numero1+numero2);}
else if (operacao === "-"){
console.log(numero1+numero2);}
else if (operacao === "*"){
console.log(numero1*numero2);}
else if (operacao === "/"){
console.log(numero1/numero2)}

--20
const prompt = require("prompt-sync")();

console.log("sistema de desconto por faixa!");

let valor = Number( prompt("Digite o valor do produto:"));


if (valor >= 500){
console.log("o valor final da compra sera:" , (valor*0.8));
}
else if (valor >= 200){
console.log("o valor final da compra sera:" , (valor*0.9));
}
else if (valor >=  100){
console.log("o valor final da compra sera:" , (valor*0.95));
}
else{console.log("voce não esta apto a nenhum desconto!");
}

--21
const prompt = require('prompt-sync')()

console.log ("Festa")

let idade = Number(prompt("Qual sua idade?:"))
let convite = prompt("Voce tem convite?:").trim()
if (idade >= 18 && convite=== "sim") {
console.log ("Bem vindo a festa")
} 
else{console.log ("entrada nao autorizada")}

--22
const prompt = require ("prompt-sync")();

console.log("desconto de passagem")

let tipo = prompt ("Você é estudante?:");
let idade = Number(prompt("Qual a sua idade?:"));

if (tipo === "sim" || idade >= 60){console.log("Desconto aplicado");}
else {console.log("desconto não aplicado");}

--23










