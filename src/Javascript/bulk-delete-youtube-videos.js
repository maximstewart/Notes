pos = 7    // Position to delete from. Note: 0 is the 1st video of the list; 1 is the 2nd, etc.
end = 5    // How many videos to delete?

// ::  UI Timeouts  :: (1000 equals 1 second.)
// Note: Your computer is a toaster or potato? Can't render UI changes quickly?
//       Bump these up till the proper prompts show, then up the Interval Timer.
t1 = 800
t2 = 800
t3 = 800

// ::  Interval Timer  :: (1000 equals 1 second.)
// Note:  Slow internet or bumped up the UI Timeouts?
//        If slow internet, incrimint this by 1 second till things delete.
//        If you bumped uo or down the UI Timeouts, add them up and add ~2000.
wait = 4000


i = 1 // Index to keep track of deletions. Don't change!
interval = setInterval(function () {
    if (i == end)
        clearInterval(interval)

    elm = document.getElementsByClassName('style-scope ytcp-video-list-cell-video open-menu-button')[pos];

    elm.click();
    setTimeout(function () {
        document.getElementById('text-item-4').click();
    }, t1);

    setTimeout(function () {
        document.getElementById('delete-confirm-checkbox').click();
    }, t2);

    setTimeout(function () {
        document.getElementById('delete-confirm-button').click();
    }, t3);

    i += 1
}, wait);
