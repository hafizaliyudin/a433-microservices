# Mem-build image dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# Melihat daftar image
docker image ls

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 docker.pkg.github.com/calvin-sirimase/a433-microservices/item-app:v1

# Login ke GitHub Packages
docker login docker.pkg.github.com -u hafizaliyudin -p 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


# Mengunggah image ke GitHub Packages
docker push docker.pkg.github.com/hafizaliyudin/a433-microservices/item-app:v1
