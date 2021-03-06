package Koha::Plugin::Fi::KohaSuomi::DI::Koha::Availability::Checks;

# Copyright 2016 Koha-Suomi Oy
# Copyright 2019 University of Helsinki (The National Library Of Finland)
#
# This file is part of Koha
#
# Koha is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# Koha is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Koha; if not, see <http://www.gnu.org/licenses>.

use Modern::Perl;

use Koha::Plugin::Fi::KohaSuomi::DI::Koha::Exceptions;
use Koha::Exceptions::Object;

sub new {
    my $class = shift;

    my $self = {};
    bless $self, $class;

    return $self;
}

sub AUTOLOAD {
    my ($self, $params) = @_;

    my $method = our $AUTOLOAD;
    $method =~ s/.*://;

    # Accessor for class parameters
    if (exists $self->{$method}) {
        unless (defined $params) {
            return $self->{$method};
        } else {
            $self->{$method} = $params;
            return $self;
        }
    } elsif ($self->can($method)) {
        $self->$method($params);
    } else {
        Koha::Exceptions::Object::MethodNotFound->throw(
            "No method $method for " . ref($self)
        );
    }
}

sub DESTROY { }

1;
