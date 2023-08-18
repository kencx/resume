# $basics.name$ {.title}

:::{.no-print .downloads}
This resume is automatically [generated](https://github.com/kencx/resume). Available as [print](javascript:if(window.print)window.print()), [pdf](./resume.pdf) and docx.
:::

:::{.contact}
$if(basics.phone)$
$basics.phone$ •
$endif$
$if(basics.email)$
$basics.email$ •
$endif$
$for(basics.profiles)$
[$it.network$](https://$it.url$) •
$endfor$
$if(basics.url)$
[$basics.url$](https://$basics.url$)
$endif$
:::

## Experience

$for(work)$
:::{.list-table aligns=l,r header-rows=0}
   * - **$it.name$**
     - **$it.startDate$ — $it.endDate$**

   * - $it.position$
     - $it.location$

   * - []{colspan=2}
   <ul>
$for(it.highlights)$
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
     - **$it.startDate$ — $it.endDate$**

   * - $it.area$
     - $it.location$

   * - []{colspan=2}
   <ul>
$for(it.courses)$
     <li>$it$</li>
$endfor$
   </ul>
:::
$endfor$

## Projects

$for(projects)$
:::{.list-table aligns=l,r header-rows=1}
   * - $it.name$
     - $if(it.url)$[Github]($it.url$)$endif$

   * - []{colspan=2}
   <ul>
$for(it.highlights)$
     <li>$it$</li>
$endfor$
   </ul>
:::
$endfor$

## Interests {.no-print}

:::{.interests .no-print}
$for(interests)$
* $it.name$
$endfor$
:::
