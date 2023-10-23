# Go Tpl 
This is used to build the Terraform Resources needed. 
Go Templates are are more powerful tool for creating rich text files.

## Build
Update your Plan by editing and adding plans files.

Then run the following to build the templates

```
gotpl template.tpl -f values.yml | out-file -encoding ASCII ../output.tf
```