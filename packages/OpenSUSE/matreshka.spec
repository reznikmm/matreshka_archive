##--------------------------------------------------------------------------##
##                                                                          ##
##                            Matreshka Project                             ##
##                                                                          ##
##                  Specification File for OpenSUSE Package                 ##
##                                                                          ##
##--------------------------------------------------------------------------##
##                                                                          ##
## Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                ##
## All rights reserved.                                                     ##
##                                                                          ##
## Redistribution and use in source and binary forms, with or without       ##
## modification, are permitted provided that the following conditions       ##
## are met:                                                                 ##
##                                                                          ##
##  * Redistributions of source code must retain the above copyright        ##
##    notice, this list of conditions and the following disclaimer.         ##
##                                                                          ##
##  * Redistributions in binary form must reproduce the above copyright     ##
##    notice, this list of conditions and the following disclaimer in the   ##
##    documentation and/or other materials provided with the distribution.  ##
##                                                                          ##
##  * Neither the name of the Vadim Godunko, IE nor the names of its        ##
##    contributors may be used to endorse or promote products derived from  ##
##    this software without specific prior written permission.              ##
##                                                                          ##
## THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      ##
## "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        ##
## LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    ##
## A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT     ##
## HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   ##
## SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED ##
## TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   ##
## PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF   ##
## LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     ##
## NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS       ##
## SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.             ##
##                                                                          ##
##--------------------------------------------------------------------------##
##  $Revision$ $Date$
##--------------------------------------------------------------------------##

Name:           matreshka
Version:        0.5.0
Release:        1
License:        BSD
Summary:        Matreshka components for Ada programmers
Url:            http://forge.ada-ru.org/matreshka
Group:          System/Libraries
Source:         matreshka-0.4.0.tar.gz
##  Patch:
BuildRequires:  gcc-ada postgresql-devel sqlite3-devel pkg-config
##  PreReq:
##  Provides:
%description
Matreshka is a set of Ada components to develop information systems.

%global RTL_VERSION_SUFFIX %(gcc -v 2>&1 | sed -n -e 's/gcc \\w* \\([0-9]*\\.[0-9]*\\).*/-\\1/p')
%global PACKAGE_SUFFIX %(echo "%{RTL_VERSION_SUFFIX}-%{version}" | tr '.' '_')

%global _gprdir %{_prefix}/lib/gnat

%prep
%setup -q -n %{name}-%{version}

%build
make config
%configure
make SMP_MFLAGS=%{?_smp_mflags}

%check
make check

%install
%make_install
export NO_BRP_CHECK_RPATH=true

##  %%clean
##  %%{?buildroot:%%__rm -rf "%%{buildroot}"}

%package -n libleague%{PACKAGE_SUFFIX}
Group: Development/Libraries/Other
Summary: Matreshka components for Ada programmers
%description -n libleague%{PACKAGE_SUFFIX}
Matreshka is a set of Ada components to develop information systems.

%package -n libleague%{PACKAGE_SUFFIX}-devel
Group: Development/Libraries/Other
Summary: Matreshka components for Ada programmers
Requires: libleague%{PACKAGE_SUFFIX}
%description -n libleague%{PACKAGE_SUFFIX}-devel
Matreshka is a set of Ada components to develop information systems.

%package -n libmatreshka-xml%{PACKAGE_SUFFIX}
Group: Development/Libraries/Other
Summary: XML library of Matreshka components for Ada programmers
%description -n libmatreshka-xml%{PACKAGE_SUFFIX}
XML Processor component of Matreshka framework for Ada application developers

%package -n libmatreshka-xml%{PACKAGE_SUFFIX}-devel
Group: Development/Libraries/Other
Summary: XML library of Matreshka components for Ada programmers
Requires: libmatreshka-xml%{PACKAGE_SUFFIX}
%description -n libmatreshka-xml%{PACKAGE_SUFFIX}-devel
XML Processor component of Matreshka framework for Ada application developers

