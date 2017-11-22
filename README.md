# hyperv-cluster
Powershell script using **docker-machine** to create a **Docker CE** swarm cluster with **UCP** and **DTR** on **Hyper-V** virtual machines.

1. Using **Powershell**, execute the following command in the root folder containing the script:

   `.\create-docker-cluster.ps1`
   
2. To execute commands within a cluster node:

   `docker-machine ssh <NODE NAME>`
   
3. To take down the cluster:

   `.\remover-docker-cluster.ps1`
