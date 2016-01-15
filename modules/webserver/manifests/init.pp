class webserver { 

 package { 'httpd':
   ensure => installed,
 }
  file { 'www1.conf':
        path => '/etc/httpd/conf.d/www1.conf',
        ensure =>  file,
        require =>  [Package['httpd'], File['www1.index']],
        source => "puppet:///modules/webserver/www1.conf",
    } 
 file { 'www1.index':
        path => '/var/www/www1/index.html',
        ensure => file,
        require => file['www1.docroot'],
        source => "puppet:///modules/webserver/index1.html",
      #  require => Package['httpd'],
    }
 
  file { 'www1.docroot':
        path => '/var/www/www1',
        ensure => directory,
    }



 file { 'www2.conf':
        path => '/etc/httpd/conf.d/www2.conf',
        ensure => file,
        require => [Package['httpd'], File['www2.index']],
        source => "puppet:///modules/webserver/www2.conf",
    }
 file { 'www2.index':
        path => '/var/www/www2/index.html',
        ensure => file,
        require => File['www2.docroot'],
        source => "puppet:///modules/webserver/index2.html",
    }

  file { 'www2.docroot':
        path => '/var/www/www2',
        ensure => directory,
    }

} 