%package -n libmatreshka-fastcgi%{PACKAGE_SUFFIX}
Group: Development/Libraries/Other
Summary: FastCGI library of Matreshka components for Ada programmers
%description -n libmatreshka-fastcgi%{PACKAGE_SUFFIX}
FastCGI library of Matreshka components allows to Ada applications to
communicate to web servers through FastCGI protocol.

%package -n libmatreshka-fastcgi%{PACKAGE_SUFFIX}-devel
Group: Development/Libraries/Other
Summary: FastCGI library of Matreshka components for Ada programmers
Requires: libmatreshka-fastcgi%{PACKAGE_SUFFIX}
%description -n libmatreshka-fastcgi%{PACKAGE_SUFFIX}-devel
FastCGI library of Matreshka components allows to Ada applications to
communicate to web servers through FastCGI protocol.

%package -n libmatreshka-soap%{PACKAGE_SUFFIX}
Group: Development/Libraries/Other
Summary: SOAP protocol implementation of Matreshka components
%description -n libmatreshka-soap%{PACKAGE_SUFFIX}
SOAP protocol specification implementation of Matreshka components.

%package -n libmatreshka-soap%{PACKAGE_SUFFIX}-devel
Group: Development/Libraries/Other
Summary: SOAP protocol implementation of Matreshka components
Requires: libmatreshka-soap%{PACKAGE_SUFFIX}
%description -n libmatreshka-soap%{PACKAGE_SUFFIX}-devel
SOAP protocol specification implementation of Matreshka components.

%package -n libmatreshka-soap-wsse%{PACKAGE_SUFFIX}
Group: Development/Libraries/Other
Summary: WS-Security for SOAP implementation of Matreshka components
%description -n libmatreshka-soap-wsse%{PACKAGE_SUFFIX}
WS-Security support for SOAP protocol specification implementation of Matreshka
components.

%package -n libmatreshka-soap-wsse%{PACKAGE_SUFFIX}-devel
Group: Development/Libraries/Other
Summary: WS-Security for SOAP implementation of Matreshka components
Requires: libmatreshka-soap-wsse%{PACKAGE_SUFFIX}
%description -n libmatreshka-soap-wsse%{PACKAGE_SUFFIX}-devel
WS-Security support for SOAP protocol specification implementation of Matreshka
components.

%package -n matreshka-wsdl2ada%{PACKAGE_SUFFIX}
Group: Development/Libraries/Other
Summary: WSDL to Ada translator
%description -n matreshka-wsdl2ada%{PACKAGE_SUFFIX}
WSDL 2.0 to Ada translator of Matreshka

%package -n libmatreshka-sql%{PACKAGE_SUFFIX}
Group: Development/Libraries/Other
Summary: SQL database access library of Matreshka components for Ada programmers
%description -n libmatreshka-sql%{PACKAGE_SUFFIX}
SQL database access library of Matreshka components allows to use simple API to
access to different SQL databases.

%package -n libmatreshka-sql%{PACKAGE_SUFFIX}-devel
Group: Development/Libraries/Other
Summary: SQL database access library of Matreshka components for Ada programmers
Requires: libmatreshka-sql%{PACKAGE_SUFFIX}
%description -n libmatreshka-sql%{PACKAGE_SUFFIX}-devel
SQL database access library of Matreshka components allows to use simple API to
access to different SQL databases.

%package -n libmatreshka-sql-postgresql%{PACKAGE_SUFFIX}
Group: Development/Libraries/Other
Summary: PostgreSQL driver for SQL database access library of Matreshka components
%description -n libmatreshka-sql-postgresql%{PACKAGE_SUFFIX}
PostgreSQL driver for SQL database access library of Matreshka components.

%package -n libmatreshka-sql-postgresql%{PACKAGE_SUFFIX}-devel
Group: Development/Libraries/Other
Summary: PostgreSQL driver for SQL database access library of Matreshka components
Requires: libmatreshka-sql-postgresql%{PACKAGE_SUFFIX}
%description -n libmatreshka-sql-postgresql%{PACKAGE_SUFFIX}-devel
PostgreSQL driver for SQL database access library of Matreshka components.

