## Ansible
    
    # Ansible Solve
        
        *  Imperative replacing with Declarative .
        *  Simple declarative supports heterogeneous os.
        *  Parallel operations are possible.
        *  Code need not to be on the server.

    # Inventory

        * We can keep either ip address or hostname.
        * Grouping can be done either individual files based on environment or based on component and even 
          together and that always depeneds upon the architecture design that project had.
        * In environment like a cloud where the nodes are too dynamic and where your ip addresses always 
          change  frequently, we need to work on some dynamic inventroy managenment.

        vim /tmp/inv add private address on nodes server

    #  Ansible Connections
        
        * Ansible user ssh credentials in the background.  

        * commands:- 

            ansible -i /tmp/inv all -e  ansible_user=centos -e ansible_password=DevOps321 -m ansible.builtin.ping

            [frontend]

            172.31.57.10

            ansible -i /tmp/inv frontend -e  ansible_user=centos -e ansible_password=DevOps321 -m ansible.builtin.ping



    # Ansible Push

    # Ansible Modules (collections)

    # Problem of Ansible Ad-Hoc

        * Multiple tasks
        * Logical Limtations

    # Introduction to Ansible Playbook

    # https://docs.ansible.com/ansible/latest/inventory_guide/intro_inventory.html
    
    # https://docs.ansible.com/ansible/latest/getting_started/get_started_inventory.html

    # https://docs.ansible.com/ansible/latest/collections/ansible/builtin/debug_module.html


        * Playbook 
            
            *   Markup language will help in sharing the information b/w system. That been extended the sharing of 

                info from user to system . (xml, json, yaml)

        * Any Markup Language

            * Key-value - Plain
            * Key-Multiple Values - List
            * Key-Key-Value - Map

        * YAML File Extension

            * .ymal
            * .yml

        * Ansible Playbook

            * Playbook has multiple plays.
            
            * Playbook file itself is a list.

            * Playbook book should have at least one play.

            * Playbook must have information about the inventory group.(hosts)

            * It should have the information that it should load tasks or roles.

            * In general, We provide an optional key name to denote the purpose of the play & task.

            * In example above debug is a module .msg is a parameter from debug module.
