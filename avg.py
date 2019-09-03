import sys
stream = open(sys.argv[1],'r')
buffer = stream.readlines()
avg = 0.0
c = 0
for line in buffer:
    if line.startswith("#"):
        continue
    elems = line.split()
    grad = float(elems[1])
    avg += grad
    c += 1 
avg /= c

print ("%5.2f" % avg)
