# Besu Network 

## Table of Contents

- [Besu Network]
  - [ Configure and run a private IBFT (POA) Besu Network](./README.md/#configure-and-run-a-private-ibft-poa-besu-network)


## Prerequisites

To run these tutorials, you must have the following installed:

- [Docker and Docker-compose](https://docs.docker.com/compose/install/)

## 1: Configure and run a private IBFT (POA) Besu Network
This is designed to setting up a permissioned blockchain network. Key steps involved in deploying a private network, establishing consensus rules, and connecting nodes securely and efficiently.

In this :

**Configure the Network Genesis File**: We’ll start by setting up a genesis file to define the network's parameters, such as chain ID and consensus algorithm, and establish the initial state of the blockchain.

**Set up Validator Nodes**: Next, you’ll configure nodes to act as validators, the designated participants responsible for producing new blocks. In a PoA network, these nodes are pivotal in maintaining the blockchain’s integrity.

**Start and Connect Nodes**: You’ll bring up the nodes and connect them within the private network, ensuring that communication is established between validators.

**Verify Network Connectivity and Block Production**: Finally, we’ll verify that the network is successfully producing blocks and maintaining connectivity between nodes.

### Step by step:

Start services and the network:
1. Run script `./run.sh`
    ```
    *************************************
    Iob Besu Network Quickstart
    *************************************
    Start network
    --------------------
    Starting network...
    [+] Running 13/13
     ✔ Network iob-besu-network                 Created                                                                                                                                                                                                                        0.1s 
     ✔ Container iob-besu-network-validator1  Started                                                                                                                                                                                                                        0.9s 
     ✔ Container iob-besu-network-validator2  Started                                                                                                                                                                                                                        1.6s 
     ✔ Container iob-besu-network-validator4  Started                                                                                                                                                                                                                        1.3s 
     ✔ Container iob-besu-network-validator3  Started                                                                                                                                                                                                                        1.2s 
     ✔ Container rpcnode                        Started                                                                                                                                                                                                                        1.5s 
     ✔ Container iob-besu-network-explorer    Started                                                                                                                                                                                                                        1.9s 
    *************************************
    Iob Besu Network Quickstart 
    *************************************
    ----------------------------------
    List endpoints and services
    ----------------------------------
    JSON-RPC HTTP service endpoint                 : http://localhost:8545
    JSON-RPC WebSocket service endpoint            : ws://localhost:8546
    Web block explorer address                     : http://localhost:25000/explorer/nodes
    
    For more information on the endpoints and services, refer to README.md in the installation directory.
    ```