%package -n libmatreshka-sql-sqlite3%{PACKAGE_SUFFIX}
Group: Development/Libraries/Other
Summary: SQLite3 driver for SQL database access library of Matreshka components
%description -n libmatreshka-sql-sqlite3%{PACKAGE_SUFFIX}
SQLite3 driver for SQL database access library of Matreshka components.

%package -n libmatreshka-sql-sqlite3%{PACKAGE_SUFFIX}-devel
Group: Development/Libraries/Other
Summary: SQLite3 driver for SQL database access library of Matreshka components
Requires: libmatreshka-sql-sqlite3%{PACKAGE_SUFFIX}
%description -n libmatreshka-sql-sqlite3%{PACKAGE_SUFFIX}-devel
SQLite3 driver for SQL database access library of Matreshka components.

## Oracle start
#%package -n libmatreshka-sql-oracle%{PACKAGE_SUFFIX}
#Group: Development/Libraries/Other
#Summary: Oracle driver for SQL database access library of Matreshka components
#%description -n libmatreshka-sql-oracle%{PACKAGE_SUFFIX}
#Oracle driver for SQL database access library of Matreshka components.
#
#%package -n libmatreshka-sql-oracle%{PACKAGE_SUFFIX}-devel
#Group: Development/Libraries/Other
#Summary: Oracle driver for SQL database access library of Matreshka components
#Requires: libmatreshka-sql-oracle%{PACKAGE_SUFFIX}
#%description -n libmatreshka-sql-oracle%{PACKAGE_SUFFIX}-devel
#Oracle driver for SQL database access library of Matreshka components.
## Oracle end

%package -n libmatreshka-amf%{PACKAGE_SUFFIX}
Group: Development/Libraries/Other
Summary: Ada Modeling Framework (core library) of Matreshka components
%description -n libmatreshka-amf%{PACKAGE_SUFFIX}
Core library of Ada Modeling Framework component of Matreshka framework for Ada
developers.

%package -n libmatreshka-amf%{PACKAGE_SUFFIX}-devel
Group: Development/Libraries/Other
Summary: Ada Modeling Framework (core library) of Matreshka components
Requires: libmatreshka-amf%{PACKAGE_SUFFIX}
%description -n libmatreshka-amf%{PACKAGE_SUFFIX}-devel
Core library of Ada Modeling Framework component of Matreshka framework for Ada
developers.

%package -n libmatreshka-amf-dd%{PACKAGE_SUFFIX}
Group: Development/Libraries/Other
Summary: Ada Modeling Framework (DD module) of Matreshka components
%description -n libmatreshka-amf-dd%{PACKAGE_SUFFIX}
Diagram Definition (DD) module of Ada Modeling Framework component of Matreshka
framework for Ada developers.

%package -n libmatreshka-amf-dd%{PACKAGE_SUFFIX}-devel
Group: Development/Libraries/Other
Summary: Ada Modeling Framework (DD module) of Matreshka components
Requires: libmatreshka-amf-dd%{PACKAGE_SUFFIX}
%description -n libmatreshka-amf-dd%{PACKAGE_SUFFIX}-devel
Diagram Definition (DD) module of Ada Modeling Framework component of Matreshka
framework for Ada developers.

%package -n libmatreshka-amf-uml%{PACKAGE_SUFFIX}
Group: Development/Libraries/Other
Summary: Ada Modeling Framework (UML module) of Matreshka components
%description -n libmatreshka-amf-uml%{PACKAGE_SUFFIX}
Unified Modeling Language (UML) module of Ada Modeling Framework component of
Matreshka framework for Ada developers.

%package -n libmatreshka-amf-uml%{PACKAGE_SUFFIX}-devel
Group: Development/Libraries/Other
Summary: Ada Modeling Framework (UML module) of Matreshka components
Requires: libmatreshka-amf-uml%{PACKAGE_SUFFIX}
%description -n libmatreshka-amf-uml%{PACKAGE_SUFFIX}-devel
Unified Modeling Language (UML) module of Ada Modeling Framework component of
Matreshka framework for Ada developers.

