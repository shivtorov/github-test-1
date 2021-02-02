# Design Workshop Notes

|           |                                                     |
| --------- | --------------------------------------------------- |
| Customer  | Cardinia Shire Council                              |
| Project   | D3773 - Teams Voice Deployment                      |
| Meeting   | 02/02/2021                                          |
| Attendies | Mike Shivtorov <Mike.Shivtorov@generation-e.com.au> |
|           | Sean Rundell <Sean.Rundell@generation-e.com.au>     |
|           | Gagan Singh <G.Singh@cardinia.vic.gov.au>           |
|           | Mark Wigzell <m.wigzell@cardinia.vic.gov.au>        |

## Telephony users

1) Employees:
    - primary device – laptop with a headset (all telephony users already have
      or receiving Teams certified headsets as a part of this project)
    - secondary device – company-provided smartphone
    - a limited number of users use Citrix environment that has Microsoft Office
      apps / Teams installed, but Teams Voice inside Citrix is NOT in the scope
      of this project
    - all users use personal headsets (rather than personal handsets) to make
      phone calls in Skype For Business environment
2) Common area phones:
    - there are several (about 8) Polycom VVX 311 currently in use.
    - while these devices can work with Office 365, they would have some
      limitations/dependencies on on-premises SBCs. Council has decided to
      replace them with new native Teams handsets instead.
    - @Ben Tesoriero to reach-out to @Gagan Singh with some device options
3) Meeting rooms:
    - currently, only one room equipped with audio/video (Teams Meeting Room)
    - Council is selecting a partner to deploy several additional Teams Meeting
      Room kits
4) Analogue devices:
    - currently, there is a small number of Tenors that support a small number
      of gate bells
    - a non-Teams-integrated solution is replacing all these analogue systems
    - there would be no analogue devices in the new Teams Direct Routing
      environment

## Telephony features

1) Enterprise Voice:
    - moving existing dial plans to Teams as is if possible/feasible
    - moving existing voice polices to Teams as is if possible/feasible
2) Call Flows:
    - there are ten existing workflows to be recreated in Teams as similar as
      possible
    - there are several Enghouse Call Centre backup workflows (don't require
      migration to Teams)
3) Call Center:
    - there is a parallel project to migrate the existing on-premises Enghouse
      Call Center to a cloud solution
    - call centre cutovers tentatively scheduled for 29/03/2021 and 01/04/2021
4) Caller ID:
    - currently, caller ID management is performed by SBCs
    - there is a long-term intent to get rid of on-premises SBCs in the future
    - as a part of this project, we are moving CallerID management logic from
      SBCs to Teams
    - the objective is to utilise AD-groups-based CallerID rules assignment:
      - some users to show their real number as caller ID
      - some users to show service number as caller ID
      - some users to have hidden/private/anonymous caller ID

## Other considerations

1) Licensing:
    - all telephony users to use E3 pack + PhoneSystem add-on
    - about ten users will also have Audio Conferencing add-on license
    - MTRs to use Teams Meeting Room Standard license pack
    - common area phones to be licensed with Common Area Phone license
    - applications (call flows) require cost-free PhoneSystemVirtualUser
      licenses
2) Networking
    - SBCs already have internet access (no need for new public IPs)
    - users access Internet/Office 365 from office network via a firewall, but
      there are no proxy servers
    - a limited number of employees use client-VPN when working remotely. VPN is
      already using split-tunnelling configuration
    - there is no QoS currently implemented on the council's corporate network.
      Council decided not to implement QoS for Teams as well
    - Council might need to procure new public certificate(s) for SBCs if there
      is no existing public wildcard cert that we can re-use
3) SIP Federation
    - Council wants to utilise open federation in Teams once users moved to
      Teams Only mode
