# program1.py
import time

def is_prime(n):
    if n < 2:
        return False
    for i in range(2, int(n ** 0.5) + 1):
        if n % i == 0:
            return False
    return True

start_time = time.time()

count = 0
for num in range(2, 100000):
    if is_prime(num):
        count += 1

end_time = time.time()

print(f"Programme 1: Trouvé {count} nombres premiers.")
print(f"Temps d'exécution: {end_time - start_time:.2f} secondes")