%package -n libmatreshka-amf-ocl%{PACKAGE_SUFFIX}
Group: Development/Libraries/Other
Summary: Ada Modeling Framework (OCL module) of Matreshka components
%description -n libmatreshka-amf-ocl%{PACKAGE_SUFFIX}
Object Constraint Language (OCL) module of Ada Modeling Framework component of
Matreshka framework for Ada developers.

%package -n libmatreshka-amf-ocl%{PACKAGE_SUFFIX}-devel
Group: Development/Libraries/Other
Summary: Ada Modeling Framework (OCL module) of Matreshka components
Requires: libmatreshka-amf-ocl%{PACKAGE_SUFFIX}
%description -n libmatreshka-amf-ocl%{PACKAGE_SUFFIX}-devel
Object Constraint Language (OCL) module of Ada Modeling Framework component of
Matreshka framework for Ada developers.

%package -n libmatreshka-amf-utp%{PACKAGE_SUFFIX}
Group: Development/Libraries/Other
Summary: Ada Modeling Framework (UTP module) of Matreshka components
%description -n libmatreshka-amf-utp%{PACKAGE_SUFFIX}
UML Testing Profile (UTP) module of Ada Modeling Framework component of
Matreshka framework for Ada developers.

%package -n libmatreshka-amf-utp%{PACKAGE_SUFFIX}-devel
Group: Development/Libraries/Other
Summary: Ada Modeling Framework (OCL module) of Matreshka components
Requires: libmatreshka-amf-utp%{PACKAGE_SUFFIX}
%description -n libmatreshka-amf-utp%{PACKAGE_SUFFIX}-devel
UML Testing Profile (UTP) module of Ada Modeling Framework component of
Matreshka framework for Ada developers.

%package -n libmatreshka-amf-mofext%{PACKAGE_SUFFIX}
Group: Development/Libraries/Other
Summary: Ada Modeling Framework (MOFEXT module) of Matreshka components
%description -n libmatreshka-amf-mofext%{PACKAGE_SUFFIX}
Meta Object Facility extension for UML module of Ada Modeling Framework
component of Matreshka framework for Ada developers.

%package -n libmatreshka-amf-mofext%{PACKAGE_SUFFIX}-devel
Group: Development/Libraries/Other
Summary: Ada Modeling Framework (MOFEXT module) of Matreshka components
Requires: libmatreshka-amf-mofext%{PACKAGE_SUFFIX}
%description -n libmatreshka-amf-mofext%{PACKAGE_SUFFIX}-devel
Meta Object Facility extension for UML module of Ada Modeling Framework
component of Matreshka framework for Ada developers.

%post -n libleague%{PACKAGE_SUFFIX}
/sbin/ldconfig
%postun -n libleague%{PACKAGE_SUFFIX}
/sbin/ldconfig

%post -n libmatreshka-xml%{PACKAGE_SUFFIX}
/sbin/ldconfig
%postun -n libmatreshka-xml%{PACKAGE_SUFFIX}
/sbin/ldconfig

%post -n libmatreshka-fastcgi%{PACKAGE_SUFFIX}
/sbin/ldconfig
%postun -n libmatreshka-fastcgi%{PACKAGE_SUFFIX}
/sbin/ldconfig

%post -n libmatreshka-soap%{PACKAGE_SUFFIX}
/sbin/ldconfig
%postun -n libmatreshka-soap%{PACKAGE_SUFFIX}
/sbin/ldconfig

%post -n libmatreshka-soap-wsse%{PACKAGE_SUFFIX}
/sbin/ldconfig
%postun -n libmatreshka-soap-wsse%{PACKAGE_SUFFIX}
/sbin/ldconfig

%post -n libmatreshka-sql%{PACKAGE_SUFFIX}
/sbin/ldconfig
%postun -n libmatreshka-sql%{PACKAGE_SUFFIX}
/sbin/ldconfig

%post -n libmatreshka-sql-postgresql%{PACKAGE_SUFFIX}
/sbin/ldconfig
%postun -n libmatreshka-sql-postgresql%{PACKAGE_SUFFIX}
/sbin/ldconfig

