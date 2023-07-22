# template-foundry


## How to use?

We are assuming here that you already setup your env as specified in the [initial setup section](#initial-setup)

### Compile your contracts

```bash
pnpm compile
```

### Test your contracts

```bash
pnpm test
```

### watch for changes and rebuild automatically

```bash
pnpm watch_compile
```

### Generate ABI
```bash
forge inspect src/EIP712Token.sol:TestToken abi
```

### deploy your contract

- in memory only:

  ```bash
  pnpm run deploy void
  ```

- on localhost

  This assume you have anvil running : `anvil`

  ```bash
  pnpm run deploy localhost
  ```

- on a network of your choice

  Just make sure you have `RPC_URL` or `RPC_URL_<network>` set for it either in `env.local` or `.env.<network>.local`

  ```bash
  pnpm run deploy <network>
  ```
  
### export your contracts (abi+address):
  
  ```bash
  pnpm export localhost contracts.json,contracts.ts
  ```

### zellij

[zellij](https://zellij.dev/) is a useful multiplexer (think tmux) for which we have included a [layout file](./zellij.kdl) to get started

Once installed simply run

```bash
pnpm start
```

And you'll have anvil running as well as watch process executing tests on changes

if you want to try zellij without install try this :

```bash
bash <(curl -L zellij.dev/launch) --layout zellij.kdl
```

In the shell in the upper pane, you can deploy your contract via

```bash
pnpm run deploy
```

## Initial Setup

You need to have these installed

- [nodejs](https://nodejs.org/en)

  For windows (see more info [here](#windows)), you will need to select the option "Automatically install the necessary tools....". Note that process will open a powershell window and will take a while (it does not even show progress).

  This step will allow foundry/forge to work

- [pnpm](https://pnpm.io/)

  ```bash
  npm i -g pnpm
  ```

- [foundry](https://getfoundry.sh/)

  ```bash
  curl -L https://foundry.paradigm.xyz | bash;
  export PATH=$HOME/.foundry/bin:$PATH # or load it from your shell config which the script above should have configured
  foundryup
  ```

Then you need to install the local dependencies with the following command:

```bash
pnpm i
```

We also recommend to install [zellij](https://zellij.dev/) to have your dev env setup in one go via `pnpm start`

### Windows

Tested from a fresh install of : https://www.microsoft.com/en-US/software-download/windows10ISO on [virtualbox](https://www.virtualbox.org/).

You first install bash if you do not have already. For that we are using git which comes with bash.

You can install it via [scoop](https://scoop.sh/).

```bat
scoop install git
```

Or you can use the installer from https://gitforwindows.org/.

If you that last option, you can choose "Use Git and optional Unix tolls from the Command Prompt" and you'll have bash accessible from cmd.exe. otherwise you need to use "Git Bash Here"

Anyway after that you should be able to get into a bash shell.

```bat
bash
```

There you can clone the repo if you did not already and cd into it.

```bash
git clone https://github.com/wighawag/template-foundry.git
cd template-foundry
```

Then you can install the dependencies as stated in the [initial setup section](#initial-setup)

#### wezterm

on Windows [zellij](https://zellij.dev/) multiplexer is not available

We recommend you install [wezterm](https://wezfurlong.org/wezterm/install/windows.html) instead

With that you can do the following to get started:

```bash
pnpm start:wezterm
```


```bash
cast call 0x8464135c8F25Da09e49BC8782676a84730C318bC "allowance(address,address)" 0x70997970c51812dc3a010c7d01b50e0d17dc79c8 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
```