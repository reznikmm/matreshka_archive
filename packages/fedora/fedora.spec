## rpmbuild cannot create debuginfo
%define debug_package %{nil}
Name:       matreshka
Version:    0.1.0
Release:    2%{?dist}
Summary:    Set of Ada libraries to help to develop information systems
Group:      System Environment/Libraries
License:    BSD
URL:        http://adaforge.qtada.com/cgi-bin/tracker.fcgi/matreshka
Source0:    http://adaforge.qtada.com/cgi-bin/tracker.fcgi/matreshka/downloader/download/file/11/matreshka-0.1.0.tar.gz  
## fedora specific
Patch0:          %%{name}-directories.patch
Patch1:          %{name}-gprbuild.patch
Patch2:          matreshka-gnatflags.patch
BuildRequires:   fedora-gnat-project-common  >= 2
BuildRequires:   chrpath
BuildRequires:   gprbuild
BuildRequires:   mysql-devel postgresql-devel sqlite-devel
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
Summary:    SQLite bindings for Ada
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

%prep
%setup -q 
###%%%patch0 -p1
%patch1 -p1
%patch2 -p1

%build
## export GPRBUILD_FLAGS=$(echo %{GNAT_optflags} | sed 's/-O2//g')
make %{?_smp_mflags} GPRBUILD_FLAGS="%{GNAT_optflags}"

%check 
make check

%install
rm -rf %{buildroot}
make install DESTDIR=%{buildroot} INSTALL_LIBRARY_DIR=%{buildroot}/%{_libdir} PREFIX=%{_prefix} INSTALL_PROJECT_DIR="%{buildroot}/%{_GNAT_project_dir}"
rm -rf .objs .libs
find %{buildroot}/%{_includedir} -type f -exec chmod -x {} \;
find %{buildroot}/%{_libdir} -type f -name "*.ali" -exec chmod -x {} \;
find %{buildroot}/%{_GNAT_project_dir} -type f -name "*.gpr" -exec chmod -x {} \;
## Delete rpath
chrpath --delete %{buildroot}%{_libdir}/lib*
## mv -f %{buildroot}%{_GNAT_project_dir}/*.gpr %{buildroot}%{_GNAT_project_dir}/%{name}/

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

%files
%defattr(-,root,root,-)
%doc AUTHORS LICENSE
%{_libdir}/libleague.so.0.1.0

%files devel
%defattr(-,root,root,-)
%doc README
%dir %{_libdir}/%{name}
%dir %{_includedir}/%{name}
%{_includedir}/%{name}/league
%{_libdir}/libleague.so
%{_libdir}/%{name}/xml*
%{_libdir}/%{name}/league*
%{_libdir}/%{name}/%{name}-internals-strings*
%{_libdir}/%{name}/%{name}-internals-text*
%{_libdir}/%{name}/%{name}-internals-translator*
%{_libdir}/%{name}/%{name}-internals-unicode*
%{_libdir}/%{name}/%{name}-internals-uri_utilities.ali
%{_libdir}/%{name}/%{name}-internals-utf16.ali
%{_libdir}/%{name}/%{name}-internals-xml*
%{_libdir}/%{name}/%{name}-internals.ali
%{_libdir}/%{name}/%{name}.ali
%{_libdir}/%{name}/%{name}-internals-regexps*
%{_libdir}/%{name}/%{name}-internals-settings*
%{_libdir}/%{name}/%{name}-internals-simd*
%{_libdir}/%{name}/%{name}-internals-calendar*
%{_libdir}/%{name}/%{name}-internals-atomics*
%{_libdir}/%{name}/%{name}-internals-host_types.ali
%{_libdir}/%{name}/%{name}-internals-locales.ali
%{_libdir}/%{name}/%{name}-internals-stream_element_vectors.ali
%{_libdir}/%{name}/%{name}-internals-string_vectors.ali
%{_GNAT_project_dir}/matreshka_league.gpr
%{_GNAT_project_dir}/%{name}/config.gpr


%files fastcgi
%defattr(-,root,root,-)
%doc
%{_libdir}/lib%{name}-fastcgi.so.0.1.0

%files fastcgi-devel
%defattr(-,root,root,-)
%doc
%{_libdir}/lib%{name}-fastcgi.so
%{_includedir}/matreshka/fastcgi/
%{_libdir}/%{name}/%{name}-fastcgi*
%{_libdir}/%{name}/fastcgi*
%{_GNAT_project_dir}/matreshka_fastcgi.gpr

%files sql-core
%defattr(-,root,root,-)
%doc
%{_libdir}/lib%{name}-sql.so.0.1.0

%files sql-core-devel
%defattr(-,root,root,-)
%doc
%{_libdir}/lib%{name}-sql.so
%{_includedir}/%{name}/sql*
%{_libdir}/%{name}/sql-databases-internals.ali
%{_libdir}/%{name}/sql-databases.ali
%{_libdir}/%{name}/sql-queries-internals.ali
%{_libdir}/%{name}/sql-queries.ali
%{_libdir}/%{name}/sql.ali
%{_libdir}/%{name}/%{name}-internals-sql_parameter*
%{_libdir}/%{name}/%{name}-internals-sql_drivers-dummy.ali
%{_libdir}/%{name}/%{name}-internals-sql_drivers.ali
%{_GNAT_project_dir}/matreshka_sql.gpr


%files sql-sqlite
%defattr(-,root,root,-)
%doc
%{_libdir}/lib%{name}-sql-sqlite3.so.0.1.0

%files sql-sqlite-devel
%defattr(-,root,root,-)
%doc
%{_libdir}/lib%{name}-sql-sqlite3.so
%{_libdir}/%{name}/%{name}-internals-sql_drivers-sqlite3*
%{_GNAT_project_dir}/matreshka_sql_sqlite3.gpr


%files sql-postgresql
%defattr(-,root,root,-)
%doc
%{_libdir}/lib%{name}-sql-postgresql.so.0.1.0

%files sql-postgresql-devel
%defattr(-,root,root,-)
%doc
%{_libdir}/lib%{name}-sql-postgresql.so
%{_libdir}/%{name}/%{name}-internals-sql_drivers-postgresql*
%{_GNAT_project_dir}/matreshka_sql_postgresql.gpr

%changelog
* Tue May 24 2011 Pavel Zhukov <landgraf@fedoraproject.org> - 0.1.0-1
- Update to upstream release

* Mon Apr 25 2011 Pavel Zhukov <landgraf@fedoraproject.org> - 0.1.0-3.20110326svn
- fix spec errors
- move gpr files to %%{_GNAT_project_dir}/%%{name}

* Sat Mar 26 2011 Pavel Zhukov <landgraf@fedoraproject.org> - 0.1.0-20110326svn
- update to upstream svn trunk

* Sat Feb 5 2011 Pavel Zhukov <pavel@zhukoff.net> - 0.0.7-1
- Initial package