## Oracle start
#%post -n libmatreshka-sql-oracle%{PACKAGE_SUFFIX}
#/sbin/ldconfig
#%postun -n libmatreshka-sql-oracle%{PACKAGE_SUFFIX}
#/sbin/ldconfig
## Oracle end

%post -n libmatreshka-sql-sqlite3%{PACKAGE_SUFFIX}
/sbin/ldconfig
%postun -n libmatreshka-sql-sqlite3%{PACKAGE_SUFFIX}
/sbin/ldconfig

%post -n libmatreshka-amf%{PACKAGE_SUFFIX}
/sbin/ldconfig
%postun -n libmatreshka-amf%{PACKAGE_SUFFIX}
/sbin/ldconfig

%post -n libmatreshka-amf-dd%{PACKAGE_SUFFIX}
/sbin/ldconfig
%postun -n libmatreshka-amf-dd%{PACKAGE_SUFFIX}
/sbin/ldconfig

%post -n libmatreshka-amf-uml%{PACKAGE_SUFFIX}
/sbin/ldconfig
%postun -n libmatreshka-amf-uml%{PACKAGE_SUFFIX}
/sbin/ldconfig

%post -n libmatreshka-amf-ocl%{PACKAGE_SUFFIX}
/sbin/ldconfig
%postun -n libmatreshka-amf-ocl%{PACKAGE_SUFFIX}
/sbin/ldconfig

%post -n libmatreshka-amf-utp%{PACKAGE_SUFFIX}
/sbin/ldconfig
%postun -n libmatreshka-amf-utp%{PACKAGE_SUFFIX}
/sbin/ldconfig

%post -n libmatreshka-amf-mofext%{PACKAGE_SUFFIX}
/sbin/ldconfig
%postun -n libmatreshka-amf-mofext%{PACKAGE_SUFFIX}
/sbin/ldconfig

%files -n libleague%{PACKAGE_SUFFIX} -f .objs/league-lib.files
%defattr(-,root,root)
##  %%doc ChangeLog README COPYING
%files -n libleague%{PACKAGE_SUFFIX}-devel -f .objs/league-devel.files
%defattr(-,root,root)
%dir %{_includedir}/matreshka
%dir %{_includedir}/matreshka/league
%dir %{_prefix}/lib/gnat
%dir %{_prefix}/lib/gnat/matreshka
%dir %{_libdir}/matreshka

%files -n libmatreshka-xml%{PACKAGE_SUFFIX} -f .objs/xml-lib.files
%defattr(-,root,root)
%files -n libmatreshka-xml%{PACKAGE_SUFFIX}-devel -f .objs/xml-devel.files
%defattr(-,root,root)
%dir %{_includedir}/matreshka/xml

%files -n libmatreshka-fastcgi%{PACKAGE_SUFFIX} -f .objs/fastcgi-lib.files
%defattr(-,root,root)
%files -n libmatreshka-fastcgi%{PACKAGE_SUFFIX}-devel -f .objs/fastcgi-devel.files
%defattr(-,root,root)
%dir %{_includedir}/matreshka/fastcgi

%files -n libmatreshka-soap%{PACKAGE_SUFFIX} -f .objs/soap-lib.files
%defattr(-,root,root)
%files -n libmatreshka-soap%{PACKAGE_SUFFIX}-devel -f .objs/soap-devel.files
%defattr(-,root,root)
%dir %{_includedir}/matreshka/soap

%files -n libmatreshka-soap-wsse%{PACKAGE_SUFFIX} -f .objs/soap-lib.files
%defattr(-,root,root)
%files -n libmatreshka-soap-wsse%{PACKAGE_SUFFIX}-devel -f .objs/soap-devel.files
%defattr(-,root,root)
%dir %{_includedir}/matreshka/soap/wsse

%files -n matreshka-wsdl2ada%{PACKAGE_SUFFIX}
%defattr(-,root,root)
%dir %{_bindir}
%attr(755, -, -) %{_bindir}/wsdl2ada

