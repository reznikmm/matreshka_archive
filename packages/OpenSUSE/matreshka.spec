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

Name:           matreshka
Version:        0.1.0
Release:        1
License:        BSD
Summary:        Matreshka components for Ada programmers
Url:            http://adaforge.qtada.com/cgi-bin/tracker.fcgi/matreshka
Group:          System/Libraries
Source:         matreshka-0.1.0.tar.gz
##  Patch:
BuildRequires:  gcc-ada sqlite3-devel
#BuildRequires:  gcc-ada sqlite3-devel postgresql-devel
##  PreReq:
##  Provides:
BuildRoot:      %{_tmppath}/%{name}-%{version}-build

%description
Matreshka is a set of Ada components.

%prep
%setup -q

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

%files
%defattr(-,root,root)
##  %%doc ChangeLog README COPYING
/usr/include/matreshka
/usr/lib/gnat
%_libdir
%attr(0444, root, root) %_libdir/matreshka

%changelog
