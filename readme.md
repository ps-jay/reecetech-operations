# reecetech operations presentation

This presentation is for the Monash IBL Faculty of IT students.

It covers the basics of DevOps, mainly drawing content from The DevOps handbook,
and talks about how reecetech has applied those pricipals and practices.

This presentation uses the Go programming language `present` library.

Build the Dockerfile and run the presentation server like so:

```
docker build -t preso .
docker run -it --rm -p 3999:3999 preso
```

Original presentation in April 2021 by
[Daniel Barrett](https://github.com/dandandy/reecetech-operations)
