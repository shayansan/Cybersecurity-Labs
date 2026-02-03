* cloud models

we have 3 types of deployment models :
1- public => for everyone over the internet
2- private => your own virtualized local data center
3- hybrid => a mix of public and private

one type is software as a server : SaaS means you use a software application through the internet, and the provider hosts and manages everything for you (servers, updates, storage, availability).
You usually access it by:
• a web browser
• a mobile app

IaaS (Infrastructure as a Service): you rent virtual machines + networking, and you manage the OS, updates, and installed software.

PaaS (Platform as a Service): you deploy your application code, and the provider manages the servers, OS, runtime, and scaling.

Main difference: IaaS = you manage more, PaaS = provider manages more.

if we want to manage services based on which one is more on provider management it will be like this: SaaS => PaaS=>laaS

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* software defined networking 

SDN is a networking model where the network is controlled by software instead of configuring every switch/router manually.

the traditional method is each switcher or router makes decisions and is configured separately but with SDN a controller acts like the brain and devices act like forwarders and rules and policies are pushed by software.

but there are some risks for SDN that controller becomes a high value target for hackers to can access all of the forwarders and misconfiguration can affect the whole network quickly.

SDN is usually explained using 3 main layers:
1- application layer-> the software that asks the network to do something
2- control layer-> the SDN controller, the “brain” of the network
3- Infrastructure layer -> the physical or virtual devices that forward traffic.

most security control decisions happen at the application + controller layer.

now for taking advantages from SDN we use SD-WAN to can check and manage everything in everywhere of a data center with it. we don’t need to hop through a central point because it’s cloud-based application and communicate directly to the cloud.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* virtual extensible LAN

we need to connect different data centers together and we use DCI for it. it connects multiple data centers together and connect and segments different customer networks.

there is a problem for this connection between different data centers is that it’s possible that different data centers use different IP addressing or can be connected in different ways so we have to do something to can solve this problem.

VXLAN is an overlay networking technology that carries Ethernet traffic across IP networks using UDP encapsulation, enabling massive scalable segmentation beyond traditional VLAN limits.

for example, if we want to have a communication between 2 virtualization servers VXLAN will make a VXLAN tunnel between them that has a structure like this:
original frame:
ethernet header - payload - frame check sequence

after VXLAN encapsulation:
ethernet header - IP header - UDP header - VXLAN header - original frame

VXLAN works like “VLAN but over IP” and allows a lot more networks than traditional VLAN (VLAN is limited to 4094).

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* Infrastructure as Code

IaC: is a method of creating and managing infrastructure using code files instead of configuring everything manually. infrastructure here can include virtual machines or networks or firewalls or storage.

in this method you can write a code to create a VPC or create 2 subnets or allow inbound port443.

A playbook is a written step-by-step procedure that tells you exactly what actions to take in a specific situation. for example, in cybersecurity you can define what to do when a malware infection is detected.

doing process with playbooks allows us to automate things as a way that we want.

Automation is important in cybersecurity because it helps teams detect, respond, and protect faster and more consistently than manual work.

Source control (version control) is a system that tracks changes in code and files over time, so you can see what changed, who changed it, and return to older versions if needed.

Why it matters in cybersecurity and IT?
1- prevents losing important configurations or scripts
2- helps audit changes and detect unauthorized edits
3- supports teamwork without overwriting each other’s work


