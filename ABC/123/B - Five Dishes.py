time = [int(input()) for _ in range(5)]
for i in range(5):
    sur = time[i]%10
    if sur:
        time[i] += 10-sur
print(sum(time))