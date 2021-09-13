# question 1
import math

p = (1, 1, 0)
q = (0, 0, 2)
r = (1, 1, 1)


def dot_product(v1, v2):
    return v1[0] * v2[0] + v1[1] * v2[1] + v1[2] * v2[2]


def cross_product(v1, v2):
    x = v1[1] * v2[2] - v1[2] * v2[1]
    y = v1[2] * v2[0] - v1[0] * v2[2]
    z = v1[0] * v2[1] - v1[1] * v2[0]
    return (x, y, z)


def norm(v):
    val = v[0] ** 2 + v[1] ** 2 + v[2] ** 2
    return math.sqrt(val)


# question 2


def points_to_vec(p1, p2):
    v = tuple(map(lambda x, y: x - y, p1, p2))
    return v


pq = points_to_vec(p, q)
print(pq)

qr = points_to_vec(q, r)
print(qr)


def angle_dot(v1, v2):
    numerator = dot_product(v1, v2)
    denominator = norm(v1) * norm(v2)
    return math.acos(numerator / denominator)


def angle_cross(v1, v2):
    numerator = norm(cross_product(v1, v2))
    denominator = norm(v1) * norm(v2)
    return math.asin(numerator / denominator)


print(angle_dot(pq, qr))
print(angle_cross(pq, qr))

v = cross_product(pq, qr)
print(v)

from mpl_toolkits import mplot3d
import numpy as np
import matplotlib.pyplot as plt

fig = plt.figure()
ax = plt.axes(projection="3d")


ax.scatter3D(p[0], p[1], p[2])
ax.scatter3D(q[0], q[1], q[2])
ax.scatter3D(r[0], r[1], r[2])


def get_line(t):
    return p[0] + t * v[0], p[1] + t * v[1], p[2] + t * v[2]


t = np.linspace(-10, 10, 100)
ax.plot(*get_line(t))

plt.savefig("fig1.png")

ax.view_init(0, 40)

plt.savefig("fig2.png")

d = -1 * dot_product(p, v)
print(d)
