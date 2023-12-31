# Plan Jira Play Ground - plan-jpg
This allows Product Owners and Scrum teams to build Jira plans quickly..

Have you ever waisted time within a refinement session, watching your team lead or product owner 
fight with Jira! Sitting there watching them move, edit and rework the Sprint plan?

No longer, plan-jpg takes the effort out of producing the tickets by allowing a simple set 
of yaml files to create, edit and delete Jira tickets in seconds!

## Requirements
The following system requirements are needed

* Terraform
* GoTPL
* VsCode or CLI understanding

## HOW-TO
Edit the gottpl/values.yml file and add as many stories as you like. 
Copy examples from the "templates" folder to help guide your stories. 

Review and edit with the team during refinements, then onces you're ready to commit 
your plan to Jira, run the following.#

Produce the Output file. 

```
cd gottpl
gotpl template.tpl -f values.yml | out-file -encoding ASCII ../output.tf
```

Apply the output file to Jira

```
cd ../
terraform apply --auto-approve
```

