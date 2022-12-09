import os
path = os.path.dirname(__file__)

out_l = list()

def gul(seq):
    seen = []
    return [x for x in seq if x not in seen and not seen.append(x)]

f = open(path+"\in.txt", mode="r", encoding="utf-8")
for i in f.readlines():
    xd=i.split()
    pos_l=list()
    for k in xd:
        j=float(k)
        pos_l.append(j)
    out_l.append(pos_l)
f.close()
new_l = gul(out_l)
print(str(new_l))
wr_g=open(path+"out.txt", mode="a", encoding="utf-8")
wr_g.write("\n")
wr_g.write(str(new_l))
wr_g.close()


