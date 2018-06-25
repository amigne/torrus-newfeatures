#  Copyright (C) 2018  Yann Gauteron
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

# Yann Gauteron <yann@amigne.ovh>

# Huawei devices discovery

package Torrus::DevDiscover::Huawei;

use strict;
use warnings;

use Torrus::Log;

$Torrus::DevDiscover::registry{'Huawei'} = {
    'sequence'     => 500,
    'checkdevtype' => \&checkdevtype,
    'discover'     => \&discover,
    'buildConfig'  => \&buildConfig
    };

our %oiddef = (
     # HUAWEI-MIB
     'lanSw'                => '1.3.6.1.4.1.2011.2.23',
     );

if( not defined( $huaweiInterfaceFilter ) )
{
    $huaweiInterfaceFilter = {
        'SSLRoot' => {
            'ifType'  => 1,                    # other
            'ifDescr' => '^NULL',
        },
        'MGMT' => {
            'ifType'  => 24,                   # softwareLoopback
            'ifDescr' => '^InLoopBack',
        },
        'Modem' => {
            'ifType'  => 1,                    # other
            'ifDescr' => '^Console',
        },
        'Modem' => {
            'ifType'  => 6,                    # ethernetCsmacd
            'ifDescr' => '^MEth',
        },
    };
}

sub checkdevtype
{
    my $dd = shift;
    my $devdetails = shift;

    my $objID = $devdetails->snmpVar($dd->oiddef('sysObjectID'));

    if( $dd->oidBaseMatch('lanSw', $objID) )
    {
        $devdetails->setCap('Huawei_LanSw');
        
        &Torrus::DevDiscover::RFC2863_IF_MIB::addInterfaceFilter
            ($devdetails, $huaweiInterfaceFilter);
        
        return 1;
    }
    
    return 0;
}

sub discover
{
    my $dd = shift;
    my $devdetails = shift;

    my $session = $dd->session();
    my $data = $devdetails->data();

    if( $devdetails->hasCap('Huawei_LanSw') )
    {

    }
    
    return 1;
}

sub buildConfig
{
    my $devdetails = shift;
    my $cb = shift;
    my $devNode = shift;

    my $data = $devdetails->data();

    if( $devdetails->hasCap('Fortinet_FG') )
    {

    }
    
    return;
}

1;

# Local Variables:
# mode: perl
# indent-tabs-mode: nil
# perl-indent-level: 4
# End:
