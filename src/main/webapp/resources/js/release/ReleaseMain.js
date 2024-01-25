//
// const plusButtons = document.querySelectorAll('.product_plus');
// const minusButtons = document.querySelectorAll('.product_minus');
// const amounts = document.querySelectorAll('.ammount');
// const prices = document.querySelectorAll('.price');
// const totals = document.querySelectorAll('.total');
//
// plusButtons.forEach((button, index) => {
//   button.addEventListener('click', () => {
//     const amountElement = amounts[index];
//     const priceElement = prices[index];
//     const totalElement = totals[index];
//
//     // 현재 amount 값을 가져와서 1을 더한 후 다시 적용
//     let amount = parseInt(amountElement.textContent);
//     amount += 1;
//     amountElement.textContent = amount;
//
//     let price = parseInt(priceElement.textContent);
//     let total = amount * price;
//
//     // 총 가격을 형식에 맞게 표시하거나 필요한 작업을 수행
//     totalElement.textContent = formatCurrency(total);
//   });
// });
//
// // 통화 표시 함수 (예시)
// function formatCurrency(amount) {
//   return new Intl.NumberFormat('ko-KR', { style: 'currency', currency: 'KRW' }).format(amount);
// }
//
//
//
// minusButtons.forEach((button, index) => {
//	  button.addEventListener('click', () => {
//	    const parent = button.closest('.table_row');
//	    const amountElement = amounts[index];
//	    const priceElement = prices[index];
//	    const totalElement = totals[index];
//
//	    let amount = parseInt(amountElement.textContent);
//	    if (amount > 0) {
//	      amount -= 1;
//	      amountElement.textContent = amount;
//
//	      let price = parseInt(priceElement.textContent);
//	      let total = amount * price;
//
//	      // 총 가격을 형식에 맞게 표시하거나 필요한 작업을 수행
//	      totalElement.textContent = formatCurrency(total);
//	    }
//	  });
//	});
//
//
//
//
