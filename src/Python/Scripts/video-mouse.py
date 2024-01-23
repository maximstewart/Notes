#!/usr/bin/python3

# Python imports

# Lib imports
import numpy as np
import cv2
import pyautogui

# Application imports



image_width      = 640
image_height     = 480
view_rect_width  = 120
view_rect_height = view_rect_width
outine_color     = 0, 0, 255  #   bgr  NOT  rgb
fill_color       = 55, 0, 0  #   bgr  NOT  rgb
lr_full_padding  = image_width  - view_rect_width
tb_full_padding  = image_height - view_rect_height
lr_padding       = int(lr_full_padding / 2)
tb_padding       = int(tb_full_padding / 2)
start_index      = (image_width * tb_padding) + lr_padding
start_pos        = start_index
start_y          = int(tb_padding)
start_x          = int(lr_padding)
slices           = []


class SlicesException(Exception):
    ...



def generate_slice_info():
    global view_rect_width
    global view_rect_height
    global lr_padding
    global start_pos
    global slices

    slices.append([start_pos, start_pos + view_rect_width])
    for i in range(view_rect_height - 1):
        start_pos += (view_rect_width + lr_full_padding)
        end_pos   = start_pos + view_rect_width

        slices.append([start_pos, end_pos])


def draw_square_on_linear_arry(pixels):
    global slices
    if not slices:
        raise SlicesException("Must call generate_slice_info before calling draw_square_on_linear_arry...")

    # draw top
    slice = slices[0]
    i     = slice[0]
    while i < slice[1]:
        pixel    = pixels[i];
        pixel[0] = 255
        pixel[0] = 0
        pixel[0] = 0

        i += 1

    # draw middle
    i    = 1
    size = len(slices) - 1
    while i < size:
        slice = slices[i]
        
        pixel    = pixels[ slices[0] ];
        pixel[0] = 255
        pixel[0] = 0
        pixel[0] = 0

        pixel2    = pixels[ slices[1] - 1 ];
        pixel2[0] = 255
        pixel2[0] = 0
        pixel2[0] = 0

        i += 1

    # draw bottom
    slice = slices[ len(slices) - 1]
    i     = slice[0]
    while i < slice[1]:
        pixel    = pixels[i];
        pixel[0] = 255
        pixel[0] = 0
        pixel[0] = 0

        i += 1


def draw_square_on_2d_arry(pixels):
    # draw top
    i = start_x
    j = start_x + view_rect_width
    while i < j:
        pixels[start_y][i] = outine_color
        i += 1

    # draw middle
    y_pos     = start_y + 1
    y_end_pos = (start_y + view_rect_height) - 1
    while y_pos < y_end_pos:
        pixels[y_pos][lr_padding] = outine_color
        pixels[y_pos][lr_padding + view_rect_width] = outine_color
        y_pos += 1

    # draw bottom
    bottom_row = start_y + view_rect_height
    i = start_x
    j = start_x + view_rect_width
    while i < j:
        pixels[bottom_row][i] = outine_color
        i += 1


def flatten_colors_in_change_region(pixels):
    i = start_y
    j = start_y + view_rect_height

    while i < j:
        k = start_x
        l = start_x + view_rect_width

        while k < l:
            b, g, r = pixels[i][k]

            if b > 150 and g > 150 and r > 150:
                pixels[i][k] = 255, 255, 255
            elif b < 75 and g < 75 and r < 75:
                pixels[i][k] = 255, 255, 255
            else:
                pixels[i][k] = 125, 125, 125

            k += 1

        i += 1


def detect_change_region(pixels):
    i = start_y
    j = start_y + view_rect_height

    while i < j:
        k = start_x
        l = start_x + view_rect_width

        while k < l:
            b, g, r = pixels[i][k]

            if b > 150 and (r < 100 and g < 100):
                pixels[i][k] = 255, 255, 255
            else:
                pixels[i][k] = 0, 0, 0

            k += 1

        i += 1


def bgr_separated_output_displays(pixels):
    b = pixels.copy()
    b[:, :, 1] = 0
    b[:, :, 2] = 0
    cv2.imshow('Blue Channel', b)

    g = pixels.copy()
    g[:, :, 0] = 0
    g[:, :, 2] = 0
    cv2.imshow('Green Channel', g)

    r = pixels.copy()
    r[:, :, 0] = 0
    r[:, :, 1] = 0
    cv2.imshow('Red Channel', r)


def process_frame(pixels):
    # flatten_colors_in_change_region(pixels)
    detect_change_region(pixels)
    # draw_square_on_linear_arry(pixels)
    draw_square_on_2d_arry(pixels)
    cv2.imshow('Track Motion', pixels)


def capture_video(camera):
    while(True):
        captured, data = camera.read()

        # Use 'q' key to quit
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

        if not captured: continue

        frame          = data
        # frame          = cv2.cvtColor(data, cv2.COLOR_BGR2HSV)
        # frame          = cv2.cvtColor(data, cv2.COLOR_BGR2RGB)
        # gray_frame     = cv2.cvtColor(frame, cv2.COLOR_RGB2GRAY)
        process_frame(frame)


def process_video():
    camera = cv2.VideoCapture(1)
    camera.set(cv2.CAP_PROP_FRAME_WIDTH, image_width)
    camera.set(cv2.CAP_PROP_FRAME_HEIGHT, image_width)
    
    # generate_slice_info() # Note: precompute on 1d array the detection region
    capture_video(camera)

    camera.release()
    cv2.destroyAllWindows()


if __name__ == "__main__":
    process_video()