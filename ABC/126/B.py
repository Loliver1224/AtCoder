S = input()
A = int(S[:2])
B = int(S[2:])

YM = MY = False
if 0 < B <= 12:
    YM = True
if 0 < A <= 12:
    MY = True

if MY and YM:
    print("AMBIGUOUS")
elif MY:
    print("MMYY")
elif YM:
    print("YYMM")
else:
    print("NA")
