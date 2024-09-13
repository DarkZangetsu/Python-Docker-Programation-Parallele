# program2.py
import time
import random

start_time = time.time()

numbers = [random.randint(1, 1000000) for _ in range(1000000)]
sorted_numbers = sorted(numbers)

end_time = time.time()

print(f"Programme 2: Trié une liste de {len(numbers)} nombres.")
print(f"Temps d'exécution: {end_time - start_time:.2f} secondes")