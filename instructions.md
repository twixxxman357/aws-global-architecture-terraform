Armageddon Project. 

Project starts Nov 26th and ends Dec 9th.  I will only accept group work. Strictly, I won’t accept individual submissions whatsoever. 

Project scenario:  

Tokyo Midtown Medical Center wishes to expand its medical care for their customers located in Japan. Their main goal is to create a J-Tele-Doctor for their customers who fear actually going to the hospital with a sickness, i.e. they don’t want to spread their sickness to others and/or are located abroad. TMMC views this as an opportunity to expend their services before the next pandemic occurs.  

Despite generous offers from Azure Japan for application support, AWS Japan has won this contract and you have been tasked as the Solution Architect. Due to the fact that many of their customers travel abroad, the application must be available abroad and must also offer local language support. 

In Stage One of this project, you are being tasked with completing the following. 

1. You must have local application hosting for Japanese and foreign customers in the following locations: 




Main App:

- Tokyo

Customer Travel to:

- New York 

- London 

- Sao Paulo 

- Australia  

- Hong Kong 

- California 



2. Local requirements: Each area must have the following 

- ASG with min 2 AZs 

- Min 1 EC2 for the current test deployment 

- Deployment to a security zone where syslog data can be transferred. Additionally, must demonstrate technical ability to transfer data to Japan. 



3. Limitation to port 80 open to the public. 

Limitations: These must be observed and respected. Failure will mean automatic project failure. 

- Syslog data must be stored in Japan only. SIEM/Syslog server will be deployed in Stage 2 

- No personal information can be stored abroad and must be limited to Japan’s borders. Additionally, this data can’t be transferred via a VPN. 

- Databases will be deployed in Stage 2 

- AZ containing syslog data must be limited to a private subnet. 

 

Good luck!!! 

 

Mookie 



Notes:

Customers primarily located in Japan, expand medical care for customers
Application must be available abroad as their customers like to travel abroad, must offer language support

Each location must have 2 AZs
minimum 1 EC2 for Test deployment
security zone where data can be transfered - demonstrate ability to transfer data to Japan
limitation to port 80 open to the public 
Syslog data to Japan only
No personal information can be stored abroad 
Syslog AZ must be private 
 
1 VPC per region/region close to location
    2 AZs per VPC

    - Tokyo
      Region: ap-northeast-1
      AZ: ap-northeast-1a
          ap-northeast-1d 

      VPC: tokyo
      CIDR: 172.18.0.0/16
      Subnet:
        Public:  
            sn-a-tokyo-public: 172.18.1.0/24
            sn-d-tokyo-public: 172.18.4.0/24

        Private: 
            sn-a-tokyo-private: 172.18.11.0/24
            sn-d-tokyo-private: 172.18.14.0/24

            


    - New York 
      Region: us-east-1
      AZ: us-east-1a
          us-east-1b

      VPC: new-york
      CIDR: 172.19.0.0/16
      Subnet:
        Public:  
            sn-a-new-york-public: 172.19.1.0/24
            sn-b-new-york-public: 172.19.2.0/24

        Private: 
            sn-a-new-york-private: 172.19.11.0/24
            sn-b-new-york-private: 172.19.12.0/24      



    - London 
      Region: eu-west-2
      AZ: eu-west-2a
          eu-west-2b

    VPC: london
    CIDR: 172.20.0.0/16
    Subnet:
        Public:  
            sn-a-london-public: 172.20.1.0/24
            sn-b-london-public: 172.20.2.0/24

        Private: 
            sn-a-london-private: 172.20.11.0/24
            sn-b-london-private: 172.20.12.0/24


    - Sao Paulo
      Region: sa-east-1
      AZ: sa-east-1a
          sa-east-1c

    VPC: sao-paulo
    CIDR: 172.21.0.0/16
    Subnet:
        Public:  
            sn-a-sau-paulo-public: 172.21.1.0/24
            sn-b-sau-paulo-public: 172.21.3.0/24

        Private: 
            sn-a-sau-paulo-private: 172.21.11.0/24
            sn-b-sau-paulo-private: 172.21.13.0/24




    - Australia  
      Region: ap-southeast-2 
      AZ: ap-southeast-2a
          ap-southeast-2b

    VPC: australia
    CIDR: 172.22.0.0/16
    Subnet:
        Public:  
            sn-a-australia-public: 172.22.1.0/24
            sn-b-australia-public: 172.22.2.0/24

        Private: 
            sn-a-australia-private: 172.22.11.0/24
            sn-b-australia-private: 172.22.12.0/24


    - Hong Kong 
      Region: ap-east-1
      AZ: ap-east-1a
          ap-east-1b

    VPC: hong-kong
    CIDR: 172.23.0.0/16
    Subnet:
        Public:  
            sn-a-hong-kong-public: 172.23.1.0/24
            sn-b-hong-kong-public: 172.23.2.0/24

        Private: 
            sn-a-hong-kong-private: 172.23.11.0/24
            sn-b-hong-kong-private: 172.23.12.0/24


      
    - California 
      Region: us-west-1
      AZ: us-west-1a
          us-west-1b

    VPC: california
    CIDR: 172.24.0.0/16
    Subnet:
        Public:  
            sn-a-california-public: 172.24.1.0/24
            sn-b-california-public: 172.24.2.0/24

        Private: 
            sn-a-california-private: 172.24.11.0/24
            sn-b-california-private: 172.24.12.0/24