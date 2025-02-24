# SR Linux Workshop

This README is your starting point into the hands on section.

Pre-requisite: A laptop with SSH client.

Shortcut links to major sections in this README:

|   |   |
|---|---|
| [Lab Topology](#lab-topology) | [Deploying the lab](#deploying-the-lab) |
| [SR Linux Commands](#sr-linux-configuration-mode) | [Configure Interfaces](#configure-interfaces) |

## Workshop
The objectives of the hands on section of this workshop are the following:
- Configure X3b interfaces
- Configure OSPF on X3b
- Configure LDP on X3b
- Establish communication between the clients

## Lab Topology

![image](lab-topology.jpg)

| X | Client1 IP | Client2 IP | Spine System IP |
|---|---|---|---|
| 1 | 12.12.12.100 | 12.12.12.200 | 10.10.10.10/32 |
| 2 | 12.12.12.100 | 12.12.12.200 | 20.20.20.20/32 |
| 3 | 34.34.34.100 | 34.34.34.200 | 30.30.30.30/32 |
| 4 | 34.34.34.100 | 34.34.34.200 | 40.40.40.40/32 |
| 5 | 56.56.56.100 | 56.56.56.200 | 50.50.50.50/32 |
| 6 | 56.56.56.100 | 56.56.56.200 | 60.60.60.60/32 |
| 7 | 78.78.78.100 | 78.78.78.200 | 70.70.70.70/32 |
| 8 | 78.78.78.100 | 78.78.78.200 | 80.80.80.80/32 |
| 9 | 91.91.91.91.100 | 91.91.91.91.200 | 90.90.90.90/32 |
| 10 | 91.91.91.91.100 | 91.91.91.91.200 | 100.100.100.100/32 |
| 11 | 112.112.112.100 | 112.112.112.200 | 110.110.110.110/32 |
| 12 | 112.112.112.100 | 112.112.112.200 | 120.120.120.120/32 |

## Check status of deployed lab

To display all deployed labs on your VM at any time, use:

```bash
sudo clab inspect --all
```

## Connecting to the devices

Find the nodename or IP address of the device from the above output and then use SSH.

```bash
ssh leaf1
```

To login to the client, identify the client hostname using the `sudo clab inspect --all` command above and then:

```bash
sudo docker exec -it client1 bash
```

## SR Linux Configuration Mode

To enter candidate configuration edit mode in SR Linux, use:

```srl
enter candidate private
```

To commit the configuration in SR Linux, use:

```srl
commit stay
```

Here's a reference table with some commonly used commands.

| Action | Command |
| --- | --- |
| Enter Candidate mode | `enter candidate {private}` |
| Commit configuration changes | `commit {now\|stay}` |
| | `now` – commits and exits from candidate mode |
| | `stay` – commits and stays in candidate mode |
| Delete configuration elements | `delete` |
| | Eg: `delete interface ethernet-1/5` |
| Discard configuration changes | `discard {now\|stay}` |
| Compare candidate to running | `diff running /` |
| View configuration in current mode & context | `info {flat}` |
| View configuration in another mode & context | `info {flat} from state /interface ethernet-1/1` |
| Output modifiers | `<command> \| as {table\|json\|yaml}` |
| Access Linux shell | `bash` |
| Find a command | `tree flat detail \| grep <keyword>` |

## Configure Interfaces


