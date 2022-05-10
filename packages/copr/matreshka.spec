# Template for rpkg

%undefine _hardened_build
%global with_amf 0
%define _gprdir %_GNAT_project_dir
%define major 20
%define ver %{major}.0

Name:       matreshka
Version:    22
Release:    svn%{?dist}
Summary:    Set of Ada libraries to help to develop information systems
Group:      System Environment/Libraries
License:    BSD
URL:        http://forge.ada-ru.org/matreshka
### Direct download is not availeble
Source0:    matreshka.tar.gz
BuildRequires:   gcc-gnat
BuildRequires:   fedora-gnat-project-common  >= 3
BuildRequires:   chrpath
BuildRequires:   gprbuild valgrind
BuildRequires:   postgresql-devel sqlite-devel mariadb-devel
BuildRequires:   aws-devel

# gprbuild only available on these:
ExclusiveArch: %GPRbuild_arches

%description
Matreshka is a set of Ada libraries to help to develop information systems.
It includes:

* League --- provides support for localization,
internationalization and globalization; including:
-- unbounded form of string of Unicode characters;
   cursors to iterate other characters and grapheme clusters;
   advanced locale tailored operations such as case conversion,
   case folding, collation, normalization;
-- regular expression engine with Perl-style syntax and Unicode extensions;
-- text codec to convert data streams into/from internal representation;
-- message translator to translate messages into natural language
   which is selected by user;
-- access to command line arguments and environment
   variables as Unicode encoded strings.
-- XML processor --- provides capability to manipulate with XML streams
   and documents;including:
-- SAX reader to read XML streams and documents;
   it supports both XML1.0/XML1.1 specifications.
-- SAX writer to generate XML streams and documents from application.

%package devel

Group:      Development/Libraries
License:    BSD
Summary:    Devel package for Matreshka
Requires:       %{name}%{?_isa} = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2
Requires:   gdb

%description devel
Devel package for matreshka

%package fastcgi
Summary:    Web framework based on Matreshka
License:    BSD
Group:      System Environment/Libraries
Requires:       %{name}%{?_isa} = %{version}-%{release}

%description fastcgi
Web framework
-- FastCGI module allows to develop server side applications completely in Ada
   and use them with standard HTTP servers ( demo).


%package fastcgi-devel
Summary:    Devel package for  Matreshka-fastcgi
License:    BSD
Group:      Development/Libraries
Requires:   %{name}-fastcgi%{?_isa} = %{version}-%{release}
Requires:   %{name}-devel%{?_isa} = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2

%description fastcgi-devel
%{summary}

%package soap-core
Summary:    Framework for work with SOAP 1.2
License:    BSD
Group:      System Environment/Libraries
Requires:   %{name}%{?_isa} = %{version}-%{release}

%description soap-core
Implementation of SOAP 1.2 in Matreshka.

%package soap-core-devel
Summary:    Devel package for Matreshka-soap-core
License:    BSD
Group:      Development/Libraries
Requires:   %{name}-soap-core%{?_isa} = %{version}-%{release}
Requires:   %{name}-devel%{?_isa}  = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2

%description soap-core-devel
%{summary}

%package soap-wsse
Summary:    WS-Security 1.1 implementation for Matreshka-soap-core
License:    BSD
Group:      System Environment/Libraries
Requires:   %{name}-soap-core%{?_isa}  = %{version}-%{release}

%description soap-wsse
%{summary}.

%package soap-wsse-devel
Summary:    Devel package for Matreshka-soap-wsse
License:    BSD
Group:      Development/Libraries
Requires:   %{name}-soap-wsse%{?_isa} = %{version}-%{release}
Requires:   %{name}-soap-core-devel%{?_isa}  = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2

%description soap-wsse-devel
%{summary}

%package sql-core
Summary:    Framework for work with SQL databases based on Matreshka
License:    BSD
Group:      System Environment/Libraries
Requires:   %{name}%{?_isa}  = %{version}-%{release}

%description sql-core
SQL database access provides simple generic API to access to SQL databases.

%package sql-core-devel
Summary:    Devel package for Matreshka-sql-core
License:    BSD
Group:      Development/Libraries
Requires:   %{name}-sql-core%{?_isa} = %{version}-%{release}
Requires:   %{name}-devel%{?_isa}  = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2

%description sql-core-devel
%{summary}

%package sql-sqlite
Summary:    SQLite bindings for Ada
License:    BSD
Group:      System Environment/Libraries
Requires:   %{name}-sql-core%{?_isa}  = %{version}-%{release}

%description sql-sqlite
%{summary}

%package sql-sqlite-devel
Summary:    Devel package for Matreshka-sql-sqlite
License:    BSD
Group:      Development/Libraries
Requires:   %{name}-sql-sqlite%{?_isa} = %{version}-%{release}
Requires:   %{name}-sql-core-devel%{?_isa}  = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2

%description sql-sqlite-devel
%{summary}

