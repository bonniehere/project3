document.addEventListener('DOMContentLoaded', function () {
    const productCheckboxes = document.querySelectorAll('.product-checkbox');
    const cartItemsList = document.getElementById('cartItems');
    const totalAmount = document.getElementById('totalAmount');

    let totalPrice = 0;

    

    // 장바구니에 아이템을 추가하는 함수
    function addToCart(productName, productPrice) {
        const cartItem = document.createElement('li');
        cartItem.innerHTML = `
            <span>${productName}</span>
            <span>$${productPrice.toFixed(2)}</span>
        `;
        cartItemsList.appendChild(cartItem);

        totalPrice += productPrice;
        totalAmount.innerText = totalPrice.toFixed(2);
    }

    // 장바구니에서 아이템을 제거하는 함수
    function removeFromCart(productName, productPrice) {
        const cartItemToRemove = Array.from(cartItemsList.children).find(function (item) {
            return item.firstChild.innerText === productName;
        });

        if (cartItemToRemove) {
            cartItemsList.removeChild(cartItemToRemove);

            totalPrice -= productPrice;
            totalAmount.innerText = totalPrice.toFixed(2);
        }
    }
});
