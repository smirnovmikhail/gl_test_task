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

#Check questions:

**Q: What is cookstyle?**

**A:** Most of the code that is authored when working with Chef is written as Ruby. Just about every file within a cookbook—with few exceptions!—is a Ruby file.

cookstyle is a linting tool based on RuboCop designed to address the following issues:

    * New releases of RuboCop typically contain new style rules. These often cause projects to fail style checks after the upgrade.
    * The default configuration for RuboCop enables many checks that are inappropriate for cookbook development.

cookstyle addresses these issues by:

    * Pinning to a specific version of RuboCop.
    * Replacing the default RuboCop configuration with one that is more appropriate for cookbook development.

When a new version of RuboCop is released, an automated process disables new style rules in the default configuration.


**Q: What is Berkshelf?**

**A:** Berkshelf is a dependency manager for certain cookbook workflows that is included in the Chef development kit.

**Q: Berkshelf commands to:**
   **- Create cookbook**

**A:**
```
 $ berks cookbook new_application

```

**Q: - What is Vagrant?**

**A:** Vagrant is an open-source software product for building and maintaining portable virtual development environments. The core idea behind its creation lies in the fact that the environment maintenance becomes increasingly difficult in a large project with multiple technical stacks. Vagrant manages all the necessary configurations for the developers in order to avoid the unnecessary maintenance and setup time, and increases development productivity.

**Q:- What's Vagrant providers and provisioners?**


*Provisioners* in Vagrant allow you to automatically install software, alter configurations, and more on the machine as part of the `vagrant up` process.

This is useful since boxes typically are not built perfectly for your use case. Using the provisioning systems built-in to Vagrant, it automates the process so that it is repeatable. Most importantly, it requires no human interaction, so you can vagrant destroy and vagrant up and have a fully ready-to-go work environment with a single command.


**A:**


**Q: - What Vagrant comands to:**
**- run machine.**
**A:**
```
vagrant up
```
**Q: - cleanup vagrant workspace ( reset space to blank )** 
**A:**
```
vagrant destroy
```
**Q: - reprovision already running machine.**
**A:**
``` 
vagrant reload --provision
```

**- What is project name that's supports images for test kitchen**

 Bento

**- What's Chef resource?**

**A:** resource is a statement of configuration policy that:

    Describes the desired state for a configuration item
    Declares the steps needed to bring that item to the desired state
    Specifies a resource type—such as package, template, or service
    Lists additional details (also known as resource properties), as necessary
    Are grouped into recipes, which describe working configurations

Where a resource represents a piece of the system (and its desired state), a provider defines the steps that are needed to bring that piece of the system from its current state into the desired state.

**- What's Chef resource you're used in your cookbook.**

user, group, file

**- How much time it takes to:**
    - bring machine up for the first time.
    - Re-provision machine.
    - destroy machine.
- Explain, Why above times differ?

Links to read:
- https://www.vagrantup.com/docs/provisioning/
- http://berkshelf.com/
- https://learn.chef.io/
- https://docs.chef.io/resource.html
