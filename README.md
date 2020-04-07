# linespots-docker
Reproduction Image for my work on Linespots
The image will ned roughly 15GB of space due to the evaluation projects that are downloaded.
When running the image, you can specify the number of processes to use in parallel.
More processes will make it faster but also take up more memory.
Memory needed per process is roughly around 8GB.

Build with: `docker build -t <name:tag> .`
    eg: `docker build -t m0hawk/linespots-reproduction:test .`

Run with: `docker run --volume <host directory>:/src/host <name:tag> <process count>`
    eg: `docker run --volume ~/Documents/Linespots:/src/host m0hawk/linespots-reproduction:test 4`
    The resulting .csv file will be saved to `<host directory>`.
    You can use the `-d` flag to run the container in daemon mode. This frees up the terminal.

It is possible to somewhat pause the progress and resume later:
    - Use `docker commit <containerID> <name:tag>` to create a new image. It will have all the downloaded projects and the intermediate result csvs.
    - Use the same run command but with the new `<name:tag>` combo to resume. The code will skip the projects that already have a result csv and merge the existing ones into the final result if it finishes.

Get container ids: `docker ps`
Get container images: `docker images`
To delete a single image: `docker rmi <imageID>`
Open Bash in Running Container: `docker exec -it <container id> bash`

A simple way to log memory usage over time: `for ((;;)) do free -g >> foo; sleep 300; done`