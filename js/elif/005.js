let compra = 80
let total = 0

if (compra >= 200){
    total = compra*0.80
    console.log(`20% de desconto! valor total: ${total}`)
    
}
else if (compra >= 100){
    total = compra*0.90
    console.log(`10% de desconto! valor total: ${total}`)
    
}
else {total = compra 
    console.log(`sem desconto! valor total: ${total}`)}
