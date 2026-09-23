#!/usr/bin/python3


# Python imports
import time
import subprocess
import cv2

# Lib imports

# Application imports



DEVICE     = "/dev/video10"
WIDTH      = 1280
HEIGHT     = 720
FPS        = 30
RESOLUTION = (WIDTH, HEIGHT)



def show_stream():
    cap = cv2.VideoCapture(0)

    cap.set(cv2.CAP_PROP_FRAME_WIDTH, WIDTH)
    cap.set(cv2.CAP_PROP_FRAME_HEIGHT, HEIGHT)
    cap.set(cv2.CAP_PROP_FPS, FPS)

    while True:
        ok, frame = cap.read()

        if not ok: break

        frame = cv2.resize(frame, RESOLUTION)

        cv2.imshow("source", frame)
        if cv2.waitKey(1) == 27:
            break

    cap.release()
    cv2.destroyAllWindows()


def run_stream_ffmpeg():
    image = cv2.imread("89538.jpg")

    if image is None:
        raise RuntimeError("Could not open image")

    cmd   = [
        "ffmpeg",
        "-loglevel", "error",
        "-re",
        "-f", "rawvideo",
        "-pix_fmt", "bgr24",
        "-s", f"{WIDTH}x{HEIGHT}",
        "-r", f"{FPS}",
        "-i", "-",
        "-f", "v4l2",
        "-pix_fmt", "yuv420p",
        DEVICE,
    ]

    # Match the desired virtual-camera resolution
    image = cv2.resize(image, RESOLUTION)
    proc  = subprocess.Popen(cmd, stdin = subprocess.PIPE)

    try:
        while True:
            proc.stdin.write( image.tobytes() )
            time.sleep(1 / FPS)
    except KeyboardInterrupt:
        ...

    finally:
        proc.stdin.close()
        proc.wait()


def run_stream_opencv():
    image = cv2.imread("89538.jpg")

    if image is None:
        raise RuntimeError("Could not open image")

    # Match the desired virtual-camera resolution
    image  = cv2.resize(image, RESOLUTION)
    writer = cv2.VideoWriter(
        DEVICE,
        cv2.VideoWriter_fourcc(*"YUYV"),
        FPS,
        RESOLUTION,
    )

    if not writer.isOpened():
        raise RuntimeError(f"Could not open {DEVICE}")

    while True:
        writer.write(image)

        time.sleep(1 / 30)

    writer.release()


def main():
    # show_stream()
    # run_stream_opencv()
    run_stream_ffmpeg()


if __name__ == "__main__":
    main()
