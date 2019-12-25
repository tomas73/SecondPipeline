pipeline {
	 agent none
         stages	{
                 stage('Build') {
		 	 	agent { label 'pul' }
                 		steps {
                     		      sh 'make host'
				      sh '. /opt/poky/2.6-bbb/environment-setup-cortexa8hf-neon-poky-linux-gnueabi ; make target'
				      stash includes: 'hello.host', name: 'hello-host'
                 		      }
				 }
		stage('RunHost') {
			 	agent { label 'master' }
			     steps {
			     unstash 'hello-host'
			     sh './hello.host'
			     }
		}
		stage('Deliver') {
		 	 	agent { label 'pul' }
			steps {
			sh 'cp hello.* /tmp'
			}
		}
		}
	}
		