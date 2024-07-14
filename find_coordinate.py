import pyautogui

# Locate the "subject.png" on the screen
res = pyautogui.locateOnScreen("biomedS.png")
# print(res)

# Get the center coordinates of the found image
edit_but = pyautogui.center(res)
# print(edit_but)

# Assuming the "Register" button is approximately 200 pixels to the right of the center of "subject.png"
x_offset = 600
register_button = (edit_but.x + x_offset, edit_but.y)
# print(register_button)

# Move the mouse to the "Register" button and click
pyautogui.moveTo(register_button)
pyautogui.click()
