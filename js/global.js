
function sortProducts(option)
{
    const changedValue = document.getElementById("sort").value;
    console.log("Selected sorting option: " + changedValue);

    // Implement sorting logic here based on changedValue
    // For example, you might want to sort products by price, name, etc.
    // it will based on changed value and update the product list 
}

function loadProducts()
{
    console.log("Loading products...");

    // Implement product loading logic here
    // This could involve fetching product data from a server
    // and rendering it on the page
    // and update the product list
    // then use renderRating function to show ratings
}

function renderRating(rating)
{
    console.log("Rendering rating: " + rating);
    
    // Implement rating rendering logic here
    // This could involve creating star icons based on the rating value
}

function alertFunction(_str)
{
    alert(_str);
}

window.onload = function() {
    loadProducts();
}