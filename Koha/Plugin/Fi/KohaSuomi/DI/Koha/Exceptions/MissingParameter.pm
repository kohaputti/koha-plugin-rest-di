package Koha::Plugin::Fi::KohaSuomi::DI::Koha::Exceptions::MissingParameter;

# Copyright 2015 Vaara-kirjastot
# Copyright 2019 University of Helsinki (The National Library Of Finland)
#
# This file is part of Koha.
#
# Koha is free software; you can redistribute it and/or modify it under the
# terms of the GNU General Public License as published by the Free Software
# Foundation; either version 2 of the License, or (at your option) any later
# version.
#
# Koha is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
# A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with Koha; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

use Modern::Perl;

use Exception::Class (
    'Koha::Plugin::Fi::KohaSuomi::DI::Koha::Exceptions::MissingParameter' => {
        isa => 'Koha::Plugin::Fi::KohaSuomi::DI::Koha::Exceptions',
        description => 'Parameter missing',
    },
);

return 1;
