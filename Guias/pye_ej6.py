omega = []

for i in range(1, 7):
    for j in range(1, 7):
        for k in range(1, 7):
            for n in range(1, 7):
                omega.append((i, j, k, n))

evento = 0
for muestra in omega:
    if muestra.count(1) != 0:
        evento += 1
        
print(f"ocurrencias: {evento} ; prob(al menos un uno) = {evento/len(omega)} , prob(ningun uno) = {1 - evento/len(omega)}")