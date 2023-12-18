#!/usr/bin/python3

# Python imports

# Lib imports
import cv2
import pyautogui

# Application imports



image_width      = 640
image_height     = 480
view_rect_width  = 120
view_rect_height = view_rect_width
outine_color     = 0, 0, 255  #   bgr  NOT  rgb
lr_full_padding  = image_width  - view_rect_width
tb_full_padding  = image_height - view_rect_height
lr_padding       = int(lr_full_padding / 2)
tb_padding       = int(tb_full_padding / 2)
start_index      = (image_width * tb_padding) + lr_padding
start_pos        = start_index
start_y          = int(tb_padding)
start_x          = int(lr_padding)
slices           = []



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



def process_frame(pixels):
    draw_square_on_2d_arry(pixels)
    cv2.imshow('frame', pixels)

def capture_video(camera):
    while(True):
        rendered, data = camera.read()
        frame = cv2.cvtColor(data, cv2.COLOR_BGR2RGB)
        # gray_frame = cv2.cvtColor(frame, cv2.COLOR_RGB2GRAY)

        # Use 'q' key to quit
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

        if not rendered: continue
        process_frame(frame)

def process_video():
    camera = cv2.VideoCapture(1)
    camera.set(cv2.CAP_PROP_FRAME_WIDTH, image_width)
    camera.set(cv2.CAP_PROP_FRAME_HEIGHT, image_width)
    
    # generate_slice_info()
    capture_video(camera)

    camera.release()
    cv2.destroyAllWindows()


if __name__ == "__main__":
    process_video()