class yum-repo {
   yumrepo { "rhel-6-server-optional-rpms":
      baseurl => "http://mirror.centos.org/centos/6/os/x86_64/",
      descr => "Red Hat Enterprise Linux 6 Server - Optional (RPMs)",
      enabled => 1,
      gpgcheck => 0
   }

}
