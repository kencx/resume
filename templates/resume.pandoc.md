# $basics.name$ {.title}

:::{.no-print .icons}
[<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(0, 0, 0, 1);transform: ;msFilter:;"><path d="M8.267 14.68c-.184 0-.308.018-.372.036v1.178c.076.018.171.023.302.023.479 0 .774-.242.774-.651 0-.366-.254-.586-.704-.586zm3.487.012c-.2 0-.33.018-.407.036v2.61c.077.018.201.018.313.018.817.006 1.349-.444 1.349-1.396.006-.83-.479-1.268-1.255-1.268z"></path><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8l-6-6zM9.498 16.19c-.309.29-.765.42-1.296.42a2.23 2.23 0 0 1-.308-.018v1.426H7v-3.936A7.558 7.558 0 0 1 8.219 14c.557 0 .953.106 1.22.319.254.202.426.533.426.923-.001.392-.131.723-.367.948zm3.807 1.355c-.42.349-1.059.515-1.84.515-.468 0-.799-.03-1.024-.06v-3.917A7.947 7.947 0 0 1 11.66 14c.757 0 1.249.136 1.633.426.415.308.675.799.675 1.504 0 .763-.279 1.29-.663 1.615zM17 14.77h-1.532v.911H16.9v.734h-1.432v1.604h-.906V14.03H17v.74zM14 9h-1V4l5 5h-4z"></path></svg>](./resume.pdf)
[<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(0, 0, 0, 1);transform: ;msFilter:;"><path d="M19 7h-1V2H6v5H5c-1.654 0-3 1.346-3 3v7c0 1.103.897 2 2 2h2v3h12v-3h2c1.103 0 2-.897 2-2v-7c0-1.654-1.346-3-3-3zM8 4h8v3H8V4zm8 16H8v-4h8v4zm4-3h-2v-3H6v3H4v-7c0-.551.449-1 1-1h14c.552 0 1 .449 1 1v7z"></path><path d="M14 10h4v2h-4z"></path></svg>](javascript:if(window.print)window.print())
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

:::{.no-print .footer}
This resume is automatically [generated](https://github.com/kencx/resume)
:::