%package sql-postgresql
Summary:    postgresql bindings for Ada
License:    BSD
Group:      System Environment/Libraries
Requires:   %{name}%{?_isa}  = %{version}-%{release}
Requires:   %{name}-sql-core%{?_isa}  = %{version}-%{release}

%description sql-postgresql
%{summary}

%package sql-postgresql-devel
Summary:    Devel package for Matreshka-sql-postgresql
License:    BSD
Group:      Development/Libraries
Requires:   %{name}-sql-postgresql%{?_isa} = %{version}-%{release}
Requires:   %{name}-sql-core-devel%{?_isa}  = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2

%description sql-postgresql-devel
%{summary}

%package sql-mysql
Summary:    mysql bindings for Ada
License:    BSD
Group:      System Environment/Libraries
Requires:   %{name}%{?_isa}  = %{version}-%{release}
Requires:   %{name}-sql-core%{?_isa}  = %{version}-%{release}

%description sql-mysql
%{summary}

%package sql-mysql-devel
Summary:    Devel package for Matreshka-sql-mysql
License:    BSD
Group:      Development/Libraries
Requires:   %{name}-sql-mysql%{?_isa} = %{version}-%{release}
Requires:   %{name}-sql-core-devel%{?_isa}  = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2

%description sql-mysql-devel
%{summary}

%package xml
Summary:    Manipulate with XML streams and document
License:    BSD
Group:      System Environment/Libraries
Requires:   %{name}%{?_isa}  = %{version}-%{release}

%description xml
XML processor  provides capability to manipulate 
with XML streams and documents; including:

  SAX reader to read XML streams and documents; 
  it supports XML1.0 (Fifth Edition), 
  XML1.1 (Second Edition), 
  Namespaces in XML  and XML Base specifications;
  
  SAX writer to generate XML streams 
  and documents from application;
  
  XML Catalogs resolver . 
%package xml-devel
Summary:    Devel package for Matreshka-xml
License:    BSD
Group:      Development/Libraries
Requires:   %{name}-xml%{?_isa} = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2

%description xml-devel
%{summary}

%if %{with_amf}
%package amf
Summary:    Implementation of OMG's Meta Object Facility (MOF)
License:    BSD
Group:      System Environment/Libraries
Requires:   %{name}%{?_isa}  = %{version}-%{release}
Requires:   %{name}-xml%{?_isa}  = %{version}-%{release}

%description amf
Ada Modeling Framework provides implementation of OMG's Meta Object Facility (MOF) 
written completely in Ada. Extension modules is provided to analyze/modify:
    UML models
        MOF Extensions models to support metamodeling 0.3
        OCL models 0.3 

%package amf-devel
Summary:    Devel package for Matreshka-amf
License:    BSD
Group:      Development/Libraries
Requires:   %{name}-amf%{?_isa} = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2

%description amf-devel
%{summary}

%package amf-dd
Summary:    Diagram Definition (DD) specification support for AMF
License:    BSD
Group:      System Environment/Libraries
Requires:   %{name}-amf%{?_isa} = %{version}-%{release}

%description amf-dd
Diagram Definition (DD) specification support for AMF.

%package amf-dd-devel
Summary:    Devel package for Matreshka-dd
License:    BSD
Group:      Development/Libraries
Requires:   %{name}-amf-dd%{?_isa} = %{version}-%{release} 
Requires:   fedora-gnat-project-common  >= 2

%description amf-dd-devel
%{summary}

%package amf-uml
Summary:    Implementation of OMG's Meta Object Facility (MOF)
License:    BSD
Group:      System Environment/Libraries
Requires:   %{name}-amf%{?_isa} = %{version}-%{release}

%description amf-uml
Ada Modeling Framework provides implementation of OMG's Meta Object Facility (MOF) 
written completely in Ada. Extension modules is provided to analyze/modify:
    UML models
        MOF Extensions models to support metamodeling 0.3
        OCL models 0.3 

%package amf-uml-devel
Summary:    Devel package for Matreshka-uml
License:    BSD
Group:      Development/Libraries
Requires:   %{name}-amf-uml%{?_isa} = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2

%description amf-uml-devel
%{summary}

%package amf-utp
Summary:    The UML Testing Profile for matreshka
License:    BSD
Group:      System Environment/Libraries
Requires:   %{name}-amf%{?_isa} = %{version}-%{release}

%description amf-utp
%{summary}

%package amf-utp-devel
Summary:    Devel package for Matreshka-uml
License:    BSD
Group:      Development/Libraries
Requires:   %{name}-amf-utp%{?_isa} = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2

%description amf-utp-devel
%{summary}

%package amf-ocl
Summary:    The UML OCL for matreshka
License:    BSD
Group:      System Environment/Libraries
Requires:   %{name}-amf%{?_isa} = %{version}-%{release}

%description amf-ocl
%{summary}

%package amf-ocl-devel
Summary:    Devel package for Matreshka-amf-ocl
License:    BSD
Group:      Development/Libraries
Requires:   %{name}-amf-ocl%{?_isa} = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2

%description amf-ocl-devel
%{summary}

