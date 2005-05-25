#  Copyright (C) 2003  Stanislav Sinyagin
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.

# $Id$
# Stanislav Sinyagin <ssinyagin@yahoo.com>


# DO NOT EDIT THIS FILE!

# Torrus Device Discovery local configuration.
# Put all your local settings into devdiscover-siteconfig.pl

use lib(@perllibdirs@);

$Torrus::Global::version        = '@VERSION@';
$Torrus::Global::discoveryDir   = '@sitedir@/discovery/';
$Torrus::Global::siteXmlDir     = '@sitexmldir@';

@Torrus::DevDiscover::loadModules =
    (
     'Torrus::DevDiscover::RFC2863_IF_MIB',
     'Torrus::DevDiscover::RFC2662_ADSL_LINE', # needs testing
     'Torrus::DevDiscover::RFC2670_DOCS_IF',
     'Torrus::DevDiscover::RFC2737_ENTITY_MIB',
     'Torrus::DevDiscover::RFC2790_HOST_RESOURCES',
     'Torrus::DevDiscover::AscendMax',
     'Torrus::DevDiscover::ATMEL',
     'Torrus::DevDiscover::AxxessIT',
     'Torrus::DevDiscover::CiscoCatOS',
     'Torrus::DevDiscover::CiscoFirewall',
     'Torrus::DevDiscover::CiscoGeneric',
     'Torrus::DevDiscover::CiscoIOS',
     'Torrus::DevDiscover::CiscoIOS_Docsis',
     'Torrus::DevDiscover::CiscoIOS_SAA',
     'Torrus::DevDiscover::CompaqCIM',
     'Torrus::DevDiscover::EmpireSystemedge',
     'Torrus::DevDiscover::F5BigIp',
     'Torrus::DevDiscover::MicrosoftWindows',
     'Torrus::DevDiscover::NetApp',
     'Torrus::DevDiscover::NetScreen',
     'Torrus::DevDiscover::OracleDatabase',
     'Torrus::DevDiscover::Paradyne',          # needs testing
     'Torrus::DevDiscover::RFC1697_RDBMS',
     'Torrus::DevDiscover::UcdSnmp',
     'Torrus::DevDiscover::Xylan'
     );



# Template name and source file for each template referenced in discovery
# modules

