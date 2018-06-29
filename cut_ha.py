#!/usr/bin/env python
# encoding: utf-8

from itertools import product

def H(p1,p2,p3,p4,p5,p6):
    return all([
        any([not p1,     p3, not p4]),
        any([not p1,     p3,     p4]),
        any([not p1, not p3, not p6]),
        any([not p1, not p3,     p6]),
        any([    p1, not p2, not p5]),
        any([    p1, not p2,     p5]),
        any([    p1,     p2, not p6]),
        any([    p1,     p2,     p6]),
        any([    p2,     p3,     p4]),
        any([    p3,     p5, not p6]),
        any([not p4,     p5,     p6]),
    ])

for (q1, q2, q3, q4, q5, q6) in product([True, False], repeat=6):
    print(q1, q2, q3, q4, q5, q6, '→', H(q1, q2, q3, q4, q5, q6))
    if H(q1, q2, q3, q4, q5, q6):
        print("BINGO!")
