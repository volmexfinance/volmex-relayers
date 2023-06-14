# ✨ Volmex Relayer Node

## Running a Relayer Node

### System requirements

There are no hard software requirements. However, the following configuration is advised: 

|   |Minimum|Recommended|
|---|---|---|
|Operating System|Windows / Mac OS / Linux|Debian based Linux distribution|
|Memory|8 GB RAM|16 GB RAM|
|CPU|4 cores|8 cores|
|Disk|25 GB|500 GB|
|Bandwidth|1 Gbps for Download/1 Gbps for Upload|1 Gbps for Download/1 Gbps for Upload|


### Install

#### Prerequisites

Ensure you have the following software installed on your machine:

- [Docker](https://docs.docker.com/engine/install/)
- [Docker Compose](https://docs.docker.com/compose/install/)

#### Authentication

In order to run a Relayer node, you will need to set up an Ethereum address, and get this address whitelisted.

#### Address creation

Create an ethereum address. For example, this can be achieved using [Metamask](https://metamask.io/). Save the address and associated private key. 

#### Whitelist process

Currently, there is a whitelist requirement, may be replaced in the future, for running nodes on the testnet. In order to be whitelisted, you will need to send a request to relayers@volmexlabs.com

#### Clone repository

Please clone the current respository on your machine:

`git clone https://github.com/volmexfinance/volmex-relayers.git`

#### Node Configuration

Edit the `config-files/config.json` file and update the parameters with your own information:

- `"relayer_name": "YOUR_RELAYER_NAME"`
- `"worker_addr": "YOUR_WHITELISTED_WALLET_ADDRESS"`
- `"private_key": "YOUR_WHITELISTED_WALLET_PRIVATE_KEY"`

The configuration of the node is all set up inside a config.json file. Please email relayers@volmexlabs.com for more information.

### Ports

Network configuration will be specific to your individual set up. Generally, you want to ensure that the following ports are open (if you are using the default ones):

|Port|Protocol|Address|Description|
|---|---|---|---|
|8080|HTTP|localhost|Node Rest API|
|10015|TCP/IP|localhost|Node P2P communications|

### Run Node

To run the relayer in daemon mode, execute the command provided below:

- `docker compose up -d`

### Upgrade Node

To reach a consensus, it is necessary to ensure that the node is always updated to the latest version.

- `docker compose pull`
- `docker compose up -d`