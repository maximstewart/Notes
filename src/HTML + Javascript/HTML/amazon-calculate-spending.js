// Open the Orders page in Amazon.
// Run the script for each page you wish to calculate total of.

elms  = document.querySelectorAll("#ordersContainer")[0].querySelectorAll(".a-row .a-size-base");
total = 0;

for (let i = 0; i < elms.length ; i++) {
    value = elms[i].innerText;
    if (value.includes("$")) {
        total += parseInt(value.replace("$", ""), 10);
        console.log(value);
    }
}

console.log(total);