%files -n libmatreshka-sql%{PACKAGE_SUFFIX} -f .objs/sql-lib.files
%defattr(-,root,root)
%files -n libmatreshka-sql%{PACKAGE_SUFFIX}-devel -f .objs/sql-devel.files
%defattr(-,root,root)
%dir %{_includedir}/matreshka/sql

%files -n libmatreshka-sql-postgresql%{PACKAGE_SUFFIX} -f .objs/sql_postgresql-lib.files
%defattr(-,root,root)
%files -n libmatreshka-sql-postgresql%{PACKAGE_SUFFIX}-devel -f .objs/sql_postgresql-devel.files
%defattr(-,root,root)
%dir %{_includedir}/matreshka/sql/postgresql

%files -n libmatreshka-sql-sqlite3%{PACKAGE_SUFFIX} -f .objs/sql_sqlite3-lib.files
%defattr(-,root,root)
%files -n libmatreshka-sql-sqlite3%{PACKAGE_SUFFIX}-devel -f .objs/sql_sqlite3-devel.files
%defattr(-,root,root)
%dir %{_includedir}/matreshka/sql/sqlite3

## Oracle start
#%files -n libmatreshka-sql-oracle%{PACKAGE_SUFFIX} -f .objs/sql_oci-lib.files
#%defattr(-,root,root)
#%files -n libmatreshka-sql-oracle%{PACKAGE_SUFFIX}-devel -f .objs/sql_oci-devel.files
#%defattr(-,root,root)
#%dir %{_includedir}/matreshka/sql/oci
## Oracle start

%files -n libmatreshka-amf%{PACKAGE_SUFFIX} -f .objs/amf-lib.files
%defattr(-,root,root)
%files -n libmatreshka-amf%{PACKAGE_SUFFIX}-devel -f .objs/amf-devel.files
%defattr(-,root,root)
%dir %{_includedir}/matreshka/amf
%dir %{_datadir}/matreshka
%dir %{_datadir}/matreshka/amf
%dir %{_datadir}/matreshka/amf/metamodels
%dir %{_datadir}/matreshka/amf/models

%files -n libmatreshka-amf-dd%{PACKAGE_SUFFIX} -f .objs/amf_dd-lib.files
%defattr(-,root,root)
%files -n libmatreshka-amf-dd%{PACKAGE_SUFFIX}-devel -f .objs/amf_dd-devel.files
%defattr(-,root,root)
%dir %{_includedir}/matreshka/amf/dd

%files -n libmatreshka-amf-uml%{PACKAGE_SUFFIX} -f .objs/amf_uml-lib.files
%defattr(-,root,root)
%files -n libmatreshka-amf-uml%{PACKAGE_SUFFIX}-devel -f .objs/amf_uml-devel.files
%defattr(-,root,root)
%dir %{_includedir}/matreshka/amf/uml
%dir %{_datadir}/matreshka/amf/models/UML23
%dir %{_datadir}/matreshka/amf/models/UML24

%files -n libmatreshka-amf-ocl%{PACKAGE_SUFFIX} -f .objs/amf_ocl-lib.files
%defattr(-,root,root)
%files -n libmatreshka-amf-ocl%{PACKAGE_SUFFIX}-devel -f .objs/amf_ocl-devel.files
%defattr(-,root,root)
%dir %{_includedir}/matreshka/amf/ocl

%files -n libmatreshka-amf-utp%{PACKAGE_SUFFIX} -f .objs/amf_utp-lib.files
%defattr(-,root,root)
%files -n libmatreshka-amf-utp%{PACKAGE_SUFFIX}-devel -f .objs/amf_utp-devel.files
%defattr(-,root,root)
%dir %{_includedir}/matreshka/amf/utp

%files -n libmatreshka-amf-mofext%{PACKAGE_SUFFIX} -f .objs/amf_mofext-lib.files
%defattr(-,root,root)
%files -n libmatreshka-amf-mofext%{PACKAGE_SUFFIX}-devel -f .objs/amf_mofext-devel.files
%defattr(-,root,root)
%dir %{_includedir}/matreshka/amf/mofext

%changelog
