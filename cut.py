from itertools import product

def H(q1,q2,q3,q4,q5):
    return all(
        [
            (not q1 or not q3),
            (q1 or not q3),
            (not q2 or q4),
            (q2 or q3 or q5),
            (not q5),
            (not q4 or q3),
        ]
    )

for (q1, q2, q3, q4, q5) in product([True, False], repeat=5):
    print(q1, q2, q3, q4, q5, '→', H(q1, q2, q3, q4, q5))
