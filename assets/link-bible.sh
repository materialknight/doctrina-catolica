#!/bin/bash

# Este script transforma referencias bíblicas en hipervínculos.

sed --in-place --regexp-extended \
   -e 's/\b(Gn\.?|G[ée]n\.?|Génesis) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/genesis#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b([ÉE]x\.?|Éxodo) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/exodo#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Le\.?|Le?v\.?|Levítico) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/levitico#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Nm\.?|N[úu]m\.?|Números) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/numeros#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Dt\.?|Deuteronomio) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/deuteronomio#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Jos\.?|Josué) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/josue#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Jc\.?|Jue\.?|Jueces) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/jueces#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Rt\.?|Rut) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/rut#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(1 ?Sa?\.?|1 ?Sam\.?|1 Samuel|I Rey\.?|I Reyes) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/1-samuel#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(2 ?Sa?\.?|2 ?Sam\.?|2 Samuel|II Rey\.?|II Reyes) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/2-samuel#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(1 ?Re?\.?|1 Reyes|III Rey\.?|III Reyes) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/1-reyes#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(2 ?Re?\.?|2 Reyes|IV Rey\.?|IV Reyes) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/2-reyes#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(1 ?Cr\.?|1 ?Cr[óo]\.?|1 Crónicas|I Paralipómenos) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/1-cronicas#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(2 ?Cr\.?|2 ?Cr[óo]\.?|2 Crónicas|II Paralipómenos) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/2-cronicas#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Esd?\.?|Esdras) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/esdras#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Neh?\.?|Nehemías) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/nehemias#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(To?b\.?|Tobías) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/tobias#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Jdt\.?|Judit) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/judit#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Est\.?|Ester) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/ester#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(1 ?M\.?|1 ?Mac\.?|1 Macabeos|I Mac\.?|I Macabeos) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/1-macabeos#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(2 ?M\.?|2 ?Mac\.?|2 Macabeos|II Mac\.?|II Macabeos) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/2-macabeos#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Jb\.?|Job) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/job#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Sa?l\.?|Salmos?) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/salmos#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Pro?\.?|Proverbios) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/proverbios#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Ec\.?|Qo\.?|Eclesiastés|[QC]oh[ée]let) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/eclesiastes#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Can\.?|Ca?nt\.?|Ct\.?|Cantar|Cantares|Cantar de los Cantares) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/cantar-de-los-cantares#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Sa?b\.?|Sabiduría) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/sabiduria#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Eclo\.?|Sir?\.?|Eclesiástico|Sirácides|Sirácida) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/eclesiastico#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Isa?\.?|Isaías) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/isaias#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Je?r\.?|Jeremías) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/jeremias#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(La?m\.?|Lamentaciones) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/lamentaciones#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Bar?\.?|Baruc) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/baruc#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Ez\.?|Ezequiel) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/ezequiel#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Da?n\.?|Daniel) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/daniel#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Os\.?|Oseas) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/oseas#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Jl\.?|Joe\.?|Joel) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/joel#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Am\.?|Amós) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/amos#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Abd?\.?|Abdías) ([0-9]+)/\1 [\2]({{ "biblia-straubinger\/abdias#v\2" | relative_url }})/g' \
   \
   -e 's/\b(Jon\.?|Jonás) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/jonas#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Miq?\.?|Miqueas) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/miqueas#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Nah?\.?|Nahúm|Nahum) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/nahum#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Hab?\.?|Habacuc|Habacuq) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/habacuc#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Sof?\.?|Sofonías) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/sofonias#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Ag\.?|Hag\.?|Ageo|Hageo) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/ageo#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Zac?\.?|Zacarías) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/zacarias#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Ma?l\.?|Malaquías) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/malaquias#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Ma?t\.?|Mateo) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/mateo#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Mr\.?|Mc\.?|Marc\.?|Marcos) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/marcos#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Lc\.?|Lu\.?|Lucas) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/lucas#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(1 ?Jn\.?|1 Juan|I Jn\.?|I Juan) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/1-juan#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(2 ?Jn\.?|2 Juan|II Jn\.?|II Juan) ([0-9]+)/\1 [\2]({{ "biblia-straubinger\/2-juan#v\2" | relative_url }})/g' \
   \
   -e 's/\b(3 ?Jn\.?|3 Juan|III Jn\.?|III Juan) ([0-9]+)/\1 [\2]({{ "biblia-straubinger\/3-juan#v\2" | relative_url }})/g' \
   \
   -e 's/\b(Jn\.?|Juan) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/juan#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Hch\.?|He\.?|Hechos) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/hechos#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Ro?m\.?|Ro\.?|Romanos) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/romanos#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(1 ?Co\.?|1 Corintios|I Corintios) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/1-corintios#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(2 ?Co\.?|2 Corintios|II Corintios) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/2-corintios#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(G[áa]l?\.?|Gálatas) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/galatas#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Ef\.?|Efesios) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/efesios#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Flp\.?|Fil\.?|Filipenses) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/filipenses#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Col\.?|Colosenses) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/colosenses#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(1 ?Te?s\.?|I Tesalonicenses|1 Tesalonicenses) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/1-tesalonicenses#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(2 ?Te?s\.?|II Tesalonicenses|2 Tesalonicenses) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/2-tesalonicenses#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(1 ?Ti?m\.?|1 Timoteo|I Ti?m\.?|I Timoteo) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/1-timoteo#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(2 ?Ti?m\.?|2 Timoteo|II Ti?m\.?|II Timoteo) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/2-timoteo#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Ti?t\.?|Tito) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/tito#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Flm\.?|Filem\.?|Filemón) ([0-9]+)/\1 [\2]({{ "biblia-straubinger\/filemon#v\2" | relative_url }})/g' \
   \
   -e 's/\b(He?b\.?|Hebreos) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/hebreos#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(St\.?|Sant\.?|Stgo\.?|Santiago) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/santiago#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(1 ?Pe?\.?|I Pedro|1 Pedro) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/1-pedro#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(2 ?Pe?\.?|II Pedro|2 Pedro) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/2-pedro#c\2-v\3" | relative_url }})/g' \
   \
   -e 's/\b(Jud\.?|Judas) ([0-9]+)/\1 [\2]({{ "biblia-straubinger\/judas#v\2" | relative_url }})/g' \
   \
   -e 's/\b(Ap\.?|Apoc\.?|Rev\.?|Apocalipsis|Revelación) ([0-9]+), ?([0-9]+)/\1 [\2, \3]({{ "biblia-straubinger\/apocalipsis#c\2-v\3" | relative_url }})/g' \
   "$1"
