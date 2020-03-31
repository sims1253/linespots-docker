# linespots-docker
Reproduction Image for my work on Linespots
The image will ned roughly 15GB of space due to the evaluation projects that are downloaded.
When running the image, you can specify the number of processes to use in parallel.
More processes will make it faster but also take up more memory.
Memory needed per process is probably between 8-16GB


Build with: `docker build -t <name:tag> .`
    eg: `docker build -t m0hawk/linespots-reproduction:test .`

Run with: `docker run <name:tag> <process count>`
    eg: `docker run m0hawk/linespots-reproduction:test 4`

Get container id: `docker ps`

Copy Results with: `docker cp <container id>:/src/evaluation_projects/full_evaluation.csv <host path>`
    eg: `docker cp 5f87b6ea7b4c:/src/evaluation_projects/full_evaluation.csv ~/Downloads`

Open Bash in Running Container: `docker exec -it <container id> bash`