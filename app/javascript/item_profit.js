window.addEventListener('turbo:load', () => {
  const priceInput = document.getElementById("item-price");
  
  
  priceInput.addEventListener("input", () => {
    const inputValue = priceInput.value;
    console.log(inputValue);
    

    const addTaxDom = document.getElementById("add-tax-price");
    addTaxDom.innerHTML = Math.floor(inputValue * 0.1);
    console.log(addTaxDom);
    
    const profitTaxDom = document.getElementById("profit");
    const value_result = inputValue * 0.1
    console.log(value_result)
    profitTaxDom.innerHTML = Math.floor(priceInput.value - Math.floor(priceInput.value * 0.1 ));
   
    
})
});