%define _gprdir %_GNAT_project_dir
Name:       matreshka
Version:    0.5.0
Release:    3%{?dist}
Summary:    Set of Ada libraries to help to develop information systems
Group:      System Environment/Libraries
License:    BSD
URL:        http://adaforge.qtada.com/cgi-bin/tracker.fcgi/matreshka
Source0:    http://adaforge.qtada.com/cgi-bin/tracker.fcgi/matreshka/downloader/download/file/13/%{name}-%{version}.tar.gz  
## fedora specific
Patch1:          %{name}-%{version}_gprnames.patch
## fedora has stable release ABI. so we haven't to specify RTL
Patch4:          %{name}-%{version}_gpr.patch
## http://forge.ada-ru.org/matreshka/changeset/4090
Patch2:          %{name}-%{version}_parallel-build.patch
Patch3:         %{name}-%{version}_valgrind-suppressions.patch
BuildRequires:   gcc-gnat
BuildRequires:   fedora-gnat-project-common  >= 3 
BuildRequires:   chrpath
BuildRequires:   gprbuild valgrind
BuildRequires:   postgresql-devel sqlite-devel

# gcc-gnat only available on these:
ExclusiveArch: %{ix86} x86_64 ia64 ppc ppc64 alpha

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

%prep
%setup -q 
%patch1 -p1 -b .names
%patch2 -p1 
%patch3 -p1 
cd gnat/install && for i in `ls *.gpr` ; do mv $i matreshka_$i ; done
cd - 
%patch4 -p1 -b .gprfix

%build
###export GPRBUILD_FLAGS="%{GPRbuild_optflags}"
export GPRBUILD_FLAGS="%Gnatmake_optflags"
make config 
%configure
##make -j1
make  %{?_smp_mflags}

%check 
## find libs without RPATH, Fedora specific
export LD_LIBRARY_PATH="%{buildroot}/%{_libdir}/:$LD_LIBRARY_PATH"
make %{?_smp_mflags} GNAT_OPTFLAGS="%{GNAT_optflags}" check

%install
rm -rf %{buildroot}
make install DESTDIR=%{buildroot} INSTALL_LIBRARY_DIR=%{buildroot}/%{_libdir} PREFIX=%{_prefix} INSTALL_PROJECT_DIR="%{buildroot}/%{_GNAT_project_dir}"
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

%files -f .objs/league-lib.files
%doc CONTRIBUTORS  LICENSE

%files devel -f .objs/league-devel.files
%doc README

%files fastcgi -f .objs/fastcgi-lib.files

%files fastcgi-devel -f .objs/fastcgi-devel.files

%files soap-core -f .objs/soap-lib.files
%{_bindir}/wsdl2ada

%files soap-core-devel -f .objs/soap-devel.files

%files soap-wsse -f .objs/soap_wsse-lib.files

%files soap-wsse-devel -f .objs/soap_wsse-devel.files

%files sql-core -f .objs/sql-lib.files

%files sql-core-devel -f .objs/sql-devel.files

%files sql-sqlite -f .objs/sql_sqlite3-lib.files

%files sql-sqlite-devel -f .objs/sql_sqlite3-devel.files

%files sql-postgresql -f .objs/sql_postgresql-lib.files

%files sql-postgresql-devel -f .objs/sql_postgresql-devel.files

%files xml -f .objs/xml-lib.files

%files xml-devel -f .objs/xml-devel.files

%files amf -f .objs/amf-lib.files

%files amf-devel -f .objs/amf-devel.files

%files amf-dd -f .objs/amf_dd-lib.files

%files amf-dd-devel -f .objs/amf_dd-devel.files

%files amf-uml -f .objs/amf_uml-lib.files

%files amf-uml-devel -f .objs/amf_uml-devel.files

%files amf-utp -f .objs/amf_utp-lib.files

%files amf-utp-devel -f .objs/amf_utp-devel.files

%files amf-ocl -f .objs/amf_ocl-lib.files

%files amf-ocl-devel -f .objs/amf_ocl-devel.files

%files amf-mofext -f .objs/amf_mofext-lib.files

%files amf-mofext-devel -f .objs/amf_mofext-devel.files

%changelog
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

* Sun Mar 24 2012 Pavel Zhukov <landgraf@fedoraproject.org> - 0.2.0-3
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
