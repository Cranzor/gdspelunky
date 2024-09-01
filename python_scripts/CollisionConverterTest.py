def converter(x1, y1, x2, y2):
    size_x = 0
    size_y = 0
    position_x = 0
    position_y = 0

    position_x = abs(x2 - 8)
    position_y = y2 - 8

    position_x = abs(position_x + x1)
    size_x = size_x - x1 * 2

    size_y = size_y - y1
    position_y = position_y + (y1 * 0.5)

    print('size x')
    print(size_x)
    print('size y')
    print(size_y)
    print('position x')
    print(position_x)
    print('position y')
    print(position_y)

def converter2(x1, y1, x2, y2):
    print(x1)
    print(y1)
    print('***')
    print(x1)
    print(y2)
    print('***')
    print(x2)
    print(y2)
    print('***')
    print(x2)
    print(y1)

x1 = int(input('Input x1: '))
y1 = int(input('Input y1: '))
x2 = int(input('Input x2: '))
y2 = int(input('Input y2: '))

converter2(x1, y1, x2, y2)