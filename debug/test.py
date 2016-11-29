from tile import Model, Shape

BLUE = 0x477984
ORANGE = 0xEEAA4D
RED = 0xC03C44
WHITE = 0xFEF5EB

SCALE = 128
SHOW_LABELS = True

model = Model()
model.append(Shape(2))
a = model.add(0, range(1), 6, fill=ORANGE, label="spider")  # index, edge, sides
b = model.add(a, 5, 6, fill=RED, label="ant")
c = model.add(a, 4, 6, fill=RED, label="ant")


surface = model.render()
surface.write_to_png('output.png')