%Torrus::ConfigBuilder::templateRegistry =
    (
     ####  SNMP defaults

     '::holt-winters-defaults' => {
         'name'   => 'holt-winters-defaults',
         'source' => 'snmp-defs.xml'
         },
     '::snmp-defaults' => {
         'name'   => 'snmp-defaults',
         'source' => 'snmp-defs.xml'
         },

     #### IF-MIB

     'RFC2863_IF_MIB::rfc2863-ifmib-hostlevel' => {
         'name'   => 'rfc2863-ifmib-hostlevel',
         'source' => 'generic/rfc2863.if-mib.xml'
         },
     'RFC2863_IF_MIB::rfc2863-ifmib-subtree' => {
         'name'   => 'rfc2863-ifmib-subtree',
         'source' => 'generic/rfc2863.if-mib.xml'
         },
     'RFC2863_IF_MIB::iftable-octets' => {
         'name'   => 'iftable-octets',
         'source' => 'generic/rfc2863.if-mib.xml'
         },
     'RFC2863_IF_MIB::iftable-ucast-packets' => {
         'name'   => 'iftable-ucast-packets',
         'source' => 'generic/rfc2863.if-mib.xml'
         },
     'RFC2863_IF_MIB::iftable-discards-in' => {
         'name'   => 'iftable-discards-in',
         'source' => 'generic/rfc2863.if-mib.xml'
         },
     'RFC2863_IF_MIB::iftable-discards-out' => {
         'name'   => 'iftable-discards-out',
         'source' => 'generic/rfc2863.if-mib.xml'
         },
     'RFC2863_IF_MIB::iftable-errors-in' => {
         'name'   => 'iftable-errors-in',
         'source' => 'generic/rfc2863.if-mib.xml'
         },
     'RFC2863_IF_MIB::iftable-errors-out' => {
         'name'   => 'iftable-errors-out',
         'source' => 'generic/rfc2863.if-mib.xml'
         },
     'RFC2863_IF_MIB::ifxtable-hcoctets' => {
         'name'   => 'ifxtable-hcoctets',
         'source' => 'generic/rfc2863.if-mib.xml'
         },
     'RFC2863_IF_MIB::ifxtable-hcucast-packets' => {
         'name'   => 'ifxtable-hcucast-packets',
         'source' => 'generic/rfc2863.if-mib.xml'
         },

     #### RDBMS MIB
     'RFC1697_RDBMS::rdbms-dbtable' => {
         'name'     => 'rdbms-dbtable',
         'source'   => 'generic/rfc1697.rdbms.xml',
     },
     
     #### DOCSIS MIB

     'RFC2670_DOCS_IF::docsis-downstream-subtree' => {
         'name'   => 'docsis-downstream-subtree',
         'source' => 'generic/rfc2670.docsis-if.xml'
         },
     'RFC2670_DOCS_IF::docsis-downstream-util' => {
         'name'   => 'docsis-downstream-util',
         'source' => 'generic/rfc2670.docsis-if.xml'
         },
     'RFC2670_DOCS_IF::docsis-upstream-subtree' => {
         'name'   => 'docsis-upstream-subtree',
         'source' => 'generic/rfc2670.docsis-if.xml'
         },
     'RFC2670_DOCS_IF::docsis-upstream-signal-quality' => {
         'name'   => 'docsis-upstream-signal-quality',
         'source' => 'generic/rfc2670.docsis-if.xml'
         },

     #### RFC2790_HOST_RESOURCES

     'RFC2790_HOST_RESOURCES::hr-system-performance-subtree' => {
         'name'   => 'hr-system-performance-subtree',
         'source' => 'generic/rfc2790.host-resources.xml'
         },
     'RFC2790_HOST_RESOURCES::hr-system-uptime' => {
         'name'   => 'hr-system-uptime',
         'source' => 'generic/rfc2790.host-resources.xml'
         },
     'RFC2790_HOST_RESOURCES::hr-system-num-users' => {
         'name'   => 'hr-system-num-users',
         'source' => 'generic/rfc2790.host-resources.xml'
         },
     'RFC2790_HOST_RESOURCES::hr-system-processes' => {
         'name'   => 'hr-system-processes',
         'source' => 'generic/rfc2790.host-resources.xml'
         },
     'RFC2790_HOST_RESOURCES::hr-storage-subtree' => {
         'name'   => 'hr-storage-subtree',
         'source' => 'generic/rfc2790.host-resources.xml'
         },
     'RFC2790_HOST_RESOURCES::hr-storage-usage' => {
         'name'   => 'hr-storage-usage',
         'source' => 'generic/rfc2790.host-resources.xml'
         },

     #### ADSL-LINE-MIB

     'RFC2662_ADSL_LINE::adsl-line-interface' => {
         'name'   => 'adsl-line-interface',
         'source' => 'generic/rfc2662.adsl-line.xml'
         },

     #### ATMEL smartbridges

     'ATMEL::atmel-device-subtree' => {
         'name'   => 'atmel-device-subtree',
         'source' => 'vendor/atmel.xml'
         },
     'ATMEL::atmel-accesspoint-stats' => {
         'name'   => 'atmel-accesspoint-stats',
         'source' => 'vendor/atmel.xml'
         },
     'ATMEL::atmel-client-stats' => {
         'name'   => 'atmel-client-stats',
         'source' => 'vendor/atmel.xml'
         },

     #### AscendMax

     'AscendMax::ascend-totalcalls' => {
         'name'   => 'ascend-totalcalls',
         'source' => 'vendor/ascend.max.xml'
         },
     'AscendMax::ascend-line-stats' => {
         'name'   => 'ascend-line-stats',
         'source' => 'vendor/ascend.max.xml'
         },
     #### Cisco
     'CiscoGeneric::cisco-cpu' => {
         'name'   => 'cisco-cpu',
         'source' => 'vendor/cisco.generic.xml'
         },
     'CiscoGeneric::cisco-cpu-revised' => {
         'name'   => 'cisco-cpu-revised',
         'source' => 'vendor/cisco.generic.xml'
         },
     'CiscoGeneric::cisco-cpu-usage-subtree' => {
         'name'   => 'cisco-cpu-usage-subtree',
         'source' => 'vendor/cisco.generic.xml'
         },
     'CiscoGeneric::old-cisco-cpu' => {
         'name'   => 'old-cisco-cpu',
         'source' => 'vendor/cisco.generic.xml'
         },
     'CiscoGeneric::old-cisco-mempool' => {
         'name'   => 'cisco-mempool',
         'source' => 'vendor/cisco.generic.xml'
         },
     'CiscoGeneric::cisco-mempool' => {
         'name'   => 'cisco-mempool',
         'source' => 'vendor/cisco.generic.xml'
         },
     'CiscoGeneric::cisco-enh-mempool' => {
         'name'   => 'cisco-enh-mempool',
         'source' => 'vendor/cisco.generic.xml'
         },
     'CiscoGeneric::cisco-memusage-subtree' => {
         'name'   => 'cisco-memusage-subtree',
         'source' => 'vendor/cisco.generic.xml'
         },
     'CiscoGeneric::cisco-temperature-subtree' => {
         'name'   => 'cisco-temperature-subtree',
         'source' => 'vendor/cisco.generic.xml'
         },
     'CiscoGeneric::cisco-temperature-sensor' => {
         'name'   => 'cisco-temperature-sensor',
         'source' => 'vendor/cisco.generic.xml'
         },
     'CiscoGeneric::cisco-temperature-sensor-fahrenheit' => {
         'name'   => 'cisco-temperature-sensor-fahrenheit',
         'source' => 'vendor/cisco.generic.xml'
         },
     'CiscoIOS::cisco-interface-counters' => {
         'name'   => 'cisco-interface-counters',
         'source' => 'vendor/cisco.ios.xml'
         },
     'CiscoIOS::old-cisco-memory-buffers' => {
         'name'   => 'old-cisco-memory-buffers',
         'source' => 'vendor/cisco.ios.xml'
         },
     'CiscoIOS::cisco-ipsec-flow-globals' => {
         'name'   => 'cisco-ipsec-flow-globals',
         'source' => 'vendor/cisco.ios.xml'
         },
     'CiscoIOS_Docsis::cisco-docsis-mac-subtree' => {
         'name'   => 'cisco-docsis-mac-subtree',
         'source' => 'vendor/cisco.ios.docsis.xml'
         },
     'CiscoIOS_Docsis::cisco-docsis-mac-util' => {
         'name'   => 'cisco-docsis-mac-util',
         'source' => 'vendor/cisco.ios.docsis.xml'
         },
     'CiscoIOS_Docsis::cisco-docsis-upstream-util' => {
         'name'   => 'cisco-docsis-upstream-util',
         'source' => 'vendor/cisco.ios.docsis.xml'
         },
     'CiscoIOS_SAA::cisco-saa-subtree' => {
         'name'   => 'cisco-saa-subtree',
         'source' => 'vendor/cisco.ios.xml'
         },
     'CiscoIOS_SAA::cisco-rtt-echo-subtree' => {
         'name'   => 'cisco-rtt-echo-subtree',
         'source' => 'vendor/cisco.ios.xml'
         },
     'CiscoFirewall::cisco-firewall-subtree' => {
         'name'   => 'cisco-firewall-subtree',
         'source' => 'vendor/cisco.firewall.xml',
     },
     'CiscoFirewall::events' => {
         'name'   => 'cisco-firewall-events-delta',
         'source' => 'vendor/cisco.firewall.xml',
     },
     'CiscoFirewall::connections' => {
         'name'   => 'cisco-firewall-connections',
         'source' => 'vendor/cisco.firewall.xml',
     },

     ### Compaq Insite Manager
     'CompaqCIM::cpq-cim-temperature-sensor' => {
         'name'     => 'cpq-cim-temperature-sensor',
         'source'   => 'vendor/compaq.cim.xml',
     },
     'CompaqCIM::cpq-cim-corr-mem-errs' => {
         'name'     => 'cpq-cim-corr-mem-errs',
         'source'   => 'vendor/compaq.cim.xml',
     },

     #### Empire Sysedge
     'EmpireSystemedge::sysedge_opmode' => {
         'name'      => 'sysedge_opmode',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-memory' => {
         'name'      => 'empire-memory',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-swap-counters-nt' => {
         'name'      => 'empire-swap-counters-nt',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-swap-counters-nt40Intel' => {
         'name'      => 'empire-swap-counters-nt40Intel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-swap-counters-nt50Intel' => {
         'name'      => 'empire-swap-counters-nt50Intel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-swap-counters-unix' => {
         'name'      => 'empire-swap-counters-unix',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-swap-counters-solarisSparc' => {
         'name'      => 'empire-swap-counters-solarisSparc',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-swap-counters-aix5RS6000' => {
         'name'      => 'empire-swap-counters-aix5RS6000',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-swap-counters-linuxIntel' => {
         'name'      => 'empire-swap-counters-linuxIntel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-performance' => {
         'name'      => 'empire-performance',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-device-subtree' => {
         'name'      => 'empire-device-subtree',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-device' => {
         'name'      => 'empire-device',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-load' => {
         'name'      => 'empire-load',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-cpu-subtree' => {
         'name'      => 'empire-cpu-subtree',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-cpu-nt' => {
         'name'      => 'empire-cpu-nt',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-cpu-nt40Intel' => {
         'name'      => 'empire-cpu-nt40Intel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-cpu-nt50Intel' => {
         'name'      => 'empire-cpu-nt50Intel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-cpu-unix' => {
         'name'      => 'empire-cpu-unix',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-cpu-solarisSparc' => {
         'name'      => 'empire-cpu-solarisSparc',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-cpu-aix5RS6000' => {
         'name'      => 'empire-cpu-aix5RS6000',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-cpu-linuxIntel' => {
         'name'      => 'empire-cpu-linuxIntel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-total-cpu-nt' => {
         'name'      => 'empire-total-cpu-nt',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-total-cpu-nt40Intel' => {
         'name'      => 'empire-total-cpu-nt40Intel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-total-cpu-nt50Intel' => {
         'name'      => 'empire-total-cpu-nt50Intel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-total-cpu-unix' => {
         'name'      => 'empire-total-cpu-unix',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-total-cpu-solarisSparc' => {
         'name'      => 'empire-total-cpu-solarisSparc',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-total-cpu-aix5RS6000' => {
         'name'      => 'empire-total-cpu-aix5RS6000',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-total-cpu-linuxIntel' => {
         'name'      => 'empire-total-cpu-linuxIntel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-cpu-raw-unix' => {
         'name'      => 'empire-cpu-raw-unix',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-cpu-raw-solarisSparc' => {
         'name'      => 'empire-cpu-raw-solarisSparc',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-cpu-raw-aix5RS6000' => {
         'name'      => 'empire-cpu-raw-aix5RS6000',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-cpu-raw-linuxIntel' => {
         'name'      => 'empire-cpu-raw-linuxIntel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-cpu-raw-nt' => {
         'name'      => 'empire-cpu-raw-nt',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-cpu-raw-nt40Intel' => {
         'name'      => 'empire-cpu-raw-nt40Intel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-cpu-raw-nt50Intel' => {
         'name'      => 'empire-cpu-raw-nt50Intel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-total-cpu-raw-nt' => {
         'name'      => 'empire-total-cpu-raw-nt',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-total-cpu-raw-nt40Intel' => {
         'name'      => 'empire-total-cpu-raw-nt40Intel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-total-cpu-raw-nt50Intel' => {
         'name'      => 'empire-total-cpu-raw-nt50Intel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-total-cpu-raw-unix' => {
         'name'      => 'empire-total-cpu-raw-unix',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-total-cpu-raw-solarisSparc' => {
         'name'      => 'empire-total-cpu-raw-solarisSparc',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-total-cpu-raw-aix5RS6000' => {
         'name'      => 'empire-total-cpu-raw-aix5RS6000',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-total-cpu-raw-linuxIntel' => {
         'name'      => 'empire-total-cpu-raw-linuxIntel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-counters-nt' => {
         'name'      => 'empire-counters-nt',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-counters-nt40Intel' => {
         'name'      => 'empire-counters-nt40Intel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-counters-nt50Intel' => {
         'name'      => 'empire-counters-nt50Intel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-counters-unix' => {
         'name'      => 'empire-counters-unix',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-counters-solarisSparc' => {
         'name'      => 'empire-counters-solarisSparc',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-counters-aix5RS6000' => {
         'name'      => 'empire-counters-aix5RS6000',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-counters-linuxIntel' => {
         'name'      => 'empire-counters-linuxIntel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-runq' => {
         'name'      => 'empire-runq',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-diskwait' => {
         'name'      => 'empire-diskwait',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-pagewait' => {
         'name'      => 'empire-pagewait',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-swapactive' => {
         'name'      => 'empire-swapactive',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-sleepactive' => {
         'name'      => 'empire-sleepactive',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-disk-stats-subtree' => {
         'name'      => 'empire-disk-stats-subtree',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-disk-stats-unix' => {
         'name'      => 'empire-disk-stats-unix',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-disk-stats-solarisSparc' => {
         'name'      => 'empire-disk-stats-solarisSparc',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-disk-stats-aix5RS6000' => {
         'name'      => 'empire-disk-stats-aix5RS6000',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-disk-stats-linuxIntel' => {
         'name'      => 'empire-disk-stats-linuxIntel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-disk-stats-nt' => {
         'name'      => 'empire-disk-stats-nt',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-disk-stats-nt40Intel' => {
         'name'      => 'empire-disk-stats-nt40Intel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     'EmpireSystemedge::empire-disk-stats-nt50Intel' => {
         'name'      => 'empire-disk-stats-nt50Intel',
         'source'    => 'vendor/empire.systemedge.xml',
     },
     #### MicrosoftWindows
     'MicrosoftWindows::microsoft-iis-ftp-stats' => {
         'name'     => 'microsoft-iis-ftp-stats',
         'source'   => 'vendor/microsoft.windows.xml',
     },
     'MicrosoftWindows::microsoft-iis-http-stats' => {
         'name'     => 'microsoft-iis-http-stats',
         'source'   => 'vendor/microsoft.windows.xml',
     },

     #### F5 BigIp
     'F5BigIp::BigIp_4.x' => {
         'name'     => 'BigIp_4.x',
         'source'   => 'vendor/f5.bigip.xml',
     },
     'F5BigIp::BigIp_4.x_virtualServer' => {
         'name'     => 'BigIp_4.x_virtualServer',
         'source'   => 'vendor/f5.bigip.xml',
     },
     'F5BigIp::BigIp_4.x_virtualServer-connrate-overview' => {
         'name'     => 'BigIp_4.x_virtualServer-connrate-overview',
         'source'   => 'vendor/f5.bigip.xml',
     },
     'F5BigIp::BigIp_4.x_virtualServer-actvconn-overview' => {
         'name'     => 'BigIp_4.x_virtualServer-connrate-overview',
         'source'   => 'vendor/f5.bigip.xml',
     },
     'F5BigIp::BigIp_4.x_pool-actvconn-overview' => {
         'name'     => 'BigIp_4.x_pool-actvconn-overview',
         'source'   => 'vendor/f5.bigip.xml',
     },
     'F5BigIp::BigIp_4.x_pool' => {
         'name'     => 'BigIp_4.x_pool',
         'source'   => 'vendor/f5.bigip.xml',
     },
     'F5BigIp::BigIp_4.x_poolMember-actvconn-overview' => {
         'name'     => 'BigIp_4.x_poolMember-actvconn-overview',
         'source'   => 'vendor/f5.bigip.xml',
     },
     'F5BigIp::BigIp_4.x_poolMember' => {
         'name'     => 'BigIp_4.x_poolMember',
         'source'   => 'vendor/f5.bigip.xml',
     },
     'F5BigIp::BigIp_4.x_sslProxy_Global' => {
         'name'     => 'BigIp_4.x_sslProxy_Global',
         'source'   => 'vendor/f5.bigip.xml',
     },
     'F5BigIp::BigIp_4.x_sslProxy-currconn-overview' => {
         'name'     => 'BigIp_4.x_sslProxy-currconn-overview',
         'source'   => 'vendor/f5.bigip.xml',
     },
     'F5BigIp::BigIp_4.x_sslProxy' => {
         'name'     => 'BigIp_4.x_sslProxy',
         'source'   => 'vendor/f5.bigip.xml',
     },
     'F5BigIp::BigIp_3.x' => {
         'name'     => 'BigIp_3.x',
         'source'   => 'vendor/f5.bigip.xml',
     },
     ##### Ucd Snmp
     'UcdSnmp::ucdsnmp-memory-real' => {
         'name'     => 'ucdsnmp-memory-real',
         'source'   => 'vendor/ucd.ucd-snmp.xml',
     },
     'UcdSnmp::ucdsnmp-memory-swap' => {
         'name'     => 'ucdsnmp-memory-swap',
         'source'   => 'vendor/ucd.ucd-snmp.xml',
     },
     'UcdSnmp::ucdsnmp-blockio' => {
         'name'     => 'ucdsnmp-blockio',
         'source'   => 'vendor/ucd.ucd-snmp.xml',
     },
     'UcdSnmp::ucdsnmp-raw-interrupts' => {
         'name'     => 'ucdsnmp-raw-interrupts',
         'source'   => 'vendor/ucd.ucd-snmp.xml',
     },
     'UcdSnmp::ucdsnmp-cpu-user-multi' => {
         'name'     => 'ucdsnmp-cpu-user-multi',
         'source'   => 'vendor/ucd.ucd-snmp.xml',
     },
     'UcdSnmp::ucdsnmp-cpu-user' => {
         'name'     => 'ucdsnmp-cpu-user',
         'source'   => 'vendor/ucd.ucd-snmp.xml',
     },
     'UcdSnmp::ucdsnmp-cpu-system-multi' => {
         'name'     => 'ucdsnmp-cpu-system-multi',
         'source'   => 'vendor/ucd.ucd-snmp.xml',
     },
     'UcdSnmp::ucdsnmp-cpu-system' => {
         'name'     => 'ucdsnmp-cpu-system',
         'source'   => 'vendor/ucd.ucd-snmp.xml',
     },
     'UcdSnmp::ucdsnmp-cpu-wait-multi' => {
         'name'     => 'ucdsnmp-cpu-wait-multi',
         'source'   => 'vendor/ucd.ucd-snmp.xml',
     },
     'UcdSnmp::ucdsnmp-cpu-wait' => {
         'name'     => 'ucdsnmp-cpu-wait',
         'source'   => 'vendor/ucd.ucd-snmp.xml',
     },
     'UcdSnmp::ucdsnmp-cpu-kernel-multi' => {
         'name'     => 'ucdsnmp-cpu-kernel-multi',
         'source'   => 'vendor/ucd.ucd-snmp.xml',
     },
     'UcdSnmp::ucdsnmp-cpu-kernel' => {
         'name'     => 'ucdsnmp-cpu-kernel',
         'source'   => 'vendor/ucd.ucd-snmp.xml',
     },
     'UcdSnmp::ucdsnmp-cpu-idle-multi' => {
         'name'     => 'ucdsnmp-cpu-idle-multi',
         'source'   => 'vendor/ucd.ucd-snmp.xml',
     },
     'UcdSnmp::ucdsnmp-cpu-idle' => {
         'name'     => 'ucdsnmp-cpu-idle',
         'source'   => 'vendor/ucd.ucd-snmp.xml',
     },
     'UcdSnmp::ucdsnmp-cpu-nice-multi' => {
         'name'     => 'ucdsnmp-cpu-nice-multi',
         'source'   => 'vendor/ucd.ucd-snmp.xml',
     },
     'UcdSnmp::ucdsnmp-cpu-nice' => {
         'name'     => 'ucdsnmp-cpu-nice',
         'source'   => 'vendor/ucd.ucd-snmp.xml',
     },
     'UcdSnmp::ucdsnmp-cpu-interrupts-multi' => {
         'name'     => 'ucdsnmp-cpu-interrupts-multi',
         'source'   => 'vendor/ucd.ucd-snmp.xml',
     },
     'UcdSnmp::ucdsnmp-cpu-interrupts' => {
         'name'     => 'ucdsnmp-cpu-interrupts',
         'source'   => 'vendor/ucd.ucd-snmp.xml',
     },
     'UcdSnmp::ucdsnmp-load-average' => {
         'name'     => 'ucdsnmp-load-average',
         'source'   => 'vendor/ucd.ucd-snmp.xml',
     },
     #### NetApp (Network Appliance)
     'NetApp::CPU' => {
         'name'     => 'netapp-cpu',
         'source'   => 'vendor/netapp.filer.xml',
     },
     'NetApp::misc' => {
         'name'     => 'netapp-misc',
         'source'   => 'vendor/netapp.filer.xml',
     },
     'NetApp::nfsv2' => {
         'name'     => 'netapp-nfsv2',
         'source'   => 'vendor/netapp.filer.xml',
     },
     'NetApp::nfsv3' => {
         'name'     => 'netapp-nfsv3',
         'source'   => 'vendor/netapp.filer.xml',
     },
     'NetApp::cifs' => {
         'name'     => 'netapp-cifs',
         'source'   => 'vendor/netapp.filer.xml',
     },
     #### NetScreen
     'NetScreen::netscreen-cpu-stats' => {
         'name'     => 'netscreen-cpu-stats',
         'source'   => 'vendor/netscreen.xml',
     },
     'NetScreen::netscreen-memory-stats' => {
         'name'     => 'netscreen-memory-stats',
         'source'   => 'vendor/netscreen.xml',
     },
     'NetScreen::netscreen-sessions-stats' => {
         'name'     => 'netscreen-sessions-stats',
         'source'   => 'vendor/netscreen.xml',
     },
     #### OracleDatabase
     'OracleDatabase::Sys' => {
         'name'     => 'oracle-database-sys',
         'source'   => 'vendor/oracle.database.xml',
     },
     'OracleDatabase::CacheSum' => {
         'name'     => 'oracle-cache-sum',
         'source'   => 'vendor/oracle.database.xml',
     },
     'OracleDatabase::SGA' => {
         'name'     => 'oracle-sga',
         'source'   => 'vendor/oracle.database.xml',
     },
     'OracleDatabase::table-space' => {
         'name'     => 'oracle-table-space',
         'source'   => 'vendor/oracle.database.xml',
     },
     'OracleDatabase::data-file' => {
         'name'     => 'oracle-data-file',
         'source'   => 'vendor/oracle.database.xml',
     },
     'OracleDatabase::library-cache' => {
         'name'     => 'oracle-library-cache',
         'source'   => 'vendor/oracle.database.xml',
     },
     #### Paradyne
     'Paradyne::paradyne-xdsl-interface' => {
         'name'   => 'paradyne-xdsl-interface',
         'source' => 'vendor/paradyne.xdsl.xml'
         },
     );

##########################
# Common parameters

# If true, data-dir would be hashed across a number of subdirectories
# Only concatenation of hostname and domain name is hashed.
$Torrus::DevDiscover::hashDataDirEnabled = 0;

# Format for hashed data-dir subdirectory name. The argument is a number
# from 0 to bucketSize-1.
$Torrus::DevDiscover::hashDataDirFormat = '%.2X';

# How many hashed data-dir subdirectories are used.
$Torrus::DevDiscover::hashDataDirBucketSize = 256;


##########################
# RFC2790_HOST_RESOURCES parameters

# The top level of the Host Resources Storage graph, percentage
$Torrus::DevDiscover::RFC2790_HOST_RESOURCES::storageGraphTop = 105;

# Where to draw the hi-mark line in Host Resources Storage, percentage
$Torrus::DevDiscover::RFC2790_HOST_RESOURCES::storageHiMark = 100;


##########################
# EmpireSystemedge parameters

# The top level of the Host Resources Storage graph, percentage
$Torrus::DevDiscover::EmpireSystemedge::storageGraphTop = 105;

# Where to draw the hi-mark line in Empire Storage, percentage
$Torrus::DevDiscover::EmpireSystemedge::storageHiMark = 100;


##########################
#  CiscoIOS parameters

# For mkroutercfg compatibility, set this to 1
$Torrus::DevDiscover::CiscoIOS::useCiscoInterfaceCounters = 0;



# Read plugin configurations
{
    my $dir = '@plugdevdisccfgdir@';
    opendir(CFGDIR, $dir) or die("Cannot open directory $dir: $!");
    my @files = grep { !/^\./ } readdir(CFGDIR);
    closedir( CFGDIR );
    foreach my $file ( @files )
    {
        require $dir . '/' . $file;
    }
}


require '@devdiscover_siteconfig_pl@';

1;
