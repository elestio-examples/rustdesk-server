# Rustdesk Server CI/CD pipeline

<a href="https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/rustdesk-server"><img src="deploy-on-elestio.png" alt="Deploy on Elest.io" width="180px" /></a>
Deploy Rustdesk Server with CI/CD on Elestio
<img src="rustdesk-server.png" style='width: 100%;'/>
<br/>
<br/>

# Once deployed ...

Download Rustdesk client in this link: <a target="_blank" href="https://rustdesk.com/">Rustdesk client</a>
Then, once installed, click on the Menu button [ ⋮ ] on the right side of ID as shown below, and click on `Network` tab.

In the `ID SERVER` field, fill with your CI/CD Domain : [CI_CD_DOMAIN]

<img src="server-set-menu.png" style='width: 50%;'/>

## Connecting to the Target Machine with Control Remote Desktop

To connect to the target machine, you need to construct a connection string as follows:
<user_id>@<server_address>?key=<public_key>

### Breakdown of the Connection String

1. **User ID**: The unique identifier for the user or machine you want to connect to.
2. **Server Address**: The address of the remote server hosting the RustDesk instance.
3. **Public Key**: The public key associated with the user or machine for authentication.

### Steps to Find Your Public Key

2. **Navigate to the Tools Tab**: Find and open the Tools tab within the Elestio dashboard.
3. **Open VSCode**: Select the button to open VSCode.
4. **Search for the Data Folder**: In VSCode, locate and open the 'data' folder.
5. **Locate the Public Key File**: Inside the 'data' folder, look for a file with the extension `.pub`. This file contains your public key.

### Example

Given the following details:

- **User ID**: `123456789`
- **Server Address**: `[CICD_DOMAIN]`
- **Public Key**: `TC5BjIDAV+mA0eI4biQuab3oAeRkagBUkPMBC8xJ610=`
  The connection string would be insert into Control Remote Desktop input
  <img src="ready.png" style='width: 50%;'/>