%package amf-mofext
Summary:    The UML mofext for matreshka
License:    BSD
Group:      System Environment/Libraries
Requires:   %{name}-amf%{?_isa} = %{version}-%{release}

%description amf-mofext
%{summary}

%package amf-mofext-devel
Summary:    Devel package for Matreshka-amf-mofext
License:    BSD
Group:      Development/Libraries
Requires:   %{name}-amf-mofext%{?_isa} = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2

%description amf-mofext-devel
%{summary}
%endif

%package spikedog-api-lib
Summary:    Web-application server to execute Ada applications (api library)
License:    BSD
Group:      Development/Libraries
Requires:   %{name}%{?_isa} = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2

%description spikedog-api-lib
%{summary}

%package spikedog-api-devel
Summary:    Devel package for spikedog-api-lib
License:    BSD
Group:      Development/Libraries
Requires:   %{name}-spikedog-api-lib%{?_isa} = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2

%description spikedog-api-devel
%{summary}

%package spikedog-core-lib
Summary:    Web-application server to execute Ada applications (core library)
License:    BSD
Group:      Development/Libraries
Requires:   %{name}%{?_isa} = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2

%description spikedog-core-lib
%{summary}

%package spikedog-core-devel
Summary:    Devel package for spikedog-core-lib
License:    BSD
Group:      Development/Libraries
Requires:   %{name}-spikedog-core-lib%{?_isa} = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2
%description spikedog-core-devel
%{summary}

%package spikedog-awsd
Summary:    Web-application server to execute Ada applications (executable)
License:    BSD
Group:      Development/Libraries
Requires:   %{name}%{?_isa} = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2

%description spikedog-awsd
%{summary}

%package spikedog-awsd-devel
Summary:    Devel package for spikedog-awsd
License:    BSD
Group:      Development/Libraries
Requires:   %{name}-spikedog-awsd%{?_isa} = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2
%description spikedog-awsd-devel
%{summary}

%package servlet-lib
Summary:    Server-independent implementation of Servlet API
License:    BSD
Group:      Development/Libraries
Requires:   %{name}%{?_isa} = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2

%description servlet-lib
%{summary}

%package servlet-devel
Summary:    Devel package for servlet-lib
License:    BSD
Group:      Development/Libraries
Requires:   %{name}-servlet-lib%{?_isa} = %{version}-%{release}
Requires:   fedora-gnat-project-common  >= 2

%description servlet-devel
%{summary}

%prep
%setup -q -n %{name}
%define rtl_version %(gcc -v 2>&1 | grep -P 'gcc version'  | awk '{print $3}' | cut -d '.' -f 1-2)

%build
# This package triggers a fault in the Ada compiler when LTO is enable.  We
# see the same failure in GtkAda and GtkAda3.  Disable LTO for now.
%define _lto_cflags %{nil}

make config  %{?_smp_mflags} GPRBUILD_FLAGS="%Gnatmake_optflags"
%if %{with_amf}
%configure
%else
echo "HARDWARE_PLATFORM=$HARDWARE_PLATFORM"
%configure --without-amf
%endif
cat config.log
make  %{?_smp_mflags} GPRBUILD_FLAGS="%Gnatmake_optflags"

%check 
## find libs without RPATH, Fedora specific
export LD_LIBRARY_PATH="%{buildroot}/%{_libdir}/:$LD_LIBRARY_PATH"
make %{?_smp_mflags} GNAT_OPTFLAGS="%{GNAT_optflags}" check
## Delete compiled python files 
rm -f %{buildroot}/%{_datadir}/gdb/python/matreshka/matreshka.py?

%install
rm -rf %{buildroot}
make install DESTDIR=%{buildroot} LIBDIR=%{_libdir} PREFIX=%{_prefix} GPRDIR=%{_gprdir} BINDIR=%{_bindir}
## Delete rpath
chrpath --delete %{buildroot}%{_libdir}/lib*

%post     -p /sbin/ldconfig
%postun   -p /sbin/ldconfig

%post   sql-core  -p /sbin/ldconfig
%postun sql-core  -p /sbin/ldconfig

%post   fastcgi  -p /sbin/ldconfig
%postun fastcgi  -p /sbin/ldconfig

%post   sql-sqlite  -p /sbin/ldconfig
%postun sql-sqlite  -p /sbin/ldconfig

%post   sql-postgresql  -p /sbin/ldconfig
%postun sql-postgresql  -p /sbin/ldconfig

%post   sql-mysql  -p /sbin/ldconfig
%postun sql-mysql  -p /sbin/ldconfig

%files
%doc CONTRIBUTORS  LICENSE
%dir %{_libdir}/%{name}/league
%{_libdir}/%{name}/league/libleague-%{rtl_version}.so.%{ver}
%{_libdir}/libleague-%{rtl_version}.so.%{ver}
%{_datadir}/%{name}/cldr
%{_bindir}/uaflex
%dir %{_datadir}/%{name}

