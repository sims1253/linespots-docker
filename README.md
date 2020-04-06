# linespots-docker
Reproduction Image for my work on Linespots
The image will ned roughly 15GB of space due to the evaluation projects that are downloaded.
When running the image, you can specify the number of processes to use in parallel.
More processes will make it faster but also take up more memory.
Memory needed per process is probably between 8-16GB

Build with: `docker build -t <name:tag> .`
    eg: `docker build -t m0hawk/linespots-reproduction:test .`

Run with: `docker run --volume <host directory>:/src/host <name:tag> <process count>`
    eg: `docker run --volume ~/Documents/Linespots:/src/host m0hawk/linespots-reproduction:test 4`
    The resulting .csv file will be saved to `<host directory>`.
    You can use the `-d` flag to run the container in daemon mode. This frees up the terminal.

Get container id: `docker ps`

Open Bash in Running Container: `docker exec -it <container id> bash`

for ((;;)) do free -g >> foo; sleep 300; done