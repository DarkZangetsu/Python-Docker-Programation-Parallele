# program3.py
import time

def fibonacci(n):
    if n <= 1:
        return n
    return fibonacci(n-1) + fibonacci(n-2)

start_time = time.time()

result = fibonacci(35)

end_time = time.time()

print(f"Programme 3: Calculé Fibonacci(35) = {result}")
print(f"Temps d'exécution: {end_time - start_time:.2f} secondes")