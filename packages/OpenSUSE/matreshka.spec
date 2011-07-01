#
# spec file for package 
#
# Copyright (c) 2010 SUSE LINUX Products GmbH, Nuernberg, Germany.
#
# All modifications and additions to the file contributed by third parties
# remain the property of their copyright owners, unless otherwise agreed
# upon. The license for this file, and modifications and additions to the
# file, is the same license as for the pristine package itself (unless the
# license for the pristine package is not an Open Source License, in which
# case the license is the MIT License). An "Open Source License" is a
# license that conforms to the Open Source Definition (Version 1.9)
# published by the Open Source Initiative.

# Please submit bugfixes or comments via http://bugs.opensuse.org/
#

# norootforbuild

Name:           libmatreshka
Version:        0.1.0
Release:        1
License:        BSD
Summary:        Matreshka components for Ada programmers
Url:            http://adaforge.qtada.com/cgi-bin/tracker.fcgi/matreshka
Group:          System/Libraries
Source:         matreshka-0.1.0.tar.gz
##  Patch:
BuildRequires:  gcc-ada postgresql-devel
##  PreReq:
##  Provides:
BuildRoot:      %{_tmppath}/%{name}-%{version}-build
%description
Matreshka is a set of Ada components to develop information systems.

%package devel
Summary: Matreshka components for Ada programmers
%description devel
Matreshka is a set of Ada components to develop information systems.

%package fastcgi
Summary: FastCGI library of Matreshka components for Ada programmers
%description fastcgi
FastCGI library of Matreshka components allows to Ada applications to
communicate to web servers through FastCGI protocol.

%package fastcgi-devel
Summary: FastCGI library of Matreshka components for Ada programmers
%description fastcgi-devel
FastCGI library of Matreshka components allows to Ada applications to
communicate to web servers through FastCGI protocol.

%package sql
Summary: SQL database access library of Matreshka components for Ada programmers
%description sql
SQL database access library of Matreshka components allows to use simple API to
access to different SQL databases.

%package sql-devel
Summary: SQL database access library of Matreshka components for Ada programmers
%description sql-devel
SQL database access library of Matreshka components allows to use simple API to
access to different SQL databases.

%package sql-postgresql
Summary: PostgreSQL driver for SQL database access library of Matreshka components
%description sql-postgresql
PostgreSQL driver for SQL database access library of Matreshka components.

%package sql-postgresql-devel
Summary: PostgreSQL driver for SQL database access library of Matreshka components
%description sql-postgresql-devel
PostgreSQL driver for SQL database access library of Matreshka components.

%prep
%setup -q -n matreshka-%{version}

%build
make config
%configure
make SMP_MFLAGS=%{?_smp_mflags}

%install
%make_install
export NO_BRP_CHECK_RPATH=true

##  %%clean
##  %%{?buildroot:%__rm -rf "%{buildroot}"}
##
%post
/sbin/ldconfig

%postun
/sbin/ldconfig

%files -f .objs/league-lib.files
%defattr(-,root,root)
##  %%doc ChangeLog README COPYING
%files devel -f .objs/league-devel.files
%dir %{_includedir}/matreshka
%dir %{_includedir}/matreshka/league
%dir %{_prefix}/lib/gnat/matreshka
%dir %{_libdir}/matreshka

%files fastcgi -f .objs/fastcgi-lib.files
%files fastcgi-devel -f .objs/fastcgi-devel.files
%dir %{_includedir}/matreshka/fastcgi

%files sql -f .objs/sql-lib.files
%files sql-devel -f .objs/sql-devel.files
%dir %{_includedir}/matreshka/sql

%files sql-postgresql -f .objs/sql_postgresql-lib.files
%files sql-postgresql-devel -f .objs/sql_postgresql-devel.files
%dir %{_includedir}/matreshka/sql/postgresql

##  %%files sql-sqlite3 -f .objs/sql_sqlite3-lib.files
##  %%files sql-sqlite3-devel -f .objs/sql_sqlite3-devel.files

%changelog
