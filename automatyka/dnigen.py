def calculate_letter(nif):
    seq = 'TRWAGMYFPDXBNJZSQVHLCKE'
    return seq[nif % len(seq)]

def generate_nif(d):
    return str(d).rjust(8,'0') + calculate_letter(d) + "\n"

with open("dni.txt","w") as f:
    for i in range(100000000):
        f.write(generate_nif(i))
f.closed
