# Docker

- Delete containers of a given image
`docker ps -a | awk '{ print $1,$2 }' | rg prom/prometheus | awk '{print $1}' | xargs -I {} docker rm {}`
