# reversing the order of the words in a list
# given_list = ["jolly", "elisha", "kimberly"]
# applying the list comprehesion skill
# result_list = [i[::-1] for i in given_list]
# the double :: ensures the reversing of the words
# taken to thorny for testing
# print(result_list)  # the result is as expected
# day 1 of practice
# day one addons
# using break points
# mimi = 6
# zack = 20
# breakpoint()  # applied the ide way of putting a breakpoint
# total_age = mimi + zack
# print(total_age)
# # day two making a swapped list
# # swapping the first three items with the last of three
# lis_of_numbers = [
#     1,
#     2,
#     3,
#     4,
#     5,
#     6,
# ]
# half_size = len(lis_of_numbers) // 2
# swapped_list = lis_of_numbers[half_size:] + lis_of_numbers[:half_size]
# print(swapped_list)  # it is as i pridicted i did it right
# day three
# been taught how to open a file in python using win32api a module in
# pywin32 code i remember
# import win32api
# import os
#
# filepath = r"C:\Users\PATIENCE\OneDrive\Pictures\Screenshots\moveent\Screenshot 2026-05-25 040058.png2.png"  # r makes it a raw str for py
# print(os.path.exists(filepath))  # this confirms that the file exists
# win32api.ShellExecute(  # so this is the functio i the module that does it
#     0,  # for there is no parent directory
#     "open",  # the command to open the file also print can be use
#     filepath,
#     None,  # for no parameters in shell where this api works
#     None,  # no parameters too thats why its none
#     1,  # to mean excute
# )
# the os alternative
import os

filepath = r"C:\Users\PATIENCE\OneDrive\Pictures\Screenshots\moveent\Screenshot 2026-05-25 040058.png2.png"
if os.path.exists(filepath):
    try:
        os.startfile(filepath)
    except OSError as e:
        # the OSError is one that catches all operating system level errors
        print("file found but couldnt be open", e)
else:
    print("file not found according to path", filepath)
