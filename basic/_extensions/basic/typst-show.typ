#show: doc => article(
  $if(titlepage)$titlepage: $titlepage$, $endif$
  $if(title)$title: [$title$], $endif$
  $if(subtitle)$subtitle: [$subtitle$], $endif$
  $if(abstract)$abstract: [$abstract$], $endif$
  $if(by-author)$authors: (
    $for(by-author)$
      $if(it.name.literal)$(
        name: [$it.name.literal$],
        id: [$it.id$],
        affiliation: [$for(it.affiliations)$$it.name$$sep$, $endfor$],
        email: [$it.email$],
      ), $endif$
    $endfor$
  ), $endif$
  $if(class)$class: (
      name: [$class.name$],
      number: [$class.number$],
      section: [$class.section$],
      semester: [$class.semester$],
      instructor: [$class.instructor$],
  ), $endif$
  $if(institution)$institution: [$institution$], $endif$
  $if(duedate)$duedate: [$duedate$], $endif$
  $if(logo)$logo: "$logo$", $endif$
  $if(bib)$bib: "$bib$", $endif$
  $if(bibstyle)$bibstyle: "$bibstyle$", $endif$
  $if(toc)$toc: $toc$, $endif$
  $if(showdate)$showdate: $showdate$, $endif$
  $if(lang)$lang: "$lang$", $endif$
  $if(region)$region: "$region$", $endif$
  $if(margin)$margin: ($for(margin/pairs)$$margin.key$: $margin.value$, $endfor$), $endif$
  $if(papersize)$paper: "$papersize$", $endif$
  $if(fonts)$fonts: (
    $for(fonts)$
      "$it$",
    $endfor$
  ), $endif$
  $if(fontsize)$fontsize: $fontsize$, $endif$
  $if(section-numbering)$sectionnumbering: "$section-numbering$", $endif$
  $if(indent-first-line)$indent-first-line: $indent-first-line$, $endif$
  $if(cols)$cols: $cols$, $endif$
  doc,
)
