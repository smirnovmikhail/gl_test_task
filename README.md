Please find chef task #1 below.

#1
- Bring up vagrant machine with OS Centos 6.x with installed chef-client
- Create user/group "devops".
- Put file /opt/hello, with content "Hello DevOps!" with permissions to r/w for above user and group.

Expected Result: 
- git repository at github.com with Chef cookbook and Vagrantfile that's can be cloned and used Vagrant to bring up machine with expected settings.
- Code should pass cookstyle syntax check with 0 erorrs and warnings.

Notes:
- Use same source OS images as test-kitchen uses.
- Use Berkshelf to create cookbook skeleton.
- Get to know how to and use cookstyle to check code syntax.
- Use chef-solo provisioner.
- Put answers to check-questions into repository's Readme, in Q/A form, use tables whenever needed. 

Check questions:
- What is cookstyle?
- What is Berkshelf?
- Berkshelf commands to:
   - Create cookbook
- What is Vagrant?
- What's Vagrant providers and provisioners?
- What Vagrant comands to:
   - run machine.
   - cleanup vagrant workspace ( reset space to blank )
   - reprovision already running machine.
- What is project name that's supports images for test kitchen
- What's Chef resource?
- What's Chef resource you're used in your cookbook.
- How much time it takes to:
    - bring machine up for the first time.
    - Re-provision machine.
    - destroy machine.
- Explain, Why above times differ?

Links to read:
- https://www.vagrantup.com/docs/provisioning/
- http://berkshelf.com/
- https://learn.chef.io/
- https://docs.chef.io/resource.html
