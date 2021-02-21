/*  Module topics  */
elms       = document.getElementsByClassName('m-0 p-0 ps-color-white ps-type-sm ps-type-weight-medium');
size       = elms.length;
modulesTxt = ""

for(i = 0; i<size; i++) {
    modulesTxt += "\n-- " + elms[i].innerText
}
console.log(modulesTxt)



/*  Module topics overview  */
elms       = document.getElementsByTagName("LI")
size       = elms.length;
modulesTxt = ""

for(i = 0; i<size; i++) {
    text = elms[i].innerText.split("\n")[0]
    if (text !== "Summary") {
        modulesTxt += "\n-- " + text
    } else {
        modulesTxt += "\n-- " + text + "\n\n\n\n"
    }
}
console.log(modulesTxt)


// OCR Link:   https://www.newocr.com/


/*  Module sub-topics  */
// NOTE: Have all the modules colpsed excet the one
//       you want to get.
elms         = document.getElementsByTagName("LI")
size         = elms.length;
subModuleTxt = ""

for(i = 0; i<size; i++) {
    text = elms[i].innerText.split("\n")[0]
    subModuleTxt += "\n::  " + text + "  ::" +
                    "\n--  Tool(s)  --\n\n\n\n"
}
console.log(subModuleTxt)
