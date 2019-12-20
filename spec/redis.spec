name        : redis-mysql-sentinel
Version     : 4.0.14
Release     : 1.el7
Summary     : Rewrite redis sentinel for mysql by redis 4.0.14
URL         : http://git.dev.sh.ctripcorp.com/ops-mysql/redis-mysql-sentinel
Source      : redis-mysql-sentinel.tgz
BuildArch   : x86_64
License     : BSD
BuildRoot   : %{_tmppath}/%{name}-%{version}-%{release}-root
Packager    : zhangyanjun@ctrip.com
AutoReq     : no

%description
set is not volatile, and values can be strings, exactly like in memcached, but
also lists, sets, and ordered sets. All this data types can be manipulated with
atomic operations to push/pop elements, add/remove elements, perform server side
union, intersection, difference between sets, and so forth. Redis supports
different kind of sorting abilities.

%prep

%setup -q

%build
make

%install
make PREFIX=$RPM_BUILD_ROOT/usr/local install
mkdir -p $RPM_BUILD_ROOT/var/lib/sentinel/
cp $RPM_BUILD_DIR/%{name}-%{version}/etc/sentinel.conf $RPM_BUILD_ROOT/var/lib/sentinel/

%clean
[ "$RPM_BUILD_ROOT" != "/" ] && rm -rf $RPM_BUILD_ROOT
rm -rf $RPM_BUILD_DIR/%{name}-%{version}

%post

%pre

%preun

%files
%defattr(-,op1,op1)
/usr/local/bin/redis-benchmark
/usr/local/bin/redis-check-aof
/usr/local/bin/redis-check-rdb
/usr/local/bin/redis-cli
/usr/local/bin/redis-sentinel
/usr/local/bin/redis-server
/var/lib/sentinel
