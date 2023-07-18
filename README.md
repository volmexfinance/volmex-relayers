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

Copy `.env.example` to `.env` and edit the `.env` file and update the parameters with your own information:

`RELAYER_NAME`="YOUR_RELAYER_NAME"

`WALLET_ADDRESS`="YOUR_WHITELISTED_WALLET_ADDRESS"

`WALLET_PRIVATE_KEY`="YOUR_WHITELISTED_WALLET_PRIVATE_KEY"

Run command: `make config`

The configuration of the node is all set up inside a config.json file. Please email relayers@volmexlabs.com for more information.

Note: The wallet attached to the relayer will need gas tokens to submit orders to contract.

### Ports

Network configuration will be specific to your individual set up. Generally, you want to ensure that the following ports are open (if you are using the default ones):

|Port|Protocol|Address|Description|
|---|---|---|---|
|8080|HTTP|localhost|Node Rest API|
|10015|TCP/IP|localhost|Node P2P communications|

### Run Node

To run the relayer in daemon mode, execute the command provided below:

- `make run-relayer`

### Upgrade Node

To reach a consensus, it is necessary to ensure that the node is always updated to the latest version.

- `make upgrade-relayer`