%files devel
%doc README.md
%{_libdir}/%{name}/league/libleague-%{rtl_version}.so
%{_libdir}/%{name}/league/libleague-%{rtl_version}.so.%{major}
%{_libdir}/libleague-%{rtl_version}.so
%{_libdir}/libleague-%{rtl_version}.so.%{major}
%{_libdir}/%{name}/league/*.ali
%{_includedir}/%{name}/league
%{_datadir}/gdb/python/%{name}
%{_gprdir}/%{name}_league.gpr
%{_gprdir}/manifests/league


%files fastcgi
%dir %{_libdir}/%{name}//fastcgi
%{_libdir}/%{name}//fastcgi/libmatreshka-fastcgi-%{rtl_version}.so.%{ver}
%{_libdir}/libmatreshka-fastcgi-%{rtl_version}.so.%{ver}

%files fastcgi-devel 
%{_includedir}/%{name}/fastcgi
%{_libdir}/%{name}//fastcgi/libmatreshka-fastcgi-%{rtl_version}.so
%{_libdir}/%{name}//fastcgi/libmatreshka-fastcgi-%{rtl_version}.so.%{major}
%{_libdir}/libmatreshka-fastcgi-%{rtl_version}.so
%{_libdir}/libmatreshka-fastcgi-%{rtl_version}.so.%{major}
%{_libdir}/%{name}//fastcgi/*.ali
%{_gprdir}/%{name}_fastcgi.gpr
%{_gprdir}/manifests/fastcgi

%files soap-core
%{_bindir}/wsdl2ada
%dir %{_libdir}/%{name}/soap
%{_libdir}/%{name}/soap/libmatreshka-soap-%{rtl_version}.so.%{ver}
%{_libdir}/libmatreshka-soap-%{rtl_version}.so.%{ver}

%files soap-core-devel
%{_includedir}/%{name}/soap
%{_libdir}/%{name}/soap/libmatreshka-soap-%{rtl_version}.so
%{_libdir}/%{name}/soap/libmatreshka-soap-%{rtl_version}.so.%{major}
%{_libdir}/libmatreshka-soap-%{rtl_version}.so
%{_libdir}/libmatreshka-soap-%{rtl_version}.so.%{major}
%{_libdir}/%{name}/soap/*.ali
%{_gprdir}/%{name}_soap.gpr
%{_gprdir}/manifests/soap

%files soap-wsse
%dir %{_libdir}/%{name}/wsse
%{_libdir}/%{name}/wsse/libmatreshka-soap-wsse-%{rtl_version}.so.%{ver}
%{_libdir}/libmatreshka-soap-wsse-%{rtl_version}.so.%{ver}

%files soap-wsse-devel
%{_includedir}/%{name}/wsse
%{_libdir}/%{name}/wsse/libmatreshka-soap-wsse-%{rtl_version}.so
%{_libdir}/%{name}/wsse/libmatreshka-soap-wsse-%{rtl_version}.so.%{major}
%{_libdir}/libmatreshka-soap-wsse-%{rtl_version}.so
%{_libdir}/libmatreshka-soap-wsse-%{rtl_version}.so.%{major}
%{_libdir}/%{name}/wsse/*.ali
%{_gprdir}/%{name}_soap_wsse.gpr
%{_gprdir}/manifests/wsse

%files sql-core
%dir %{_libdir}/%{name}/sql/
%{_libdir}/%{name}/sql/libmatreshka-sql-%{rtl_version}.so.%{ver}
%{_libdir}/libmatreshka-sql-%{rtl_version}.so.%{ver}

%files sql-core-devel 
%{_includedir}/%{name}/sql
%{_libdir}/%{name}/sql/libmatreshka-sql-%{rtl_version}.so
%{_libdir}/%{name}/sql/libmatreshka-sql-%{rtl_version}.so.%{major}
%{_libdir}/libmatreshka-sql-%{rtl_version}.so
%{_libdir}/libmatreshka-sql-%{rtl_version}.so.%{major}
%{_libdir}/%{name}/sql/*.ali
%{_gprdir}/%{name}_sql.gpr
%{_gprdir}/manifests/sql


%files sql-sqlite
%dir %{_libdir}/%{name}/sql_sqlite3
%{_libdir}/%{name}/sql_sqlite3/libmatreshka-sql-sqlite3-%{rtl_version}.so.%{ver}
%{_libdir}/libmatreshka-sql-sqlite3-%{rtl_version}.so.%{ver}

%files sql-sqlite-devel
%{_includedir}/%{name}/sql_sqlite3
%{_libdir}/%{name}/sql_sqlite3/libmatreshka-sql-sqlite3-%{rtl_version}.so
%{_libdir}/%{name}/sql_sqlite3/libmatreshka-sql-sqlite3-%{rtl_version}.so.%{major}
%{_libdir}/libmatreshka-sql-sqlite3-%{rtl_version}.so
%{_libdir}/libmatreshka-sql-sqlite3-%{rtl_version}.so.%{major}
%{_libdir}/%{name}/sql_sqlite3/*.ali
%{_gprdir}/%{name}_sql_sqlite3.gpr
%{_gprdir}/manifests/sql_sqlite3

%files sql-postgresql
%dir %{_libdir}/%{name}/sql_postgresql
%{_libdir}/%{name}/sql_postgresql/libmatreshka-sql-postgresql-%{rtl_version}.so.%{ver}
%{_libdir}/libmatreshka-sql-postgresql-%{rtl_version}.so.%{ver}

%files sql-postgresql-devel
%{_includedir}/%{name}/sql_postgresql
%{_libdir}/%{name}/sql_postgresql/libmatreshka-sql-postgresql-%{rtl_version}.so
%{_libdir}/%{name}/sql_postgresql/libmatreshka-sql-postgresql-%{rtl_version}.so.%{major}
%{_libdir}/libmatreshka-sql-postgresql-%{rtl_version}.so
%{_libdir}/libmatreshka-sql-postgresql-%{rtl_version}.so.%{major}
%{_libdir}/%{name}/sql_postgresql/*.ali
%{_gprdir}/%{name}_sql_postgresql.gpr
%{_gprdir}/manifests/sql_postgresql

%files sql-mysql
%dir %{_libdir}/%{name}/sql_mysql
%{_libdir}/%{name}/sql_mysql/libmatreshka-sql-mysql-%{rtl_version}.so.%{ver}
%{_libdir}/libmatreshka-sql-mysql-%{rtl_version}.so.%{ver}

%files sql-mysql-devel
%{_includedir}/%{name}/sql_mysql
%{_libdir}/%{name}/sql_mysql/libmatreshka-sql-mysql-%{rtl_version}.so
%{_libdir}/%{name}/sql_mysql/libmatreshka-sql-mysql-%{rtl_version}.so.%{major}
%{_libdir}/libmatreshka-sql-mysql-%{rtl_version}.so
%{_libdir}/libmatreshka-sql-mysql-%{rtl_version}.so.%{major}
%{_libdir}/%{name}/sql_mysql/*.ali
%{_gprdir}/%{name}_sql_mysql.gpr
%{_gprdir}/manifests/sql_mysql

%files xml
%dir %{_libdir}/%{name}/xml/
%{_libdir}/%{name}/xml/libmatreshka-xml-%{rtl_version}.so.%{ver}
%{_libdir}/libmatreshka-xml-%{rtl_version}.so.%{ver}

%files xml-devel
%{_includedir}/%{name}/xml
%{_libdir}/%{name}/xml/libmatreshka-xml-%{rtl_version}.so
%{_libdir}/%{name}/xml/libmatreshka-xml-%{rtl_version}.so.%{major}
%{_libdir}/libmatreshka-xml-%{rtl_version}.so
%{_libdir}/libmatreshka-xml-%{rtl_version}.so.%{major}
%{_libdir}/%{name}/xml/*.ali
%{_gprdir}/%{name}_xml.gpr
%{_gprdir}/manifests/xml

%if %{with_amf}
%files amf
%dir %{_libdir}/%{name}/sql_amf
%{_libdir}/%{name}/sql_amf/libmatreshka-amf-%{rtl_version}.so.%{ver}
%{_libdir}/libmatreshka-amf-%{rtl_version}.so.%{ver}
%{_datadir}/%{name}/amf

%files amf-devel
%{_includedir}/%{name}/sql_amf
%{_libdir}/%{name}/sql_amf/libmatreshka-amf-%{rtl_version}.so
%{_libdir}/%{name}/sql_amf/libmatreshka-amf-%{rtl_version}.so.%{major}
%{_libdir}/libmatreshka-amf-%{rtl_version}.so
%{_libdir}/libmatreshka-amf-%{rtl_version}.so.%{major}
%{_libdir}/%{name}/sql_amf/*.ali
%{_gprdir}/%{name}_amf.gpr
%{_gprdir}/manifests/sql_amf

%files amf-dd
%dir %{_libdir}/%{name}/sql_amf_dd
%{_libdir}/%{name}/sql_amf_dd/libmatreshka-amf-dd-%{rtl_version}.so.%{ver}
%{_libdir}/libmatreshka-amf-dd-%{rtl_version}.so.%{ver}

%files amf-dd-devel
%{_includedir}/%{name}/sql_amf_dd
%{_libdir}/%{name}/sql_amf_dd/libmatreshka-amf-dd-%{rtl_version}.so
%{_libdir}/%{name}/sql_amf_dd/libmatreshka-amf-dd-%{rtl_version}.so.%{major}
%{_libdir}/libmatreshka-amf-dd-%{rtl_version}.so
%{_libdir}/libmatreshka-amf-dd-%{rtl_version}.so.%{major}
%{_libdir}/%{name}/sql_amf_dd/*ali
%{_gprdir}/%{name}_amf_dd.gpr
%{_gprdir}/manifests/sql_amf_dd

%files amf-uml
%dir %{_libdir}/%{name}/sql_amf_uml
%{_libdir}/%{name}/sql_amf_uml/libmatreshka-amf-uml-%{rtl_version}.so.%{ver}
%{_libdir}/libmatreshka-amf-uml-%{rtl_version}.so.%{ver}

%files amf-uml-devel
%{_libdir}/%{name}/sql_amf_uml/libmatreshka-amf-uml-%{rtl_version}.so
%{_libdir}/%{name}/sql_amf_uml/libmatreshka-amf-uml-%{rtl_version}.so.%{major}
%{_libdir}/libmatreshka-amf-uml-%{rtl_version}.so
%{_libdir}/libmatreshka-amf-uml-%{rtl_version}.so.%{major}
%{_libdir}/%{name}/sql_amf_uml/*.ali
%{_includedir}/%{name}/sql_amf_uml
%{_gprdir}/%{name}_amf_uml.gpr
%{_gprdir}/manifests/sql_amf_uml

%files amf-utp
%dir %{_libdir}/%{name}/sql_amf_utp/
%{_libdir}/%{name}/sql_amf_utp/libmatreshka-amf-utp-%{rtl_version}.so.%{ver}
%{_libdir}/libmatreshka-amf-utp-%{rtl_version}.so.%{ver}

%files amf-utp-devel
%{_includedir}/%{name}/sql_amf_utp
%{_libdir}/%{name}/sql_amf_utp/libmatreshka-amf-utp-%{rtl_version}.so
%{_libdir}/%{name}/sql_amf_utp/libmatreshka-amf-utp-%{rtl_version}.so.%{major}
%{_libdir}/libmatreshka-amf-utp-%{rtl_version}.so
%{_libdir}/libmatreshka-amf-utp-%{rtl_version}.so.%{major}
%{_libdir}/%{name}/sql_amf_utp/*.ali
%{_gprdir}/%{name}_amf_utp.gpr
%{_gprdir}/manifests/sql_amf_utp

%files amf-ocl
%dir %{_libdir}/%{name}/sql_amf_ocl
%{_libdir}/%{name}/sql_amf_ocl/libmatreshka-amf-ocl-%{rtl_version}.so.%{ver}
%{_libdir}/libmatreshka-amf-ocl-%{rtl_version}.so.%{ver}

%files amf-ocl-devel 
%{_includedir}/%{name}/sql_amf_ocl
%{_libdir}/%{name}/sql_amf_ocl/libmatreshka-amf-ocl-%{rtl_version}.so
%{_libdir}/%{name}/sql_amf_ocl/libmatreshka-amf-ocl-%{rtl_version}.so.%{major}
%{_libdir}/libmatreshka-amf-ocl-%{rtl_version}.so
%{_libdir}/libmatreshka-amf-ocl-%{rtl_version}.so.%{major}
%{_libdir}/%{name}/sql_amf_ocl/*.ali
%{_gprdir}/%{name}_amf_ocl.gpr
%{_gprdir}/manifests/sql_amf_ocl

%files amf-mofext
%dir %{_libdir}/%{name}/sql_amf_mofext/
%{_libdir}/%{name}/sql_amf_mofext/libmatreshka-amf-mofext-%{rtl_version}.so.%{ver}
%{_libdir}/libmatreshka-amf-mofext-%{rtl_version}.so.%{ver}

%files amf-mofext-devel 
%{_includedir}/%{name}/sql_amf_mofext
%{_libdir}/%{name}/sql_amf_mofext/libmatreshka-amf-mofext-%{rtl_version}.so
%{_libdir}/%{name}/sql_amf_mofext/libmatreshka-amf-mofext-%{rtl_version}.so.%{major}
%{_libdir}/libmatreshka-amf-mofext-%{rtl_version}.so
%{_libdir}/libmatreshka-amf-mofext-%{rtl_version}.so.%{major}
%{_libdir}/%{name}/sql_amf_mofext/*.ali
%{_gprdir}/%{name}_amf_mofext.gpr
%{_gprdir}/manifests/sql_amf_mofext
%endif

%files spikedog-api-devel
%{_includedir}/%{name}/spikedog_api
%{_libdir}/%{name}/spikedog_api/libspikedog-api-%{rtl_version}.so
%{_libdir}/%{name}/spikedog_api/libspikedog-api-%{rtl_version}.so.%{major}
%{_libdir}/libspikedog-api-%{rtl_version}.so
%{_libdir}/libspikedog-api-%{rtl_version}.so.%{major}
%{_libdir}/%{name}/spikedog_api/*.ali
%{_gprdir}/%{name}_spikedog_api.gpr
%{_gprdir}/manifests/spikedog_api

%files spikedog-api-lib
%dir %{_libdir}/%{name}/spikedog_api
%{_libdir}/%{name}/spikedog_api/libspikedog-api-%{rtl_version}.so.%{ver}
%{_libdir}/libspikedog-api-%{rtl_version}.so.%{ver}

%files spikedog-core-devel 
%{_includedir}/%{name}/spikedog_core
%{_libdir}/%{name}/spikedog_core/libspikedog-core-%{rtl_version}.so
%{_libdir}/%{name}/spikedog_core/libspikedog-core-%{rtl_version}.so.%{major}
%{_libdir}/libspikedog-core-%{rtl_version}.so
%{_libdir}/libspikedog-core-%{rtl_version}.so.%{major}
%{_libdir}/%{name}/spikedog_core/*.ali
%{_gprdir}/%{name}_spikedog_core.gpr
%{_gprdir}/manifests/spikedog_core

%files spikedog-core-lib
%dir %{_libdir}/%{name}/spikedog_core/
%{_libdir}/%{name}/spikedog_core/libspikedog-core-%{rtl_version}.so.%{ver}
%{_libdir}/libspikedog-core-%{rtl_version}.so.%{ver}

%files spikedog-awsd-devel
%{_includedir}/%{name}/spikedog_aws
%{_libdir}/%{name}/spikedog_aws/libspikedog-aws-%{rtl_version}.so
%{_libdir}/%{name}/spikedog_aws/libspikedog-aws-%{rtl_version}.so.%{major}
%{_libdir}/libspikedog-aws-%{rtl_version}.so
%{_libdir}/libspikedog-aws-%{rtl_version}.so.%{major}
%{_libdir}/%{name}/spikedog_aws/*.ali
%{_gprdir}/%{name}_spikedog_core.gpr
%{_gprdir}/manifests/spikedog_core
%{_gprdir}/%{name}_spikedog_aws.gpr
%{_gprdir}/manifests/spikedog_aws

%files spikedog-awsd
%{_bindir}/spikedog_awsd
%{_libdir}/%{name}/spikedog_aws/libspikedog-aws-%{rtl_version}.so.%{ver}
%{_libdir}/libspikedog-aws-%{rtl_version}.so.%{ver}

%files servlet-devel
%{_includedir}/%{name}/servlet
%{_libdir}/%{name}/servlet/libmatreshka-servlet-%{rtl_version}.so
%{_libdir}/%{name}/servlet/libmatreshka-servlet-%{rtl_version}.so.%{major}
%{_libdir}/libmatreshka-servlet-%{rtl_version}.so
%{_libdir}/libmatreshka-servlet-%{rtl_version}.so.%{major}
%{_libdir}/%{name}/servlet/*.ali
%{_gprdir}/%{name}_servlet.gpr
%{_gprdir}/manifests/servlet

%files servlet-lib
%dir %{_libdir}/%{name}/servlet/
%{_libdir}/%{name}/servlet/libmatreshka-servlet-%{rtl_version}.so.%{ver}
%{_libdir}/libmatreshka-servlet-%{rtl_version}.so.%{ver}

%changelog
* Sun Jun 27 2021 Maxim Reznik <reznikmm@gmail.com> - 20.0-2
- Drop a2js package

* Sat Jul 18 2020 Maxim Reznik <reznikmm@gmail.com> - 20.0-1
- Update to 20.0 version

* Sat Oct 20 2018 Maxim Reznik <reznikmm@gmail.com> - 19.0-1
- Update to 19.0 version

* Sat Jan 20 2018 Maxim Reznik <reznikmm@gmail.com> - 0.8.0-11
- Add package for a2js

* Thu Aug  3 2017 Pavel Zhukov <pzhukov@redhat.com> - 0.8.0-10.20170302svn
- Don't overwrite HAS_VALGRIND

* Thu Aug 03 2017 Fedora Release Engineering <releng@fedoraproject.org> - 0.8.0-9.20170302svn
- Rebuilt for https://fedoraproject.org/wiki/Fedora_27_Binutils_Mass_Rebuild

* Wed Jul 26 2017 Fedora Release Engineering <releng@fedoraproject.org> - 0.8.0-8.20170302svn
- Rebuilt for https://fedoraproject.org/wiki/Fedora_27_Mass_Rebuild

* Sat Jul 15 2017  Pavel Zhukov <landgraf@fedoraproject.org> - 0.8.0-7.20170302svn
- Disable i686

* Fri Mar 17 2017 Pavel Zhukov <landgraf@fedoraproject.org> - 0.8.0-6.20170302svn
- Fix patch invocation for uaflex

* Fri Mar  3 2017 Pavel Zhukov <landgraf@fedoraproject.org> - 0.8.0-5.20170302svn
- Pre-release version from svn
- Disable tests on ppc64le http://forge.ada-ru.org/adaforge/ticket/2#comment:1

* Fri Feb 10 2017 Fedora Release Engineering <releng@fedoraproject.org> - 0.7.0-6
- Rebuilt for https://fedoraproject.org/wiki/Fedora_26_Mass_Rebuild

* Tue Feb 02 2016 Björn Persson <Bjorn@Rombobjörn.se> - 0.7.0-5
- Rebuilt with GCC 6 prerelease.

* Tue Sep 01 2015 Kalev Lember <klember@redhat.com> - 0.7.0-4
- Fix broken matreshka-servlet-api dependencies

* Tue Sep 01 2015 Kalev Lember <klember@redhat.com> - 0.7.0-3
- Fix typos in _isa macro use

* Wed Jun 17 2015 Fedora Release Engineering <rel-eng@lists.fedoraproject.org> - 0.7.0-2
- Rebuilt for https://fedoraproject.org/wiki/Fedora_23_Mass_Rebuild

* Sat May 02 2015 Björn Persson <bjorn@rombobjörn.se> - 0.6.0-10
- Patched to build with GCC 5.

* Wed Apr 29 2015 Peter Robinson <pbrobinson@fedoraproject.org> 0.6.0-8
- rebuild (gcc / gnat 5)

* Sun Mar 29 2015 Pavel Zhukov <landgraf@fedoraproject.org> - 0.6.0-7
- Rebuild with new libgnat

* Sat Oct 11 2014 Pavel Zhukov <landgraf@fedoraproject.org> - 0.6.0-6
- Remove arm from supported arches 

* Sun Aug 17 2014 Fedora Release Engineering <rel-eng@lists.fedoraproject.org> - 0.6.0-5
- Rebuilt for https://fedoraproject.org/wiki/Fedora_21_22_Mass_Rebuild

* Sat Jun 07 2014 Fedora Release Engineering <rel-eng@lists.fedoraproject.org> - 0.6.0-4
- Rebuilt for https://fedoraproject.org/wiki/Fedora_21_Mass_Rebuild

* Sat May 17 2014 Peter Robinson <pbrobinson@fedoraproject.org> 0.6.0-3
- Use GNAT_arches rather than an explicit list

* Wed May  7 2014 Pavel Zhukov <landgraf@fedoraproject.org> - 0.6.0-2
- Rebuild with new libgnat

* Sun Dec 08 2013 Pavel Zhukov <landgraf@fedoraproject.org> - 0.5.1-2
- Add fedora build flags (#1039357)

* Thu Sep 19 2013 Pavel Zhukov <landgraf@fedoraproject.org> - 0.5.1-1
- Bugfix release 0.5.1

* Wed Sep 18 2013 Pavel Zhukov <landgraf@fedoraproject.org> - 0.5.0-3
- add valgrind suppressions 
- fix parallel make

* Tue Sep 17 2013 Pavel Zhukov <landgraf@fedoraproject.org> - 0.5.0-1
- update to 0.5.0

* Sat Aug 03 2013 Fedora Release Engineering <rel-eng@lists.fedoraproject.org> - 0.4.0-2
- Rebuilt for https://fedoraproject.org/wiki/Fedora_20_Mass_Rebuild

* Thu Apr 25 2013 Tom Callaway <spot@fedoraproject.org> - 0.4.0-1
- update to 0.4.0

* Tue Feb 12 2013 Pavel Zhukov <landgraf@fedoraproject.org> - 0.3.0-4
- Revuild with new libgnat 4.8

* Mon Dec 10 2012 Pavel Zhukov <landgraf@fedoraproject.org> - 0.3.0-3
- Add valgrind to BR (nedded for tests)

* Sun Sep 30 2012 Pavel Zhukov <landgraf@fedoraproject.org> - 0.3.0-2
- Add gpr patch

* Mon Sep 24 2012 Pavel Zhukov <landgraf@fedoraproject.org> - 0.3.0-1
- Release 0.3.0

* Tue Apr 3 2012 Pavel Zhukov <landgraf@fedoraproject.org> - 0.2.0-5
- Fix projects names

* Sat Mar 24 2012 Pavel Zhukov <landgraf@fedoraproject.org> - 0.2.0-3
- Update to 0.2.0
- Fix filelist
- Add files list

* Wed Aug 31 2011 Pavel Zhukov <landgraf@fedoraproject.org> - 0.1.1-9
- fix BR, ExcludeArch 

* Sat Aug 27 2011 Pavel Zhukov <landgraf@fedoraproject.org> - 0.1.1-8
- Fix Architectures in gpr

* Wed Aug 17 2011 Pavel Zhukov <landgraf@fedoraproject.org> - 0.1.1-6
- Add gpr patch
- Remove unuseable code
- Add optflags to check
- Fix LD_LIBRARY_PATH in tests 

* Wed Jul 06 2011 Pavel Zhukov <landgraf@fedoraproject.org> - 0.1.1-1
- Update to upstream release

* Tue May 24 2011 Pavel Zhukov <landgraf@fedoraproject.org> - 0.1.0-1
- Update to upstream release

* Mon Apr 25 2011 Pavel Zhukov <landgraf@fedoraproject.org> - 0.1.0-3.20110326svn
- fix spec errors
- move gpr files to %%{_GNAT_project_dir}/%%{name}

* Sat Mar 26 2011 Pavel Zhukov <landgraf@fedoraproject.org> - 0.1.0-20110326svn
- update to upstream svn trunk

* Sat Feb 5 2011 Pavel Zhukov <pavel@zhukoff.net> - 0.0.7-1
- Initial package
