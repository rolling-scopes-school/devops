# Helpful commands:

> `#!/bin/bash` - so-called [shebang](https://en.wikipedia.org/wiki/Shebang_(Unix))

# Task description:

1. Modify /scripts/user_conf.sh. It should not only read prompt from previous task, but also a format in range of json/xml/yaml  
  1.1 Now, being depended on chosen format, it should be able to create an XML file /scripts/user_conf.xml or YAML file /scripts/user_conf.yml that look like below  
  1.2 Indentation equals 2 whitespaces.
```xml
<user>
  <firstName>John</firstName>
  <lastName>Doe</lastName>
  <age>19</age>
</user>
```

```yaml
user:
  first-name: John
  last-name: Doe
  age: 19
```

2. **(Optional)** Modify /scripts/cards.sh:  
  2.1 Apply [Luhn Algorithm](https://en.wikipedia.org/wiki/Luhn_algorithm) to your validation.  
  2.2 It should print the same result, but this time it should check card number's validity using this algorithm.  
  2.3 Consider last digit as a checksum digit.