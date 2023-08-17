# $name$ {.title}

:::{.no-print .downloads}
Download or print this page directly as PDF
:::

:::{.contact}
$phone$ •
[$email$](mailto:$email$) •
[$linkedin$](https://linkedin/in/$linkedin$) •
[$github$](https://github.com/$github$)
:::

## Experience

$for(experience)$
:::{.list-table aligns=l,r header-rows=0}
   * - **$it.company$**
     - **$it.date$**

   * - $it.title$
     - $it.country$

   * - []{colspan=2}
   <ul>
$for(it.description)$
     <li>$it$</li>
$endfor$
   </ul>
:::
$endfor$

## Skills

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
     - **$it.date$**

   * - *$it.programme$*
     - *$it.country$*

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
     - $if(it.url)$[Github]($it.url$)$endif$

   * - []{colspan=2}
   <ul>
$for(it.description)$
     <li>$it$</li>
$endfor$
   </ul>
:::
$endfor$

## Interests {.no-print}

:::{.interests .no-print}
$for(interests)$
* $it.title$
$endfor$
:::
