from itertools import groupby

user_data = input()

for key, group in groupby(user_data):
    print((len(list(group)), int(key)), end=" ")