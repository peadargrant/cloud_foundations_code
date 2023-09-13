(TeX-add-style-hook
 "ec2_linux_cli_notes"
 (lambda ()
   (add-to-list 'LaTeX-verbatim-environments-local "minted")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "pgnotes"
    "pgnotes10")
   (LaTeX-add-labels
    "creating-a-vpc"
    "vpc-creation"
    "subnet-creation"
    "internet-gateway"
    "route-tables"
    "security-groups"
    "sec:creating-security-group"
    "adding-ingress-rules"
    "egress-rules"
    "instance-setup"
    "available-image-names"
    "launching-by-name"
    "instance-information"
    "sec:connecting-to-instance"
    "sec:finding-instance-public-ip"
    "sec:connecting-to-instance-over-ssh"
    "ec2-instance-termination"))
 :latex)

