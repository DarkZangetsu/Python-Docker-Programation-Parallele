# program4.py
import time
import random

def estimate_pi(num_points):
    inside_circle = 0
    total_points = num_points

    for _ in range(total_points):
        x = random.uniform(-1, 1)
        y = random.uniform(-1, 1)
        if x*x + y*y <= 1:
            inside_circle += 1

    pi_estimate = 4 * inside_circle / total_points
    return pi_estimate

start_time = time.time()

estimated_pi = estimate_pi(10000000)

end_time = time.time()

print(f"Programme 4: Estimation de Pi = {estimated_pi}")
print(f"Temps d'exécution: {end_time - start_time:.2f} secondes")