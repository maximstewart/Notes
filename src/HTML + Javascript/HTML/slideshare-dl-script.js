// Run in console of www.slideshare.net then bash download.sh

download = (data, filename, type) => {
    file = new Blob([data], {type: type});
    if (window.navigator.msSaveOrOpenBlob) {
        window.navigator.msSaveOrOpenBlob(file, filename);
    } else {
        a          = document.createElement("a"),
        url        = URL.createObjectURL(file);
        a.href     = url;
        a.download = filename;

        document.body.appendChild(a);

        a.click();
        setTimeout(function() {
            document.body.removeChild(a);
            window.URL.revokeObjectURL(url);
        }, 0);
    }
}

data = "";
imgs = document.getElementsByClassName("SlideImage_picture__Xlef_");
for (let i = 0; i < imgs.length; i++) {
    data += "\nwget" + "'" + imgs[i].firstChild.srcset.split(",")[2].replace(" 2048w", "") + "'";
}

console.log(data);
download(data, "download.sh", "text");
