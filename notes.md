!clear -> Limpiar pantalla
!quit -> salir
!load file -> carga el programa

docker build -t haskell:demo .
docker run -it --rm haskell:demo -v ~/Documents/haskell:/haskell
docker exec -it {ID} bash
