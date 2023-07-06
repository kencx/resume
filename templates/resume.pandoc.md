# $name$ {.title}

:::{.no-print .downloads}
This resume was generated with pandoc, download it as DOC or PDF
:::

:::{.contact}
[$email$](mailto:$email$) •
$phone$ •
[$linkedin$](https://linkedin/in/$linkedin$) •
[$github$](https://github.com/$github$)
:::

## Experience

$for(experience)$
:::{.list-table aligns=l,r header-rows=0}
   * - **$experience.title$**
     - **$experience.company$**

   * - *$experience.position$*
     - *$experience.date$*

   * - []{colspan=2}
   <ul>
$for(experience.description)$
     <li>$experience.description$</li>
$endfor$
   </ul>
:::
$endfor$

## Education

$for(education)$
:::{.list-table aligns=l,r header-rows=0}
   * - **$education.institution$**
     - **$education.country$**

   * - *$education.programme$*
     - *$education.date$*

   * - []{colspan=2}
   <ul>
$for(education.description)$
     <li>$education.description$</li>
$endfor$
   </ul>
:::
$endfor$

## Extra-Curricular

$for(extra-curricular)$
:::{.list-table aligns=l,r header-rows=0}
   * - **$extra-curricular.title$**
     - **$extra-curricular.country$**

   * - *$extra-curricular.position$*
     - *$extra-curricular.date$*

   * - []{colspan=2}
   <ul>
$for(extra-curricular.description)$
     <li>$extra-curricular.description$</li>
$endfor$
   </ul>
:::
$endfor$

## Technical Skills

:::{.skills}
* Software: Python, Java, Linux
* Tools: Git, Docker, Ansible, Terraform
:::

## Interests
