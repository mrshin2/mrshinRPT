node 'mrshin.linuxmaster.com'{
#include vim_upgrade
}

node /^vm[0-9]+\.linuxmaster\.com$/ { 	
# include vim_upgrade
# include sshd	
	}


node 'vm01.linuxmaster.com' {
	file{'/tmp/testserver':
		content =>"This is a test server for git .\n ",
		}
	include sshd
	include vim_upgrade
}
