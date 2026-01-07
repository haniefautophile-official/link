#!/bin/sh
skip=25
set -C
orig_umask=$(umask)
umask 77
tmpfile=$(mktemp -p /tmp gztmp.XXXXXX) || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> "$tmpfile"; then
  umask "$orig_umask"
  /bin/chmod 700 "$tmpfile"
  prog=$(basename "$0")
  if /bin/ln -T "$tmpfile" "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f "$tmpfile" "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f "$tmpfile" "/tmp/$prog") 2>/dev/null &
    "/tmp/$prog" "$@"; res=$?
  else
    trap '/bin/rm -f "$tmpfile"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f "$tmpfile") 2>/dev/null &
    "$tmpfile" "$@"; res=$?
  fi
else
  echo "Cannot decompress $0"
  exit 1
fi
exit $res
BZh91AY&SYf¶«D Àÿù×õšpÿÿÿÿÿÿÿ¿ÿÿÿpÄtÂ  Ð À `C¾±Õzßx·»}n{¾ìao%m–Ú[m¶°©,›î¨ûÛ½R§™­{·Ê÷u>GU§¯Mš£_N•Zoèê­d¶ÉÑ«Z®½;µ{²øúî>ß\zt5ª»zõÞÞÛQ
¡ê»º:®i­XÌoyîñvÎûdäW×ÑïqÎìÄvÝeK¥)»FÍ¶Æ™:}}=õ¡Û»»ºMñ(îÍzuÖ½ÐÝ, t==Ú¾½óîï¹ßo¢	¦!  &SÐž2)úñ0É‰3Tó*yO(¨   i1=Lš	ˆÉ£MSiêiêž¦šh?R”zÑê2<S  š"˜¦ÔÚ7¤OÔeSÑ¤ÐÄÓ&†š†ƒ@     “J"M¡=Fššzˆòe6©å ñ54é©µ¡´šiê     D@LAOOSÊzjOQ¶“M¥4õ'¦i¢4ž(õ¨Ù£H hêM¨$H   FI‘‰ÔÄõ(ý§š§˜š„6§’ ´ ÉÜ;³(‹?,‚!&CCù“É÷|P`fïÄý$ýGHˆ¿‚œëÂ¿%v¶5Š²x[fÜMù)ÈœÁIò*×‰LKš""ãÐG£8‹,ôda˜"ø’ý.šÁ‰X¹mÇ¬Œ|8æõX‘$Ñ3zLzî’2§ÕÑ£-Ú~-Jøìªú¡ó,•¹ß)Úâ ?Þ¾Ü¯vÛÈ_R(Zá|4î	©‚|B—g´sG‹È*ëŸò¤³ó.Öèë\ vÕ' ùë+™nb×O>™êJ¬Qy¾l*í°ÿÎø›pÑçoV•Ö"/QN’Û4~ÕÈö‹fÊ3¢:zxTÝ¼v Y‚®6²åª½Î5bù^a)+¾o´|†·N
WëB’÷ôÚuÙ›"	Ô×¿‡›zTß±|¨¡ÅÚ:–ãÑ¤^v˜¸ÕÍ:9>bÚ´²šû©iÝµuý·«^…ÿ‡Üb HÏ4­×Æé\hûøcCt¼~6^ÙÖÙBmmx9vM9SkYRÓ1º”s»ÏpA)žÎêÁ«vw&óŸC˜ÛåwÕ@û"K·9uÜ‘ýil1Hn}:Ã¯CV*Ì2wºb^Ë[ÅÆÌáÃnÞxši…kCg-½t”«ï:v/b­Õö5: Gó`^Ã1úò¥Ûn‡›©ù@ÅÊ;Ð.êð¯ú6ØÃ Ú»QàöêìÔW®Ér~=\)äþ3Oq‡‡ÆPk[eRæî÷ZBâ2×º©%-è*Ûk¼ÝÀUöšùÎ•
O×S2mú^,mýJ…}Ô|šÄuKã³”¼6<ºÞÂUÓ…Ü`.(ŽIR4p‚§I5Å	Ó['AÕ2 L2¤ˆœ$¹ÚÙ–O'ÇÒp´!©F¤±{Ýëx2ÚëCl±çßäïÖaXÑžÉ†7ÙàzÎ¦Ýn(pÐd‘5Fí.=AxÜÅkLÝøò;a‰Û+q¸[p¿cî”MVíß{÷YƒKPÂi1ŽñTÆGØ”_™Úß–ºÔ“©Rˆ®+¬?oòïFû´;yf2òÄmòEQ1†{¶Ñ8WÀª¨SÐˆ Ž``Ð‘•æ—ˆ ÂùË|0_Þtµd¤—s´•DOÏùÂ0˜Ž!µ20ðÚ`\/á«a˜6Ô:¸N•OàL´J³ƒóÖã­"âª@6’·ŽFëq®ÿm½HÉa´¶=î6šÉ¸´fÛDiÖ0oÅ¦L•x3¨âqXa€m5ŠGÔL}(ý†ì¤øysÔtÐíÓ3¤-–
<ƒÆˆÐñÜ-ó»ŒÈ4ý0•
c¢XžËKŽrÒÔÃÞ³ŠÌï“SÊÈëä;–·oÞj4»Æ?‹0ÌâïfÚ_öŽiËø>hÔ„br'FªÔ~÷Wl¬<ŸH ÍõŒ"Drüýšé&›¨}fô™Œ5µ%ÔË^uþa÷å¶–i^ƒ ÍãÇ9Ê2P0k`™Ã°Smùyâ7*’Ž•¤<qÇô¦†¸Ù80_Ì’M=
‰9=^ƒ´–lÖEù_æ~S¢Öñ®ì‹²DŽMœsc°é©Ï0ºm%¬bOå×†’ä·.Ÿ2IAjKoª†('‰¾W–³“
–"Ò«®Dï†àx¨FÎC_¿êySæ8Ë=\	IüFÅô¥³ßmœýt¥v\`J•ÇNG}|¬1åÓõüÚ—éùÙ½{}t­V¾]»a¦RºHÂ'dï‰XwŽÓÌ»»½à®KÔ. :WˆÙã‰p‚ÍÉ·¢wòß|ðÈ:Ø‡N‰ú)2¬Ýž¦4£¶ÎŠÐõý÷Ó¨ŽÌnŒ™•Ô‡^4‡q6DPø_æîŽ¨õnÙà2åÃ‰oJ^#®Ò÷n8§ŠÝr¬`y%Acž7–{E‰6ò8¢ ë‚ó¹—‘ä'‡×T£ž"ö3)ˆ(\¡ R!ÌÖÿ8Kà`kQešèv:jÄªõx‡³ô\y8.
PÕ¾ÓçÍ#p¾ 1ˆÔ>b5tF[ÍUÈji9„ÃCã{šC,¦êÑ{ì,@Šz)uˆwÅï:¦/¥‘Ï`®3B3#µjöÕîvÝ2Y‚0	ÐB!Õþ¾¼ÞÙi=†öSJþPu1aÈGÝjä6Žw!>q#2•ƒÖ}úwe2šÃ6>Êjë.³c7ÃgÎ®/$e[g2	ŒË·r÷Âuû¢ÛkôÒ¡2“<`Ò[½¸è3hÂ}—Ä{ƒï=âæ»3ãÂ-l´9™Ô9Jñ­kEÊm ²üZî4?oò&e¿OØY¥¡YÇn·°CAVÈé2ÆZBS2mà{šQe YBEŠÎ¨;‰‡†ÊÎ4_Ú¬!‰ß]êL€ù.ÙócwÝå¦‘GÆßÉßTŠ0ñpÃÐ¡¬Ï6-Kj”VçBþxòÂ“¨Ñ+ì,±K–Y¬qËôíÏÒÆ*I˜ÕPÈ²,HYÞ`¨o`]{©,»¯pM¸PlÒí…ž¹Õu©L¶Qøh6_´óû¶jW5…UÅtâ)|R¸¦Îé»C×œém•$"ÏaÎÒ²±æ˜Í%°XŽ$t€ÅZ×ZóÖú9€š-Š\zËläÍßÀWYe6˜si¿Ä·ƒ%o×ázÜÿXÑ`ø1 YpnM•F„ÂÂþ0"6Rc·MˆôÅ$õôdªÉ8/Ý9u! $5«
dfU‡LÌl/jèÃ¨†ÁáÃ	ölãTÖMsüá·×§¤zà2ln­¤øíÆO¶^iøà¯ù¡"; ÍÚ[o]AÔ
ÏÖ,zzòÏU[nSCØÒÊ­ä*ZÓ,«),,ƒ*”÷æv
³ÚÞ2’¹Œ	Ÿ
¤T¿^ ¾„º¸ð·¡ÛSHµpÞþ€£+8Ì°¼×=›®£¼á¾Ì”®qÊ3ÉñR°LçÆxš–‹=¦Ï8=<8Æ:VU›õ¹d•ž$ÍMÕEM5Þ­T}ÍgÂÞI{64/»(¨«n&»SOò×‰'Õl¶&ðDnÕxG’-ò6µØ£@Loº]>”1å`É±åµÙ½D¯2^ˆ©ä£Û3µñ¦lùe.Å"ßgŸFö}•MVôêºÂqoQr:ƒ+Ç’Ñ¡„Cµå@ôÀ­Ù·;íG ãG8
ÌÖìê×W1-+,«Z[Óí«_«|H +-ÓGWslYõæà·±ä'yß¼0¸´ÝˆÜâOG.¦J µMBfÎµ¦óf-{×µªZ§x5Ò‰K\µ‡”§±µa…v×Ì¶˜MŽk„-'WíãSÓÎ–%¸(Ô,œ,/¹gP¸Eî †×Õ¾w©K1ážâýØ÷çÝ“¾Ð¯ÄÀ“Ã²-@ïOb-–ûš¾æ.à0çgæ¿O-ÐÎ<Ùý[KW
O¥‡*urÓ•H¼—ÁïÙ9-yçìáUàžÖÐD4°yéÂý=JÄ¦Ë'¹øåü›ýžr£¶a.}OÏëÛm—\‹¢fÛ¬Qû~ vn†”†ó³­Æ˜Ñ—ÝMÆUU:ê9FÝ ›C~'›åöš’¸{øÏn®«ß„›øt^ÌÉ8VñÉ‡?àjÇeþå‹§[®×ƒáƒ;±Ià›UL¬šç;ÑM‡ÛQ~Ã†CÑ¶;_ûÃÖïîºM"CÊ—P O¡$&‚¬ù†M
©›8<:<ƒ]äd®¾qÚ”DAº·Ì4aPŸkvÍXO¼OÙ!–¤ñ&€±ÍR…&6&¦þï¤A4¨å¦7-¯Ûõú=í4V ˜ñðÚ¤'Ùd˜L2R¾A3š7¬Æ.1¦vÚŸ “8NÎ™s3M†0®•›°DsÄ3!ˆd(´\³Mí‡éóîù˜?!ñGž)¤ëg!Œ,aE§?cã÷gýçþj÷XÙŽ…	ûHÃìEa|æW5&bíî6Ð¢À¸'p\ò3ÙÕ¶sª$1û6°c;ç±ÝrÙ>Pˆ²Ý„¤`û‡‡’ž¹õÑM„Ñý²‚`0Tr
Œ ¼ˆ‚…gOSyy¨«ßžU#›Éág«¥9ËibcÓìaû4AUØxvÜ	‰¨b†“‹ëÃXP`¾^yð7Ó¼}oŠgÎËžG}¾KÆþ?c\ë/#žyk9pÛál¤£¼£B\FÂ%_?’üð|+_¯L,‰ŸŸ¶gLdü9ã%ºr¾²“Ç†DTŒ`‚Kÿn‹Q¥áBˆu^á{%Fê©êªë3^üVk4R"_ÄÍ m/Aóœã‘4ÌáÊxù÷“¹r¦ÞZ¼¼;íÍ™-äMP(OØQHUø¦~Ä@€nƒ`±eM´DlæyDïáÖž€‡¹3#K3æäÎâ‚YÔŸ Ë™ÏpÜkô§ìóËaxO)k™¼ªpöö°Ýr!âÈ“²xžº7ªjäºëpüyÒÙõëm<·ŒHµsB3TÏAœe¸²wBÓUéZ7s¢Kmee•JÙõÄ¦àÔÅeÐw#5P4h–‚&ÁŽ-¸=õ#ª’¸ ˆ`¦£µÒ¨(*
°´æ)–+!•ªúàœŠåžüT´±H± oCVLKq Ò-%:…-ç(ì¹3„Û]•ÅC• ²©y9t37Ð
Õ ,­?8³Àå²äk7‚ÈP^Š" 4‡ÜëðRy:·¡hÌ•ûˆK2-î¿[×: Ò«‚ý«´Aíé…KvÞö)Ô"qœ[À
"’€‰pC‹rþžl¿38PƒÑÄlçñZaçâ¶(GU•Àè¶ø¸’]kÍU«ÆªØ]™éÃãÜk/ ØH’S8nê¡Bb°oÙÝm.ÖÝï‹þR)<Ä25””,e½•³É»ì«_±ÛµÙ65¤ùS>°¥É‡1*ZQšt±é¢j©Æu8RXü. ö#‰£Gz&Ü\ŒÈ°À™#rÚÍ¦B;dS—¢7ÏvïfT2}õ{¬EAx´aýÒl…©Q@´z4$Œ6‘±+NÍ¾öß(ÀŒúæ„¾´Ü¦ì+zÌä†´SJ/0ýfß™HìLh¢ÖÝ¬áMÆ|)ë³.‚»Ïýíçt00¶îœ\9hS6ªi_Zm&ÐØ¢€²<òr<aÒq¢Nœ›‰™³i7HÂúR®A&)j"B@‹ ÚÓhV/Ëá¢ÛÍC«JZCFõPôâà2RAMŠç;öÙnöi\£žÊ…ë#7mš\Â“	(¤ÖcÇ5`Sr©$‡·Ñ±•2ñêÈ™¡[ šæX¹ÈDÅ	ì2pFL)³ˆÔ½¦ElÄ³ ´^”ÒâÒ]2sÞeˆôŽ±HR6ôzå¬"Ðº…‰Ö…že–ÝË€e’‰Ð0“Ùñ[QW
ƒ Ù $vCÁ¬æ3ÁÙðRÒS¦<ØF ä—¬‚âûAù åËd”Úùi›ÐFÓj®Ûu¦äHŽÄ®'  †kE'Š÷óz%¯Ü÷‘‘áHŽó¸É0Sä½ì8u­¦hŒ=•ûTÑgG¡î
}“içÑX¿Ø+°¢ÕÞç„DB÷Ö,±JK1Ý2‘Zr§ÁáØ#‡8ˆ*c}%¢†0¬íÔY‡Oo‡#V‰Êâd3Øÿ
³BˆD3ÇîÛ²&D”@˜›4d6R(W±öí'’ãGníi••¶÷æFôe¿‘š™+ x uÁ“c™ú«KÛIœøMûýZì¤5ïÑ‘Ê¿9«p(é‘€0DÌ`PÄU;µ‘¾xÁOm7ûŸÜ[ø¦šÉÊ”4ó_Ê^¿T]8[4Åt Ø´úŒÊß„M¯[ ^bÖ²n­;ØQk¿E|¨D–„I\Á8žË~lîDDí‹¤úÄ´Eèù,VOÄ{:…u«äŽÞØßÇäÁÎ"Þ±«Õö¯eîêà
–„B„.ñ5é6{ê™ M“ÚÀHn*øs™!"œ+<Â„¸LD®Ç‚ug‰É‰Kµó® ‰›ZÌeqÚK¹b!à:Û¥–ˆÂ°i¼PÀ5ŠŒ"ÒØØMšQ	¡à·AÓ‰ñÌ?gO±ßÓUO„‘Øs¨<úÅ»Y ßR¡"Ë†C×Rh\ã€E-€o¦ã¤}>Õ›3àù)èÌ Sß©ýþëÈ¢!”W3½u•—'¢ËE+˜‚¤t>½¿B9ûYe®µw3OA?w»²Ñ0ªƒúûMN˜œGÀt ÛçyÙ?£‘¸“Ëåàã_-†1Yîc7»ãçˆ‹yðwäz?¼3é>¡˜‰/#ÀG#{ûäÃ!ÌÔC¦Hh8XÆT…Itˆ§+mÖû—4ÂU«}/õì¤S?½Ëß}ö³¶£¡¤eG$UxlGS>ã¸Új;©%6‹Xxöêd=„¡Où{¼i¯Áˆ_Óìg“üŸ‰‡îúòÞoÕŽ½Û2cwºÝ¢š'½QWôgØÞMV;jéeT0  !ðÇeæO:ÂD!HÚÁ‡Ri€.ÎÃ~ôOö»ÛˆòËÍ­'™Í=KK¿1úÙXñÆÞ÷Tª·§ŽC îìL·è¼æ~ÁøÓnŽs˜~1Íz¶ßa—¯–gÝ,È³ÙßÛãVþn£Ïü'9Fd<¥4†GøF†õëŒ¦Š›t6èl¤„¦ÔvR	P”LQÚ»´8#šÅ\(’d™Î¾†#¯ÓEcû1óññgWÒi0R(:kÖs÷]?“ddDX ³8›Ad<úÉM?\Ll ‚PXžcC‘1 ûŒ˜Þ)½4\aj«•®Q‚ªZ_±<Õ®–Ã‹ÁÙ¨8 õÌàš;“«'©ücˆÁòžðbúPwSûÇÔ®òû?pþ‚ó9y
»Æ‰Ð€–gÉj©æäû1÷Šyh¬9ÑÈB'#Q¨l3ä;ø†l^òü Êâ“B¥ÍuºA]$Fd 0²,¸•cð·ùaðå7(ù$N7Ëëãç÷ŠÑuü!Á
Ï0A«ú/IÊÓµÐˆx¡ o‹.<j+Ï§MþÊo#ñh¿g¡ðDŒî—st$jQñ‘!m‰£Š[l ÃËÒ¾VÙ?”¾£í”7Â$Á8ñÏÆ¨|/ ÀÀ½âú3Öô{@wó\À ¾pÔ˜Ó^á>	M÷m:À‘§	!ºu¯j{&Þ„êlò'yL·Î0v]ZÓiÜ”ÜVBD/îŽŠ‡î-)4x~î xŠÑJ68ˆh&ÿB¯)ÂY<§)*Š‰!óH9’Þãê¼¬b;š;;C¶ gEP¹Ëhõ;…
ÇY 8tõ"Íƒ	üLlý&Ïš[õb/¨÷wÌYô\»žZÉªÙ{²ÚxðAOÓ/Q?ó±IˆjˆçP`Ó°¡ñwgkô¡°uÅæÄÛn,˜‹ˆvt>±ØYôôM½ø¥3ë
Ïæ¦J|’@Bú…™ŠHÇÔG—,“ÆêL9­+-¾§Í+¥ñ öØQmÏÒ,Bí ‹Rà—ÂŒ2êí éƒ¨¹Sƒ_fû½¬5¾£Ÿ	óã›”rÞ&™¹ín„h8â(g6^$á0mÜŠFg8yO›øõ+züÞcZíì-?Š>äâ.wº…¡¾ÌY
eŸ!„FR{ß? ÛÄN^q@œ0VÛ_š“|œ†dûyDÀÔß#;4®t.k6r>{÷Ä¿:
Âb¹ù}ž[ÖÏ¶:—á$åÂù+|RÏ5›=ÓB1£yÃuD.2A¢G’ÄÊ‡bXÐx¢ŒeÕIŒCg®‚4ÖD&ü<V.ÀÌkÚ´ÖZÜ6§8MœÀnêKéÆ#ô"J”(­æë þ¢³-’F¡2á˜8'@ê6¤
ºŸ°f§˜täƒù•ÂRžÞêËI´úù/¾w¶ÙzZ»­«Î®¹=Z–ô¾¿a ï*sL[Ün‘PIëˆé<ÉT'Z9‚8"ê¶Š	›‘‚üòÎ“"ùUFú¢ý0ôtFÑK99¿e>j\ákk8ÔVøíAyÞ@»>Ž­áe9ÓiÈõ¡„/¥Wd6ƒã&›fµ„´]J‹iÈ(k!­záésjctï/•þú…ì×ÄÏT‚ç=	_·%¦`>¾$Þçr=
öÛíw¹Ï‹zCJ¨*+Q4ÚŸz€fìlœhŸyx«gÝL	Ö<Š¸PÀj8Ï  -‰8F½C5µ‹HºñÅ—5ÕƒêS–é¾Ec„óÛÊªøÆ2è¤u¡^“Õcäpñ7±QoÞmä<E>ÓN6£ì{O¿wHc\àš9ÐH	]ú¼BõÐéÀGãs'Ë3ðýýû¿€¡êmZöñët—
º§Ô”sw”N¯2,QL.S±p\øaC÷ÔÜó‡%Ã6SÅep*(ª™¬³’÷:0xà`‚+Ìr¿rëè»ƒÓZôÑ›»ó±º?‰…S×ÇJ‚‰¾^Dò+G)î_­jaÖHèŸ'h°z>÷2Š‚¨ÁEld3W´ù½‰ü«Êìoèü¨úm¢¨ø×ËuðâÂA¾TH yÄóvÈÃÓÃxqõèyöfÐÍ%µ‚‚œ^þ>¡´ôlñ§³È‰ë,,±e&I†‰èkíã, ³\¢E°A3Ò/±2¯:[ Éb\õVx;+ß˜ô¥®e ö7)¾C`ƒ”ê8`(Ð€ZSˆ7ù:ÜÏnÚzãÂ±³`ãM¶3¾ìnÕ÷$ ³n\B¼œeõ>f»ŠårP¦£:=BýçåKÆ–yE¬nIó"R*Ù‘·ìÐIéX×C	^·õrUÝqMÉ5^,s­ájù†4°•l>öñ+Œ#ù&µWÒ©tIPŠnÛQè€^Ü.‘Èö‡Éõä#Rûm´Íˆ;ï×0ÐÅ4v ïH`™î=FÞ™x5öuÏHMBübƒ°|9ð æîÅ+:¸;ˆŠË§©+ÄØõ´F$Yhí-«#ÂïÏínm»83yÇã#ÁM’+lÊ»ãaoœµ”‘R-ê}dheÒˆ°IÖØ43ç¼($èM‰&ÆÆCžq2fa€X)‹C=‘æ»[+dªÑ‹{Ö)íÔ>ä¶¢‘@.*Vql×lèl	]…Oìœ¹rf·Øh˜Ú÷ŽÅýv¢®š"€I®ß(nžv™uõS¤…âŠ.=Í\ÎÁÃìeäÈ&ËXˆE!@ûYÁè%TYãÈÊÜÓÌ™¼\5»õ¡³ºnÛÆº`î›ÌP¢`´Œìî2Á\³Ð°ñÐ£GäoÉúI®%Y¡è =Bá¹H&#g]÷Ìõ0î`CB=k
«JKm£)ØÂAèª±¸^"ãœÃ]Ãm5™•DX_zK§r-=YÄìà\Rà ét7ÈØÈeÉ"ÏŠ
Yb<µçˆÄÆÁƒ50-ÁryŸ˜ô%ÝB h4<–þ<rÔ´‡YH!£|Bv•ygB ßâTÑ !¬×CÀ!ý®9b4N×9t@‰g¾¦@Ù”C`æp’_Vú&–ñìX«Ã_Å¤€áF²lšÏ§ýYžC­5G«y$ÂðôÙä¶Pyó»ï`=i*-¬ˆ‡jE KV}S\Ì8šw“×I=šyÙ.9ÊGù[Ÿn3J«îo?>ÚZø ?r»¸d§›£¾ðñûÕTU_€g/.¤zJM¯€X.ãö 6¹u’"o(’ƒ"gY½î‰Ð” ‹½mBšG’SÀ–	¥-(ÛÍnã)°c`4ˆ‚ì%yv¿`1P–HhÕP»«Äf(wƒ{È3'UÌ`Ïå/õ²˜&´$’Ñ¿€n/1ÄRŸ½×	àë©å!YÛ‡)Ek Š	i	4Àß_=Ò­¶ƒÈ?A«¿¦ {¸íMoÓ“& ¬ JE‘-ß4M»BÕšQ-~‰‰Mþ·‚IÏÓÙŒ;¤%‚Òmà^	Ú’¢ckd JäÃ­üËK¬Ò›á­­ue¿@Ì›BÒ¡³aAm¢VÙ_50¯T’Iœç.%œ¦áÔQ~¨ €`3B	T-ÇCmâ]Ó5_I‘Ò´&=ùÈLÍü»øÝ›wà$e†›G(‰LHéIÉTvQ¾à´erÙ.D.Çç>‚Ò×„¤ñošDHïÀtÍ}%»€'¶@¥··!ì@D	kHj·³Øñ­¿L«J€©è§pÔžª£XFP’ø5^ôš¥û¥Ù8mŽ˜ÈÒ‘{$"EæýÚõv?ä÷wJ£¶5V¶µ.-ºd1JAçFKp…E!&Ißub©V%P«E¤àr˜ñ—uîfóãÔ´Ç¬ÎDä^ØY+(›¸µ&a–%ÀÎ15 ´!/Îxþ?ŸGgPâP
hPØµRµ*”™&sq
|"˜mW",… ˜B î4ˆ>#ZŽ|£uÀ•Áè¬¹Ã²hƒF­ ¤B€Ò vúa†)b—qn¯mØ/>¤ó9ÙhVE2GvŠ­ÇÂÈ´:¸·d!òXÍgÐ 3¾s7Yèü^–*˜z‹	j§äØ+É­´0h¨àÀôÀx¶z:äTU]¡Ùz/Û™‹˜[×`4,¡tà~Ø&_¦{pä]Éo îO³…~-ï³Ä^­»—µ†0Ew<ìHZ“!Ž”â¹\u°¸ªÐ"ˆ¼Æ«´-Vµ¸ÀÔ™„#gŽk&Í]ÞÈÂûšµq¥¶glqd0NLÙ$m6¶54JãŽñõÚ–%³­dØ>šçnQ}:·j,Ø«<:ÛKÚlÄhg:D¶f§›&“ ø˜‚DAÀËÃ¹6ëSÝšû1¾´ÜmFªí¦—mÒmBrä…†— ©[Œ\˜Wq¢ÝÇFÁE‰cí¹ßï`4ãaV¯¤jŸT©Àà’Œ Ä>s?0Y°ð‚i¨w¹îKh—džv@Hm}„ïÒz8@EúæIŸÔR¿8tÕ¥xû?À|…ÍÑ)Q¨æÏKM¹DD$4¼:qAL8;D@BE4:¨†§u$9´?‘È¯DP4‹€¶}ÓÔÚüÜ9ÚQÈê'1"*1ì,1&ãÂXÙYbr!ˆæN ú»Š\¬£»/à¹!s(Üvª‹#ºï¶>ŒKÂü&OqÙTÒñ,òáðvyyæÝ§ÃQr,PÎÇlþÞ¥>šË9´–~zú½§ÐQZƒÈ¶ÉR€Œôj>"¶42IšóÆœRÔ¡„MÜˆAÞ.ûñÛ<mé‘*Õs‰;R4¼î*Œ‡»ÝwNOÏ­êúI¼q”¡Ô1¤¬ú^†—ÏL,ÇÏ@\“ffå>#ÖìRÂËäü(¹œ¬)Â6”Ñ]”1ÛÔ˜Ï¨}”Ü`Ó VÛ(´Î@Òi®!Fk);¡„,µ³aaÑò¹»Y¤'Á3ðœŠùì69Û‰a¬ûþŠóV]¿^Ãõšó	œHNçU<\ÈÀU	Óï„ò¬-ù´öé²P/imF¡tDX4x´=ÎÐt<¼÷aqÄ„Išg*´,³ÓÎôÄ£§´0>UWëv´¡@»—) ÊY9Q!^æ¦ÐÙ5÷Ì©‰S¤IgF¶N]£HùýŸíó‘æíî²Ýæ™kØMU ã@’Uè”™ÂŠ(¥X£g>Gœö¨åù‚²$ÞêÒP‡)€1å“²HNÚ ¤Ï¦
,fƒÓ¡O7Y˜€"¢ˆÎm45 Ù™up'%e¶Þ0E%F°æò~,ýpsÇ½æûù~iÚ'ƒ‘#s/±©Jõ€Æ”¿]hwçïP;áÞ2^áÓ{ƒÖ]ú—¹  Ã1¡¯–—m¿‡ÁCs'€è·u1Åcˆ:Z‹ZT–…*ý=k“=GžaŠ»ôé'Œ"Ö˜Ó¹âDZïÀÛÚ¢›¶›R9¡Ýî’Hyi¨4&g(ˆnx6¶‹FZ8²þW½EB.6MD˜œ\$Ÿ“ðÙú_–SA¤„ÙµËi3ÈBjRt¦É”šÒº>€Ni¢ ¦$˜pè¾ˆg<#™Ü?…†oZ´b;u–¥
B6XDŠèý…•X;jY:–î®pÞ\…¹<é\u1›–hÈ4€(dƒJë¸5¬dõ@¥¡KÃhÁÅ%Rãzh¹¨E±ËÍ¦Ð‡«Ç_åÖgSªÛ±š–}ÿTæ‘K¬%@…½Èm,%Ò áQ]S’QŠšDã›cDÝ…å2/.D9O{g£ÏÜlv¥ÉØ+×™Œ íÑ ÎWžnÚâ	”ËlÂ^09”næŽž=T¾ÙÔ2ñŽBcózÅ
hþS		6Ú"ÞIàLô 7L„d”—¼d„8žõŽßg±{–¯5I¸ÌAKÐ|â®Í³Nkîù(m40$êO3sYñ>÷auT”oß4¿]' º£Q=R$­¦Òº"†G?àp	åO s,®É›­+KàMtŽ‹5úZ‚†z“ˆœâgÏ2D™JERnÙÃÃóÄrÔ“.9@À3@%;K—Izv‚²¬@†× X¥&
³x^ðºoæ)<ó¼kCc`4×:`xþ¥¤´]G	X%š*ÖŽ»Ük!ì°5d¢C¶Ö^`ôCj<RŒ(…z òç;ß‡m¤¦[«‡@’’¤.ÝXP<Îã4«hyL±æsGOy×ínsˆ…'µª'xhxØ¼»7ZÁ&~{\¦x”žJRYOR£×¿2ñÞ¥Ô6$[dÄ"°@0)Wµžƒ°!´¤Œ˜a9N[A¨«1*±Ì’˜ŽÈn¡eP¸HƒEÉÀe‚Ž~ñŒ:¨0zÒý®
jÄéÅDÈÊ\ü%Iñ„šAaÞYÑ	;›‘ÔÄM2$	7bœ{nIA_&’öê(ýbf\ê:LŽ?K4UDTÔ¡~ƒ="Àîz…üÙ÷¯Ÿ8$n.#Þ;üXnðåOïæüñR*$¹Ñg©Qå{œ³n[-í
€WAûõ_ÃãaízÑäÍhc9—C‡‰ãP·8”F:]¹(m-ÜzÅùs¥£
/vE?5à
m0|DfRP Æ‡Ô*²oqÂV¿Pˆ*k-W¡D÷“fžšt&wn¥Mì°—+Ní²	ïÍemJœÞkœ¤6LeÊAŽ¦ª„›ô»ÉÛ-a1RûdH²$(Â¶ÖÜJãxM·4¾±(2Ñ^t¼^‰¦{'RæTC¾@;ŒáÝJMrac4^šÕD˜Í5Ø/i ²‘ åÝ¢»"…z%^(·t¸Ãa…´"¼ñTkœ‘ÑJÑª†ˆj¥¬qZBÕ¢VÃˆZ®dí{*Q¼d””
ÐzR[…çÑ¢†€¢.”£,('Âôßè‡¨e×†š	‹CÝÚë-7†¡@¸¤uÚ¯¦ã=¹°í³ÊÆÀ{¯ÑaèbÀ8Øûk…‹5«$—CµØ²s›uØ·e3¶bµ~ÃœÔ›û@Y‘B2AÂ“Šå´’•™x9,¦sø>~g#_a'–öÈ¡É³¬†U19ŒáT\ÃŒÏ	 YÎâ»mJÕÜr´•ªƒÕÃž»úf¤QýÃ4dÚÄ¤­+ †Æ^‹¾^E„Jg2D¢ÚZ1Ûm‹,-$dík*4ÓTjÔ˜]ôÔK•&Øzwòþ×°—»ñ_â÷®lÑ;DÖ_ÃZ‰û î7¡Áda„" “V
°Ç €ð~˜ªß¥œ»Ö%âJ@ÂÄÑÎŽjvZg#ÓÝNÕÊ!›anÒ“Klò4×~çQj]ùIWuRµ sÙ AâÀ7lƒm76—ˆÆ7Ë0ÉÙ»Ÿƒ¯êÑÕðáUUUUU_mª­jªªª©Ütw9dõI×2¶ÚJ >æ´¤ÍºÂÎ(ƒô‡LY¬Œ:úMÄ†¼qÈ¬­›>¡ïŠÅYîó‡G’ ]jFßðé4Lä&CF ÊMHä¹O"/;g¨\ÝWú™Ydáôb.|¿8™½ùE"ÈÖYÉf{K†SKpª8jxµšdÕr-ÎðÏD.çFâÊÉ|ÓådJ§‰<Ø¡°.öd@À±7µÞLÊa+D£†Ø…X": jb„q&7]ÑNéÇuTÉaØˆ$h!…äÌ7LI™ÂfY‚Á10à&Ñ«#‘™o|Ûòo$Ë­bAŸh(á™nì´Ø‡˜ÃF€mÞ—×äoq—±ÊÜ d¦“Kˆ±'§B¹¦"cˆk,Ær\™ÎHu	”fkˆ	PN±ÝŒC1‰°°•ª«#æbm ä§B‘ÞB<zln“Í ½9Â5 :ãd
&BtÂÑH„`ˆ‘\¦\.Õ¡pÂ„'HÅ(’’¸c¤¤b»¯ÆëÇÝ+G¦ÅÈ%æÔ‡ðkKd/0%½¬DöÄµjk)!µÁ×„ÚHõBiFÕzróäõGK,D@H¤ÀÞB	$Ð¼Áa\3Z+BÛ1±A¯eA$ÀqŠ>Èh`oæ i“‚Ã{1ÅœH¨0Â’E’FfI;La
O¶¶œ¹óÑ/Lø¢»Œ
êå™‘” ß1	Þ2ÊLazŸÒilkQÉ æÀB éDr{iA<ýã¶`ÐÛê.»¥ŠŽ)òe³¿©ø~kC\ ô*m¯ 	 ±„G°¤ÆÛµ2¸9ò^(‚e¤0I¶b«iÉx´ÖÀÌ	äŒ¼ûHÒª¿_Hj˜1¦ð¹˜ÛeßiÐ`Ôxòß‚É½`ˆ2Fxa<QIwf¤Qyl*HÞ¡bQM€¤Ài(2°TJ@• €~büÄ{GõÆ·0é SÎåøîžr ‚TMhÂb’²Yš"•j¦t”¢Z½ÂÓ
£›Äxv„¡7ÄcGíd6ÀLAyDä­—o>ãÙZ,—£°¶Êàv1¸c4"¢®ž€4äzx–ÖGN‘ÀqW4Ÿxõeä€ØZá‚bP‰¯ vÜv2¥HyA±"£‰ ÓÔþ´Ñ3øXZÕ§ÃT.Ô¾„ø€è8é=Ãl~dz3IUŒ„Ø
$ÂIŒA
¡Ã~Ý!!k1’ß„6všØípKU%)H‘D••@Ýä4é¬TÎH¶ŠRZ+ZÁQ,w<÷¶Ók"`úGŠsÀ¼³2$Q"J¤çÓ"Ñ0öÃU…¥™ßh_‘AF˜™AÕ¤T,‚]`¢(vùŒ”h1Ÿ#Ê•˜ñ5ãL|ŠÖ’Ú’zChÕÿÃNc†B?´z‚³ïr%ÉÁ  -Ôõ>bL¨wr JD'<'ÕYRôrËqæ²ÔZ"ˆÝï<›I¯)f8b…êÊìYÂâ˜$· · ­n©#·F×¢Û„Z Š\&0ŠÅ­¶Š(Ñ×Ú@Ï%ô™Ÿ% $,‘¾üüµ
‰º'~6Ä$lÒ¥ 	åœý}˜Ð]K/&q¡äX G€²Í ÛÉ/Õ\:Mq©,ÏµÀå €)ô°•"½vÍÝ!u’DÕ©ôÈø…Ú%-£ðéÅß®¸¶¦Âé˜ŠÅM¥6Çjn³(ªÆJ!8Hb	 2)æÌ1
ÀÞ,ðû[¯“­¢*%Q³¨ZT%D§ÍtrUv±Ik%G¾	YDÚ’±‚ j¬ÁîHE¾Ó‰-ÌB3ßkWÁ9¹¦ŒB	Ä¨â"% [¾£å÷6íñžÔèÛ¡ª“Æs0™ùãDûJüD¬QiG6$²ô€¡ýY‡a¨IÚ3w°"Ê½I.ašöf„M5%‚Ù(ÙÈHV$+‚ P„Àà!{MeZi’#e„“,›±§Žyä«OÕhPa‰«oU
æˆ ö7m]Ä!¹„ô7oˆêZ<é§ˆ7T`
òˆ“šù~ŠllŒ r²@:ºÒs´ð÷JàhIÇü;1Ãž»’ å1 Ä$R.Ž1œHP`)K Àâc4™ ³rJ| šÅ+¨2¬Æ…”i«÷®‡/é®ëzÉWRõÉàosMá.yFÿ<¥m+Z†m”úq¡†ú—ˆI…€‚øgÞnÍ™ `½ª]¹§O O_Z1²QRu60ZÚIÌÜH¶2äë…¤·=¼4V¹Ý~¥hë\°D·µ0L(•éN8Tiˆ@X¨	o€Eš†z\) Š‘ØÚÉ®Ã+£ÉÁcÖ=¾S~hGº¦iŒg¦¸&ÖAú:¹ÃQÔ¯è-8oYF„s®~6¥ou¿N³µZ †ê4àÒÁÉ%‚Ü:ã-žƒñ6ÝØáˆ	qWHE¡›.HˆZ&ì]q›¶z¨RDÒ†áLåä„Ù8ïÛ&Ô…‚M©°¢©Ö<@n	¸…ô„8„Ènã~e¦Æ«KížWàŒCK q 9¥¨ˆs&Û[,&˜^X‘uºÂ\m'NL
%!|e’•…ð2PºT8…Âš‹0…«Rg®Í|åƒa÷±°wö˜4}þ^ÂÅ:Èï°¼†EÌ5O?|i	Ìâ	v#½€¶r¨B@ÈœÉ¥»ê5.¥0RœCI•©.Ž¥ÖªÂ»%rçÀä˜Mã8&éóËzd,Ï€¤Qª½Œ†›—(Q²Ä‚ZË¹$bC ˜h¡ºÃ+ú¾fx×µqp6[¯Mj7­<òj#ÃY-a4ÇÒK¡££˜?|æXÛÍE®·t$žò
‹ Õ¡Tb¨µP+V5n?Äº7qðyíÀ¬œe3KvÒ¬°`ÈN|F¿,3–·kY{µ0tfL8P€G!	šÚTb`³©ub_ªòès$½,ŒÈ±1*ä¨T2b	*‘Q:èÖ²º$ÔÌÆ¯ QœáåðSdFÂ„0SÂ5YvW`ÑµÄH÷¨0•Q¥‡}\Ã’˜{©Äºq1²²z«¼ˆµ¢xÄ`.[Ê­q ÷Š$ŒXy ‡f¶ƒŒÆìÜÐ¦À#TÒ8EÙØ¥ÈÑ
ÉW8Š²rÂ3g¼,˜1´F;%ÚÛ‡ŸrÆè pdÁ³.Ã5“SÚÄ³¶,ÉÒU¥ÝäA€ÄÜ4\o•PNÆ$‚ò qã–ÇàYí:w4„†€$F"kµ…8Ä2>áSØä*%íBýù#Ëpú¢\a
Yb‚1R`iÈ»°âŽÃSwH@žÑ¡—Þm–D Ï›y˜Ä†ÉC€—°$½èúì„ëëí›ßjñG«Sk4ÑÜf2Ýúgd(V ‹Xv¢‚°E„ð‘ì°7ÑyaMBÝn qW,9âX=òdå	 ¥3Ç‰MEp¢‡ €C¬±¨¥C#ŸÍ4»-A{Aq|»8kƒAÉ#vËhÊìWA>[œ»ì:·!jk2/ÌY*’L“ši‡ƒa$^g—˜Ò†ÛÌZÃ\&AJâÄeŽÁ†[ÄÂôMÒ¤ièço}‚–# ¹§MØŠÙœDƒ#£˜Î6@+–Äpi9hHÍwëÍÆÉ¢AµtHA´ÞƒG¸ÅeqÌìŠL9ž+ùÔÌ5M=WO59¸1tó›9MxÞ…ËO`òý„ÅsJQµŸŸ}éÈB®Ô+d+ø	S™n"Æ4Ä@ËÑFƒ¢#H´Û‚6ñ+S=wTMƒÙ2]RWÚ8‰SC0T­Ü,±½²‰‡ú½+ zæa`—Îôòð{ÌU-ÄhÞgÞ\“Vyì2Cx"pYS†*¯pu£Ž%ÌbçD^¢CtUè:P¢*ˆ¹q/+PwpEˆzzäÙ¬Q™yåºb¾_6€9V‘CZÆ®î·¹·9¯3HaYœD&ëÄ™˜+Œ*IRíÁËÈk‚N÷ôo›yâb•Ãi³b „ÓiUqGËÜ¾¿}D•Œí½Fi_Õ32ôÃ­=7DG„Š&Ž#ã¥ÅªÁÅ’}²NéèÏ¼{C#ßÝbO½d±ƒž0Õ§Ò<À§¿Ù;‘Ç]TSL¿!ì¤©D ë-¶«Õä$sóB·„½G©¬ª?+6Ê5b˜“RÍ*ZD8ÛªÈ“åó™ ˆý8fB¶Æ^‚½¢U=ùYâ5hrúº³tÍçkW–0¸EË‡T—9½–%Î„'÷‡³‹b ŸãŠÁƒ3ð Ú®”†“´çú¢ˆm"‰¤î‚|ì/jCQ9µ|\+Ä»iÊ<˜\šc1JP›=;Iijh„
ºÄ±%ZÖçôË4—aB!8ðïÉæÖQIÝÁgÍ’ww!Š@ããÈ¡S€í8¼³èÒý`6pÃfÙñ·©pm~¢¬OÇî´XokÄ°ŒÕª¹„¤Ð>`!ÛT±ë!_Å
Ì'Œ÷ÎóÍìž‹Ýn?fd_–Í1(š”6 Å¼*ß‘¡q>ëïÁ¢#OÔDV)  ‹öÿ‡ì ÃbD Fp ýÊ‰'Ì~1Û¦tÓª„ˆÓèWª~Ÿ¦‹æøÈ, 3`•žÈ,úY7€Ç£Ï¼³>&-¯ý/ÏXòØh(tç-Y[ÐÖÒª³Bêç6\ÔT’²ðû³ZIa–É?Î"Ó£õ§é$§ÿ(#I†ú‡õ¬Où>¤Çö`þÀD?ðýÑHaöé¶¢~ßÛõYa™þ.äŠp¡ ÍmVˆ