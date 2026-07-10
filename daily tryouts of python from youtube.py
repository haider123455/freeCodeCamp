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
# day two making a swapped list
# swapping the first three items with the last of three
lis_of_numbers = [
    1,
    2,
    3,
    4,
    5,
    6,
]
half_size = len(lis_of_numbers) // 2
swapped_list = lis_of_numbers[half_size:] + lis_of_numbers[:half_size]
print(swapped_list)# it is as i pridicted i did it right
