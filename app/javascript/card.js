const pay = () => {
  // const publicKey = gon.public_key
  // const payjp = Payjp(publicKey) // PAY.JPテスト公開鍵
  const payjp = Payjp('pk_test_7251a524b385ec5ee77c8e24')
  const elements = payjp.elements();
  const numberElement = elements.create('cardNumber');
  const expiryElement = elements.create('cardExpiry');
  const cvcElement = elements.create('cardCvc');

  numberElement.mount('#number-form');
  expiryElement.mount('#expiry-form');
  cvcElement.mount('#cvc-form');
  const form = document.getElementById('charge-form')
  form.addEventListener("submit", (e) => {
    payjp.createToken(numberElement).then(function (response) {
      if (response.error) {
      } else {
        const token = response.id;
        const renderDom = document.getElementById("charge-form");
        const tokenObj = `<input value=${token} name='token' type="hidden">`;
        renderDom.insertAdjacentHTML("beforeend", tokenObj);
      }
      numberElement.clear();
      expiryElement.clear();
      cvcElement.clear();
      document.getElementById("charge-form").submit();
    });
    e.preventDefault();
  });
};

window.addEventListener("turbo:load", pay);
window.addEventListener("turbo:render", pay);







// const pay = () => {
//   const payjp = Payjp('pk_test_7251a524b385ec5ee77c8e24')
//   const elements = payjp.elements();
//   const numberElement = elements.create('cardNumber');
//   const expiryElement = elements.create('cardExpiry');
//   const cvcElement = elements.create('cardCvc');
  
//    numberElement.mount('#number-form');
//    expiryElement.mount('#expiry-form');
//    cvcElement.mount('#cvc-form');
  
//   const form = document.getElementById('charge-form')
//   form.addEventListener("submit", (e) => {
    
//     const card = {
//       number: formData.get("order_form[number]"),
//       exp_month: formData.get("order_form[exp_month]"),
//       exp_year: `20${formData.get("order_form[exp_year]")}`,
//       cvc: formData.get("order_form[cvc]"),
//     };

//       payjp.createToken(numberElement).then(function (response) {
//       if (response.error) {
//       } else {
//         const token = response.id;
//         const renderDom = document.getElementById("charge-form");
//         const tokenObj = `<input value=${token} name='token' type="hidden">`;
//         renderDom.insertAdjacentHTML("beforeend", tokenObj);
//         }


//         numberElement.clear();
//         expiryElement.clear();
//         cvcElement.clear();
//         document.getElementById("charge-form").submit();
//     });
//     e.preventDefault();
//   });
// };



// window.addEventListener("turbo:load", pay);