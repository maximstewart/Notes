Dependencies:
    sudo pacman -S linux linux-headers
    sudo pacman -S v4l2loopback-dkms v4l-utils ffmpeg python python-pip
    # linux-headers needed for dkms build

    pip install opencv-python

    sudo dkms autoinstall


Load Module:
    sudo modprobe v4l2loopback \
        video_nr=10 \
        card_label="Python Virtual Camera" \
        exclusive_caps=1


Verify:
        v4l2-ctl --list-devices
    or
        v4l2-ctl --list-formats-ext -d /dev/video10
    or
        mpv av://v4l2:/dev/video10
    or
        ffplay /dev/video10


Streaming to Device:
    ffmpeg -re -loop 1 -i ~/<path to picture> \
        -vf "format=yuv420p" \
        -f v4l2 /dev/video10

    or

    <run script>



