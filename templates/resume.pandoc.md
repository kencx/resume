# $name$ {.title}

:::{.no-print .downloads}
Download or print this page directly as PDF
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
   * - **$it.title$**
     - **$it.company$**

   * - *$it.position$*
     - *$it.date$*

   * - []{colspan=2}
   <ul>
$for(it.description)$
     <li>$it$</li>
$endfor$
   </ul>
:::
$endfor$

## Technical Skills

:::{.skills}
<ul>
$for(skills)$
<li>**$it.name$:**
    $if(it.keywords/allbutlast)$
        $for(it.keywords/allbutlast)$
            $it$,
        $endfor$
        $it.keywords/last$
    $else$
        $it.keywords/last$
    $endif$
</li>
$endfor$
</ul>
:::

## Education

$for(education)$
:::{.list-table aligns=l,r header-rows=0}
   * - **$it.institution$**
     - **$it.country$**

   * - *$it.programme$*
     - *$it.date$*

   * - []{colspan=2}
   <ul>
$for(it.description)$
     <li>$it$</li>
$endfor$
   </ul>
:::
$endfor$

## Projects

$for(projects)$
:::{.list-table aligns=l,r header-rows=1}
   * - $it.title$
     - $if(it.keywords/allbutlast)$ $for(it.keywords/allbutlast)$ $it$, $endfor$ $it.keywords/last$ $else$ $it.keywords/last$ $endif$
   * - []{colspan=2}
   <ul>
$for(it.description)$
     <li>$it$</li>
$endfor$
   </ul>
:::
$endfor$

## Extra-Curricular

$for(extra-curricular)$
:::{.list-table aligns=l,r header-rows=0}
   * - **$it.title$**
     - **$it.country$**

   * - *$it.position$*
     - *$it.date$*

   * - []{colspan=2}
   <ul>
$for(it.description)$
     <li>$it$</li>
$endfor$
   </ul>
:::
$endfor$

## Interests

:::{.interests}
$for(interests)$
* $it.title$
$endfor$
:::
