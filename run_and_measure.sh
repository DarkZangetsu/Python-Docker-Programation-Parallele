#!/bin/bash

# Fonction pour exécuter un programme et mesurer son temps
run_program() {
    local program_name=$1
    local start_time=$(date +%s.%N)
    
    # Démarrer le conteneur et attendre qu'il se termine
    docker start $program_name
    docker wait $program_name
    
    local end_time=$(date +%s.%N)
    local execution_time=$(echo "$end_time - $start_time" | bc)
    
    echo "$program_name - Temps d'exécution : $execution_time secondes"
    echo "Résultat :"
    docker logs $program_name
    echo "----------------------------------------"
}

# Supprimer les anciens conteneurs s'ils existent
docker rm -f program1 program2 program3 program4 2>/dev/null

# Créer les réseaux pour les clusters
docker network create cluster1 2>/dev/null
docker network create cluster2 2>/dev/null

# Créer les conteneurs (sans les démarrer)
docker create --name program1 --network cluster1 parallel_programs python3 program1.py
docker create --name program2 --network cluster1 parallel_programs python3 program2.py
docker create --name program3 --network cluster2 parallel_programs python3 program3.py
docker create --name program4 --network cluster2 parallel_programs python3 program4.py

echo "Démarrage de l'exécution parallèle..."
start_time=$(date +%s.%N)

# Exécuter les programmes en parallèle
run_program program1 &
run_program program2 &
run_program program3 &
run_program program4 &

# Attendre que tous les programmes se terminent
wait

end_time=$(date +%s.%N)
total_time=$(echo "$end_time - $start_time" | bc)

echo "Temps d'exécution total : $total_time secondes"

# Nettoyage
docker rm program1 program2 program3 program4
docker network rm cluster1 cluster2