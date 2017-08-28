
	
/*
	Copyright 2006 - Utah State University
	Author: 		Chris Schofield, James England
	CSS File:		main.css.cfm
	Description: 	General CSS for the entire UAS. CMS
	History:		2006-09-14 - Created
*/

/* General Fonts and settings. CMS */
body{margin:0px; font-family:Arial, Helvetica, sans-serif;}
body#mainBody {position:relative;  min-width:1170px; }}
img {border:0px;}
form {padding:0px; margin:0px;}
a img{border:0px;}
pre {font-family:Arial, Helvetica, sans-serif;}
.ttoGreen{color:#7AC142;}
.ttoBlue{color:#0069AA;}
/*Primary and secondary colors. JRE*/
.primary_color{color:#0069AA;}
.secondary_color{color:#399CB0;}
.primary_background{background-color:#0069AA;}
.secondary_background{background-color:#399CB0;}



.topBGColorFill{position:absolute; height:100%; width:100%; 
background-color:#fff;
/*background-color:#399CB0; 
background-image:	linear-gradient(#399CB0,#f7f7f7); 
background-image: -moz-linear-gradient(100% 100% 90deg, #399CB0,#f7f7f7);
background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#399CB0), to(#f7f7f7));
*/
margin:0px; padding:0px; top:0px; left:0px; z-index:-999; /*background-image:url(../images/bkg.png);*/ background-repeat:no-repeat;}

/* Hide link for skipping navigation for accessibility. CMS  */
.hide {position:absolute; left:0px; top:-200px; height:1px; width:1px; overflow:hidden;}

/* Headings. CMS */
h1, h2, h3, h4, h5, h6 {color:#0069AA;}
h1 {color:#0069AA; background-color:transparent; font-size:1.2em; margin:0px; padding:0px; font-weight:bolder;}
h3.displaylist {margin-bottom:5px; font-size:.9em;}
h4 {font-weight:bold; font-size:.9em; margin:0px 0px 8px 0px;}
h4.screeningtext {font-size:.9em; margin:18px 0px;}

.questiongroup{color:#ffffff;}
h3.questiongroup{background-color:#0069AA; margin:5px 0; padding:7px 5px;/*background-image:url(../images/dialog_title_back.jpg);*/ background-repeat:repeat-x;}
p.questiongroup{background-color:#399CB0; margin:5px 0; padding:5px 5px 10px 5px;font-size:.9em;border:1px solid #0069AA;}

/* Captions for tables look the same as headings. CMS */
caption.heading {text-align:left; font-size:.9em; margin:0px 0px 0px 0px; padding:0px 0px 10px 0px; font-weight:bold; color:#000000; font-size:.9em;}
caption.general {text-align:left; font-size:.9em; margin-bottom:10px; color:#399CB0; font-size:.9em;}
caption.appheading {background-color:#399CB0; color:white; font-weight:bold; text-align:left; padding:8px 4px;}

/* Input tags. I like them without the shadowing effect. CMS */
input.general {border:1px solid #aaaaaa; font-size:1..9em; color:#399CB0; margin:1px; padding:1px;}
textarea.general {border:1px solid #aaaaaa; font-size:1..9em; color:#399CB0; margin:1px; padding:1px;}
input.submitbutton {background-color:#aaaaaa; border:1px solid #777777; color:#777777; cursor:pointer; margin:0px; font-family:Verdana, Arial, Helvetica, sans-serif; }

/* Top shadows to give a little 3d effect. CMS */
.topshadow {display:inline; float:left;}
#pagecontainer {/*margin:0px auto;*/width:925px;/* padding-top: 25px;*/}
#pagefootercontainer {margin:0px auto; width:900px; text-align: center; background:transparent;}
#contentcontainer {margin:0 12.5px; /*width:900px;*/ border-width:0px; border-color:#aaaaaa; border-style:solid;}

/* 2 column format. CMS */
#leftcolumn {display:inline; float:left; width:160px;}
#toprightcontainer {margin:0px 0px 18px 0px; padding:0px;}
#rightpagecontent {margin:0px 0px 18px 0px; border:1px solid transparent; min-height:400px;padding-top: 50px;}
#pagecontentmargin {margin:0px 18px 18px 18px;}

/* Left Menus. CMS */
div.leftmenu {margin:0px 18px 18px 18px; font-size:.7em;}
#smalllogo {margin:18px;}
ul.leftmenu {list-style-type:none; color:#777777; margin:0px;}
li.leftmenu {margin:0px; padding:20px;  display:inline; line-height:44px; text-transform:uppercase; font-size:11px; font-weight:bold;}
ul.leftsubmenu {list-style-type:none; background-color:#D5E1CB; color:#399CB0; margin:0px; padding:0px 0px 1px 6px;}
li.leftsubmenu {margin:0px; padding:4px; font-family:Arial, Helvetica, sans-serif;}

/* Drop down menus for admin MEC */
/* Updated by JRE - 10-01-2009 */
.menu_choice { 
	/*width:931px;*/
	display:table;
	margin:0px auto;
	margin-bottom:10px;
/*	border:1px solid #aaaaaa;*/
	height:29px;
/*	background-color:#f7f7f7;*/
	border-radius:7px;
	-moz-border-radius:7px;
	-webkit-border-radius:7px;	
	z-index:85;
}

.visible_breadcrumb {
	position:relative; 
	display:table-cell; 
	float:left; 
	font-size:12px; 
	max-width:200px;
	max-height:100px;
	background-color:_blue;
/*	bottom:-1px;*/
}
.menu_choice ul li.visible_breadcrumb a {
	display:block; font-weight:bold;
}
						
li.visible_breadcrumb ul li{text-align:left; width:180px;}

/* Language selection. CMS */
#languageselectbox {margin:0px 18px 18px 18px; font-size:.7em; font-family:Arial, Helvetica, sans-serif;}
#languageselectcontent {background-color:#D5E1CB; border-width:1px 0px; border-style:solid; border-color:#399CB0;}
#languageselecttitle {color:#399CB0; padding:6px;}
#languagelist {list-style-type:none; color:#399CB0; margin:0px 0px 8px 28px; padding:0px;}
li.languageitem {margin-bottom:8px;}

/* Page title. CMS */
#pagetitle {/*padding-top:10px;*/ text-align:center;}

/* Top menus. CMS */
#topmenubox {background-color:#D5E1CB; background-repeat:repeat; padding:2px 12px; color:#399CB0;}
.topmenuitem {display:inline; float:left; margin:0px 8px; font-family:Arial, Helvetica, sans-serif; font-size:.7em;}
#techsupportlink {display:inline; float:right; margin:0px 8px; font-family:Arial, Helvetica, sans-serif; font-size:.7em;}

/* Fading dialog boxes. CMS */
.fadingdialog {border:1px solid #399CB0; padding:1px; line-height:1.5;}
.fadingdialogtitle {background-color:#399CB0; color:white; font-weight:bold; font-size:.9em; padding:8px; text-align:center;}
.fadingdialogcontent {margin:10px 15px; font-size: 13px}

/* Brown boxes with shadow. CMS */
div.brownboxback {background-color:#399CB0; margin:4px 0px 0px 4px;}
div.brownboxmiddle {background-color:#ffffff; position:relative; left:-4px; top:-4px; height:100%;}


/* Small dialog boxes. CMS */
.smalldialogback {width:360px; overflow:hidden;}
.smalldialog {font-size:.9em; position:relative;}
.smalldialogtitle {
	/*background-image:url(../images/dialog_title_back.png);*/
	background-image:url(../images/dtb.png);
	background-color:#399CB0; 
	background-repeat:repeat-x; 
	color:white; font-weight:bold; 
	padding:15px 12px;  
	font-size:17px; 
	line-height:17px; 
	
/*	border-top-right-radius:7px;
	-moz-border-radius-topright:7px;
	-webkit-border-top-right-radius:7px;
	border-top-left-radius:7px;
	-moz-border-radius-topleft:7px;
	-webkit-border-top-left-radius:7px;	*/
	 
}
.smalldialogcontent {background-color:#ffffff; padding:12px; color:#0069AA; font-weight:bolder; line-height:1.5em; border-width:0 2px 2px 2px; border-style:solid; border-color:#399CB0;}

/* Horizontal rules with CSS. CMS */
div.horizrulethick {height:18px; background-color:#f7f7f7; margin:0px; padding:0px; font-size:18px;}
div.horizrulemedium {height:4px; background-color:#f7f7f7; margin:1px 0px; padding:0px; font-size:4px;}
div.horizrulethin {height:1px; background-color:#aaaaaa; margin:0px; padding:0px; font-size:1px;}
div.generalrule {height:2px; background-color:#aaaaaa; margin:18px 0px; padding:0px; font-size:2px;}

/* Link styles. CMS */
a.general:link {color:#0069AA; text-decoration:none;}
a.general:visited {color:#0069AA; text-decoration:none;}
a.general:hover {color:#777777; text-decoration:underline;}
a.general:active {color:#0069AA; text-decoration:none;}

a.smallmenu:link {font-size:.9em; color:#0069AA; text-decoration:none;}
a.smallmenu:visited {font-size:.9em; color:#0069AA; text-decoration:none;}
a.smallmenu:hover {font-size:.9em; color:#0069AA; text-decoration:none;}
a.smallmenu:active {font-size:.9em; color:#0069AA; text-decoration:none;}

a.smalllink:link {font-size:.7em; color:#0069AA; text-decoration:none;}
a.smalllink:visited {font-size:.7em; color:#0069AA; text-decoration:none;}
a.smalllink:hover {font-size:.7em; color:#777777; text-decoration:underline;}
a.smalllink:active {font-size:.7em; color:#0069AA; text-decoration:none;}

a.mediumlink:link {font-size:.9em; /*color:#0069AA;*/color:#0069AA; text-decoration:none;}
a.mediumlink:visited {font-size:.9em; color:#0069AA; text-decoration:none;}
a.mediumlink:hover {font-size:.9em; color:#777777; text-decoration:underline;}
a.mediumlink:active {font-size:.9em; color:#0069AA; text-decoration:none;}

a.largelink:link {font-weight:bold; font-size:.9em; color:#399CB0; text-decoration:none;}
a.largelink:visited {font-weight:bold; font-size:.9em; color:#399CB0; text-decoration:none;}
a.largelink:hover {font-weight:bold; font-size:.9em; color:#777777; text-decoration:underline;}
a.largelink:active {font-weight:bold; font-size:.9em; color:#399CB0; text-decoration:none;}

a.textlink:link {font-size:.9em; color:#0069AA; text-decoration:none;}
a.textlink:visited {font-size:.9em; color:#0069AA; text-decoration:none;}
a.textlink:hover {font-size:.9em; color:#777777; text-decoration:underline;}
a.textlink:active {font-size:.9em; color:#0069AA; text-decoration:none;}

a.lightlink:link {font-weight:normal; font-size:.9em; color:#FFDADB; text-decoration:none;}
a.lightlink:visited {font-weight:normal; font-size:.9em; color:#FFDADB; text-decoration:none;}
a.lightlink:hover {font-weight:normal; font-size:.9em; color:#aaaaaa; text-decoration:underline;}
a.lightlink:active {font-weight:normal; font-size:.9em; color:#aaaaaa; text-decoration:none;}

a.listbox:link {font-size:.9em; color:#0069AA; text-decoration:none;}
a.listbox:visited {font-size:.9em; color:#0069AA; text-decoration:none;}
a.listbox:hover {font-size:.9em; color:#777777; text-decoration:underline;}
a.listbox:active {font-size:.9em; color:#0069AA; text-decoration:none;}

a.language_select_link:link {font-size:.9em; color:#000000; text-decoration:none;}
a.language_select_link:visited {font-size:.9em; color:#000000; text-decoration:none;}
a.language_select_link:hover {font-size:.9em; color:#0069AA; text-decoration:none;}
a.language_select_link:active {font-size:.9em; color:#f7f7f7; text-decoration:none;}

/* Lists. CMS */
ol,ul.mediumlist {list-style-type:none; color:#399CB0; margin:10px 0px 0px 18px; padding: 0px; font-size:.9em;}
ul.mediumlist li {margin-bottom:5px;}
ol.smalllist li {margin-bottom:5px;}
li.mediumlist {margin-bottom:10px;}

ol,ul.smalllist {list-style-type:none; color:#000000; margin:5px 0px 0px 18px; padding: 0px;}
ul.smalllist li {margin-bottom:5px;}
ol.smalllist li {margin-bottom:5px;}
li.smalllist {margin-bottom:5px;}

p.subInfo{margin:0 10px 10px 10px; font-size:smaller; font-weight:bold; font-style:italic;}

/* Copyright info. CMS */
#generalcopyrightbox {text-align:center; font-size:.7em; color:#000000; font-weight:normal; margin:10px 0 0 0;}
#footerimages {margin:10px 0px;}
.footerimagespan {margin:0px 15px;}

/* General display for multiple items. CMS */
.answerdisplay {background-color:white; padding:10px 0px; line-height:1.5em; display:none; position:relative;}
.displayblock {background-color:white; padding:0px; display:none; position:relative;}

/* Displaying errors. CMS */
.errorblock 
{
	background-color:#FFDADB; 
	border:2px solid black; 
	color:black;
	position:relative;
	font-size: 16px;
	font-weight: bold;
	text-align: center;
	border-radius:7px;
	-moz-border-radius:7px;
	-webkit-border-radius:7px;	
	margin-bottom:25px;
}

div.alert_icon{text-align:center; margin-bottom:5px;}

div.messageblock 
{	
	color:#0069AA; 
	background-color:#ffffff;
	border:1px 
	solid #0069AA; 
	padding:5px; 
	position:relative; 
	font-weight:bold;
	font-size:larger;
	border-radius:4px;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;	
	margin-bottom:5px;
}
p.messageblock {background-color:#D5E1CB; color:#777777; border:1px solid #399CB0; padding:18px; position:relative; font-weight:bold;}
.lightBackground {background-color:#D5E1CB;}

/* Displaying questions. STM */
div.question {padding:0px;}
div.subquestion {margin-bottom:10px; padding:5px; border-width:1px 0px; border-style:solid; border-color:#aaaaaa; background-color:#FFDADB; display:none;}
div.subquestionshow {margin-bottom:10px; padding:5px; border-width:1px 0px; border-style:solid; border-color:#aaaaaa; background-color:#FFDADB;}

div.q_even {background-color:rgba(255,255,255,0.9); padding:5px; }
div.q_odd {background-color:rgba(255,255,255,0.3); padding:5px;  }

div.q_even,div.q_odd{border:1px solid #eeeeee;}
div.q_even,div.q_odd,div.subquestionLoading, div.subquestion,div.subquestionshow{width:95%;margin:0px auto;margin-bottom:10px;}
div.subquestionLoading, div.subquestion,p.questiongroup,h3.questiongroup,div.q_even,div.q_odd,li.managerFormList,div.subquestionshow {border-radius:4px;	-moz-border-radius:4px;	-webkit-border-radius:4px;  moz-box-shadow: 1px 1px 5px #555555; -webkit-box-shadow: 1px 1px 5px #555555; box-shadow: 1px 1px 5px #555555; position:relative; overflow:hidden;}

div.subquestionLoading{margin-top: 10px; padding: 0 10px;}
div.q_note {background-color:#FFDADB; border:1px solid gray; padding:5px;}

/* Definition lists. CMS */
dl.status {font-size:.9em; clear:both; margin:10px; padding:0px;}
dl.status dt {display:inline; text-align:right; float:left; width:20%; margin:0px; padding:0px 5px 0px 0px;}
dl.status dd {display:inline; float:left; margin:0px; padding:0px; color:#777777;}

/* For application_summary.cfm. CMS */
div.appLink {padding:2px 0px; font-size:x-small;}
div.noLink {color:#aaaaaa; font-weight:bold;}

/* Managing table headings. CMS */
tr.heading {background-color:#399CB0;}
th {background-color:#0069AA; color:white; text-align:left; padding:5px 4px;}
td.bottomborder{border-bottom:1px dotted grey;}
table.bottomborder{border-collapse:collapse;}

/* For displaying the current position in the question process. CMS */
div.statusshown{background-color:#D5E1CB; padding:2px; font-size:.9em;}
div.statusnew{background-color:#f7f7f7; padding:2px; font-size:.9em;}
div.statuscurrent{background-color:#FFDADB; border:1px solid blue; padding:2px; font-size:.9em;}
div.statusperson{background-color:gray; color:white; padding:2px; font-weight:bold; font-size:.9em;}

/* For displaying errors. CMS */
td.errTitle {width:13%; font-size:80%; vertical-align:top; background-color:#f7f7f7;}
td.errContent {width:37%; font-size:80%; vertical-align:top;}

p.smallmargin {margin:5px 0px;}

div.appcolleft {width:127px; display:inline; float:left; margin-right:5px;}
div.appcolright {width:127px; display:inline; float:left; margin-left:5px;}

/* Tabbed items */
ul.tabitems {margin:1px 1px 0px 1px; padding:1px 1px 0px 1px;}
li.tabitem {display:inline; float:left; border:1px solid #0069AA; border-bottom:none; background-color:#aaaaaa;}

a.tablink:link {text-decoration:none; line-height:2em;}
a.tablink:visited {text-decoration:none; line-height:2em;}
a.tablink:hover {text-decoration:none; background-color:#ffffff; line-height:2em;}
a.tablink:active {text-decoration:none; line-height:2em;}

.tablinkcontent {margin:5px 10px;}
.clear {clear:both; height:0px; font-size:0px;}
.tabcontent {display:none; padding:10px; border:1px solid #0069AA;}
.formPermissions{padding:10px; border:1px solid #0069AA;}
#tablist {margin:0px; padding:0px;}
#tabcontents {width:681px; margin:0px; padding:0px;}

#programlist {height:250px; overflow:auto; border:1px solid #399CB0;}
.entityitem {margin:5px 0px 15px 5px;}
.entityinput {display:inline; float:left; margin:5px 0px 10px 5px;}
.entitylabel {display:inline; float:left; margin:7px 0px 10px 5px; width:265px;}
.entitylabelsmall {display:inline; float:left; margin:7px 0px 10px 5px; width:125px;}
.entitylist {margin:0px 10px 10px 10px;}

/* CSS columns for general use. */
.col100 {display:inline; float:left; width:100px;}
.col125 {display:inline; float:left; width:125px;}
.col150 {display:inline; float:left; width:150px;}
.col175 {display:inline; float:left; width:175px;}
.col200 {display:inline; float:left; width:200px;}
.col225 {display:inline; float:left; width:225px;}
.col250 {display:inline; float:left; width:250px;}
.col275 {display:inline; float:left; width:275px;}
.col300 {display:inline; float:left; width:300px;}
.col325 {display:inline; float:left; width:325px;}
.col350 {display:inline; float:left; width:350px;}
.col375 {display:inline; float:left; width:375px;}
.col400 {display:inline; float:left; width:400px;}
.col425 {display:inline; float:left; width:425px;}
.col450 {display:inline; float:left; width:450px;}
.col475 {display:inline; float:left; width:475px;}
.col500 {display:inline; float:left; width:500px;}

.unassignedbox {text-align:center; display:inline; float:left; padding:5px; width:125px; border:1px solid #399CB0;}
.unassignedbox a {text-decoration:none;}
.unassignedbox a:link {}
.unassignedbox a:visited {}
.unassignedbox a:hover {text-decoration:underline;}
.unassignedbox a:active {}

.supercount {font-size:3em; font-weight:bold; color:#399CB0;}

.chartborder {border:1px solid #399CB0; width:375px;}

/* style to hide divs revealed by javascript code. */
.invisible {display:none;}
.vis {display:block; margin:10px 0 0 0;}

/* style for support questions */
.listheader1	{position:relative; font-weight:bold; padding: 0 0 10px 0;}
.listheader2	{background-color:#777777; width:100%; font-weight:bold; padding: 10px 0;}
.listitem1	{background-color: #f7f7f7; width:100%; padding: 10px 0;}
.listitem2	{background-color: #ffffff; width:100%; padding: 10px 0;}
.listname	{display:inline; float:left; width:60%;}
.listaction	{display:inline; float:left; width:20%;}

.centerbold	{text-align:center; position:relative; font-weight:bold; padding: 0 0 10px 0;}
.centertext	{text-align:center; position:relative; padding: 10px 0;}
.headeritemname	{display:inline; float:left; width:60%; color:#ffffff;}
.headeritemaction	{display:inline; float:left; width:20%; color:#ffffff;}

.spacing	{margin: 10px 0;}


/*new style edits for 321Forms (May 28,2009) *JRE* */
#topmenuitems{width:100%;
	/*margin:10px 0 0 1px;
	height:69px;*/
	color:#0069AA;	
/*	background-image:url(../images/bkg.png);
	background-color:#399CB0;*/
/*	background-color:#e9e9e9;*/
/*	padding:0;*/
/*	position:fixed;	*/
/*	overflow:hidden;*/
	overflow:visible;
	z-index:80;
/*	width: 931px;
	padding-bottom: 15px;*/
	/*border-bottom:8px solid #aaaaaa;*/
/*	border-bottom:1px solid #0069AA;*/
	
}

#topmenuitems #topMenuBar a, #topmenuitems #topMenuBar a:hover, #topmenuitems #topMenuBar a:visited, #topmenuitems #topMenuBar a:active,
#msg_dropdown a, #msg_dropdown a:hover, #msg_dropdown a:visited, #msg_dropdownr a:active{
	text-decoration:none;
	color:#0069AA;
	font-size:10px;
	font-family:Arial, Helvetica, sans-serif;
	font-weight:bolder;
}

#topmenuitems ul#topMenuBar{
	position:absolute;
	margin:0;
	padding:0;
	top:0px;
	padding:0px 0 12px 12px;
}
.roundButton ul#topMenuBar{width:180px; right:10px;}

#topmenuitems ul#topMenuBar li, #msg_dropdown li {
	border-left:1px solid #0069AA; /*#ffffff;*/
	display:inline-block;
	float:left;
	height:20px;
	line-height:20px;
	list-style-type:none;
	overflow:visible;
	padding:0 12px;
}

#msg_dropdown{text-align:left; list-style-type:none; display:inline-block; margin:0; padding:0;}

.menu_bar {
	
	
/*	height:100%;*/


	margin:0px;
}

#wordmark_logo{
	/*width:100%;*/
	/*height:40px;
	margin-left:10px;*/
	height: 45px;
	padding:0;
}

.threeTwoOneLogo_fixed{
	position:fixed;
	top:0px;
}

#threeTwoOneLogo a{text-decoration:none;}


.bluehorizrule{height:2px; background-color:#f7f7f7; margin:15px 0 0 0; }
.language_select {
	line-height:44px;
	color:#399CB0;
}
li.language_select {margin:0px; padding:20px; font-family:Arial, Helvetica, sans-serif;  display:inline; font-size: 0.7em; color:#000000;}
#biglogo	{margin:0 0 0 35px;}
#company_div{
	
	text-align:right; 
}

#company_box	{
	/*float:right;
	width:228px;*/
	/*height:96px;
	overflow:hidden;*/
	/*margin-bottom:10px;*/
	text-align:center;
}

#company_box img{
	max-height: 150px;
	width: auto;
	max-width: 100%;
/*	width:95%; 
	height:95%; */
	margin:10px;
	padding:0;
	/*background-image: -webkit-gradient(linear, left bottom, left top, color-stop(0.33, #399CB0, color-stop(0.67, rgb(0,255,255)));
	background-image: -moz-linear-gradient(center bottom, #399CB0 33%, rgb(0,255,255) 67% );*/
}

#change_holder {position:absolute; top:5px; right:5px; background-color:black; color:white; padding:3px 8px;}
.gone{visibility:hidden;}

a#edit_logo{opacity:0.8; filter:alpha(opacity=80);text-decoration:none; min-height:25px; position: absolute; top: 0; right: 0; width: 100px;}
a#edit_logo:hover{opacity:1; filter:alpha(opacity=100);}
a#edit_logo:hover span{text-decoration:underline; cursor:pointer;}

#company_logo	{
	margin:0px;
	padding:10px 10px 0 10px;	
}

.company_logo_fixed{
	position:fixed;
	left:0;
	top:0px;
}

div.leftContentTop
{		
	height:21px;
	margin-bottom:45px;
}

div.leftContent
{
	margin:0px;	
	padding:0 0 30px 0;	
}


div.leftContentBottom
{		
	height:21px;	
}

div.leftContainer
{	
	margin:5px;
	border-radius:4px;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;	
}


/* New Stuff. JRE 9-23-2009 */
.topContainer{
	margin:0px auto;
	width:931px;
	background:url(../images/fade_bg_top_test.png) bottom repeat-y;	
	height:25px;
	margin-top:0px;
	
}


.fullWidthContainer
{
	width:1170px;	
	margin:0px auto;
	background-position-y:100px;
	position:relative;
}

.leftPanel
{
	width:225px;
	margin-right:10px;
	margin-top:1px;
	padding:0px;
	float:left;
	text-align:left;
	position:relative;
//	overflow:visible;
//	height:50px;
	
	border-radius:7px;
	-moz-border-radius:7px;
	-webkit-border-radius:7px;		
}

#leftPanelSub
{
	width:225px;
}
.leftPanel_fixed{
	position:fixed;
}

.leftContainerDiv_fixed
{
	position:fixed;
	width:225px;
	top:100px;
}

.rightPanel
{
	width:931px;
	margin:-10px 0 0 0;
	padding:0px;
	float:left;
}

.basicCenterPanel{
	margin:20px 0 0 0;
	padding:0px;
}

.centerContainer
{
//	margin:0px auto;
/*	overflow:hidden;*/
	margin-bottom:50px;
	width:931px;
	padding:0px;	
	background-color:#f7f7f7;
	border-radius:7px;
	-moz-border-radius:7px;
	-webkit-border-radius:7px;
	border-color:#aaaaaa;
	border-style:solid;
	border-width:0 1px 1px 1px;
	
	moz-box-shadow: 1px 1px 8px #555555;
	-webkit-box-shadow: 1px 1px 8px #555555;
	box-shadow: 1px 1px 8px #555555;
}

.bottomContainer{
	margin:0px auto;
	width:931px;
	background:url(../images/fade_bg_bottom.png) repeat-y;
	height:96px;
	padding:0;
	margin-bottom:25px;
	margin-top:0px;
	
}


div.roundButtons, div.roundButtonBlur{
	position:relative;
	margin:0 auto;
	z-index:1;
	font:bold 12px;
	padding:7px 11px;	
	text-align:center;
	
	border-bottom-right-radius:7px;
	-moz-border-radius-bottomright:7px;
	-webkit-border-bottom-right-radius:7px;
	border-bottom-left-radius:7px;
	-moz-border-radius-bottomleft:7px;
	-webkit-border-bottom-left-radius:7px;	
}

div.roundButton{background:#0069AA url(../images/alert-overlay.png); box-shadow: 0 1px 3px rgba(0,0,0,0.5); moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5); -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);}
div.roundButtonBlur{background-color:white;}

.roundButton a{color:#ffffff; text-decoration:underline;}
.roundButtonBlur a{color:#0069AA; text-decoration:none;}
.roundButton a, .roundButtonBlur a{cursor:pointer;}

.roundButtonBlur ul {display:none;}
.roundButton ul {
	position:absolute;
	display:table;
	width:100%;
	list-style-type:none;
	padding:10px; 
	text-align:left;
	margin:22px 0 0 0;
	background-color:#ffffff;
	zoom:100%;
	border:5px solid #0069AA;
	border-radius:7px;
	-moz-border-radius:7px;
	-webkit-border-radius:7px;
	right:0px;
	z-index:600;
}
.roundButton ul a{
	color:#0069AA;
	font:12px "Myriad Pro";
	line-height:24px;
	text-decoration:none;
}

.roundButton ul a:hover{text-decoration:underline;}

.roundButton .roundButtonSub{}

#nav_menu{
	/*margin:0 0 0 50px;*/
	margin:0;
	/*position:absolute;*/
	right:0;
	padding:0;
	
}

#tab_menu_choice_div,menu_choice_div{
	overflow:hidden;
	display:table;
	margin:0px auto;
	width:931px;
}

.menu_choice_div_relative .tab_menu_choice_div_relative{
	position:relative;
}

#menu_choice_div{
/*	moz-box-shadow: 1px 1px 8px #555555;
	-webkit-box-shadow: 1px 1px 8px #555555;
	box-shadow: 1px 1px 8px #555555;*/
}

.menu_choice_div_fixed{
/*	padding-top: 25px;*/
/*	position:absolute;*/
/*	left:200px;	*/
/*right:0;*/

	
/*	border-bottom:1px solid #0069AA;*/
	
	border-top:0px;
	
	border-radius:0px;
	-moz-border-radius:0px;
	-webkit-border-radius:0px;
	z-index:85;
/*	border-left:1px solid #aaaaaa;
	border-right:1px solid #aaaaaa;*/
/*	background-color:#e9e9e9;*//*#f7f7f7;*/
	
	moz-box-shadow: 0;
	-webkit-box-shadow: 0;
	box-shadow: 0;
/*	margin:0;*/
	overflow-x:visible;
	width:931px;
}

.downarrow{
	width: 0; 
	height: 0; 
	border-left: 5px solid transparent;
	border-right: 5px solid transparent;
	
//	border-top: 5px solid #000;
}

.roundButton .downarrow{border-top: 5px solid #ffffff;}
.roundButtonBlur .downarrow{border-top: 5px solid #0069AA;}


.tab_menu_choice_div_fixed{
	position:fixed;	
	/*border-bottom:10px solid #0069AA;*/
	border-bottom:10px solid #aaaaaa;
	border-top:0px;
	top:0px;
	border-radius:0px;
	-moz-border-radius:0px;
	-webkit-border-radius:0px;
	z-index:85;
/*	border-left:0px solid #aaaaaa;
	border-right:0px solid #aaaaaa;*/
	background-color:#ffffff;
	width:933px;
	/*background-color:#f7f7f7;*/
}

.tab_menu_choice_div_fixed #nav li a {/*background-color:transparent; color:#000000;*/}

#home_icon	{
	float: left;
	padding: 5px;
}
.blue	{color:#0069AA; font-weight:bold;}
.green	{color:#399CB0; font-weight:bold;}

a.play_button{text-decoration:none; cursor:pointer; background-color:#000000; display:block;}
a.play_button:hover{background-color:#D5E1CB;}

/* top menu styles lifted from the landing page. JRE 10-26-2010*/
/*---- Header Styles ----*/
#basicHeader{
	padding:20px 30px;
	background-color: #0069AA;
}

#intHeader {	
}

	#intHeader .left {
		float:left;
		padding:14px 0 0;
		width:322px;
	}
	
	#intHeader .right {
		float:right;
		height:100px;
	}
		
	
	#intHeader .footer {
		clear:right;
		float:right;
	}
		#nav {
			/*width:921px;*/
			margin:0px;
/*			padding:6px 5px;*/
			border-top-right-radius:7px;
			-moz-border-radius-topright:7px;
			-webkit-border-top-right-radius:7px;
			border-top-left-radius:7px;
			-moz-border-radius-topleft:7px;
			-webkit-border-top-left-radius:7px;	
		}
		
		#nav li {
		float: left;
		list-style: none;
		font-weight: bold;
		font-size: 10px;		
		font-family: Helvetica;
		padding-right:2px;
	}

	#nav li a {
		display: block;		
		/*color:#ffffff;	*/
		color:#0069AA;
		
		/*background-color:#0069AA;*/
		
		padding:5px 12px;	
		text-align:center;
		text-decoration: none;
		border-bottom-right-radius:7px;
		-moz-border-radius-bottomright:7px;
		-webkit-border-bottom-right-radius:7px;
		border-bottom-left-radius:7px;
		-moz-border-radius-bottomleft:7px;
		-webkit-border-bottom-left-radius:7px;		
		margin:0px;
	}		
	
	
	#nav li a.selectedPage, #nav li a.selectedPage:hover{
		background-color:#e9e9e9;//#f7f7f7;
		color:#0069AA;			
		display:block;	
	}			

	#nav li a:hover {	
		background-color:#f7f7f7;//#e9e9e9;//#D5E1CB;
		color:#0069AA;
		display:block;		
		text-decoration: underline;			
	}
	
	#intHeader .right a{color:red; padding:0 10px; font-size:12px;}
	#intHeader .right a, #intHeader .right a:hover, #intHeader .right a:visited{color:#0069AA;}
	
#intSpacerFooter {
	clear:both;
}

.label{text-align:right;}

p.heading {text-align:left; font-size:.9em; margin:0px 0px 15px 0px; padding:0px 0px 10px 0px; font-weight:bold; color:#000000; font-size:.9em;}

/* style for employee bulk import */
input.disabled_text{background-color:transparent; border:0px; width:100%;}
input.enabled_text{background-color:transparent; background-color:#FFDADB; border:0px; width:100%;}
ul.csv_guidelines li{margin-bottom:5px;}
ul.csv_guidelines ul{list-style-type:decimal;}
ul.csv_guidelines ul li{margin-bottom:0px; color:#990000}
span.error_key{background-color:#FFDADB; padding:0 10px; border:1px solid #000000; }
img.submit_btn {cursor:pointer; }

/*new employee dashboard interface */
.dashboardRight
{
	border:1px solid #aaaaaa; 
	padding:5px; 
	position:relative;
	border-radius:4px;
	margin:10px 0;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
}

.dashboardRight h1{font-size:14px; text-decoration:underline; margin-bottom:5px;}
.dashboardRight h2{font-size:11px; margin:0; padding:0;}
.dashboardRight p{font-size:9px; margin:0 0 0 5px; padding:0;}
.dashboardRight a.bottomLink{font-size:11px; margin:0; padding:0; margin-top:5px; display:block; text-align:right;}
.dashboardRight .alertText{color:#990000;}

/*documentation style*/
div.docBlock_odd 
{	
	color:#0069AA; 
	background-color:#ffffff;
	border:1px 
	solid #0069AA; 
	padding:5px; 
	position:relative;
	border-radius:4px;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;	
	margin-bottom:5px;
	margin-top:15px;
}

div.docBlock_even
{	
	color:#0069AA; 
	background-color:transparent;
	padding:5px; 
	position:relative;
	border-radius:4px;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;	
	margin-bottom:5px;
	margin-top:15px;
}

div.iconBoxRegular{
	-moz-border-radius:7px;
	-webkit-border-radius:7px;	
	height:200px;
	
	width:128px;
	
	padding:33px;
	float:left;	
	box-sizing: content-box;
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
}

div.iconBoxRegular img{
	height:128px; 
	width:128px;
}

div.iconBoxRegular p{
	text-align:center;
}

div.iconBoxRegular{
	border:2px solid black;
	border-radius:7px;
	-moz-border-radius:7px;
	-webkit-border-radius:7px;	
	background-color:#399CB0;
}

div.iconBox p{
	font-size:16px;
	font-weight:bold;
}

div.iconBox{
	position:relative;
}

div.smallIconBox{
	width:20px;
	height:266px;
	padding:0;	
	margin:0;
	overflow-x:hidden;
	overflow-y:hidden;
}

div.smallIconBox img{
	display:none;
}

div.smallIconBox div.detailsContainer, div.iconBoxRegular div.detailsContainer{
//	overflow:scroll;
	display:none;
}

div.detailsContainer h1, div.detailsContainer h2, div.detailsContainer h3, div.detailsContainer p{
	background-color:transparent;
}

div.smallIconBox p{	
	height:260px;
	width:260px;
	padding:0;
	margin:0;
	-moz-transform: rotate(270deg);  /* FF3.5+ */
	-o-transform: rotate(270deg);  /* Opera 10.5 */
	-webkit-transform: rotate(270deg);  /* Saf3.1+, Chrome */
	-ms-transform: rotate(270deg);  /* IE9 */
	transform: rotate(270deg);  
	filter: progid:DXImageTransform.Microsoft.Matrix(/* IE6–IE9 */ 
		M11=-1.8369701987210297e-16, M12=1, M21=-1, M22=-1.8369701987210297e-16, sizingMethod='auto expand');
	zoom: 1;
}

div.largeIconBox{

	width:650px;
	
	margin:0px;
text-align:center;
}

div.mainContainer{
	text-align:center;
}

div.largeIconBox div.mainContainer{
	float:left;
	height:184px;
	width:128px;
	margin-right:33px;
}

div.largeIconBox div.detailsContainer{
	display:inline-block;
	float:left;
	border-left:1px solid black;
	width:485px;
	height:100%;
}

div.largeIconBox img{
}

div.largeIconBox p{
	
}

div.leftIconBox{
	margin-right:12px;
}

a.iconLink{
	color:#000000;
	text-decoration:none;
}

div.iconBoxTransparency{
	opacity:0.5;
	filter:alpha(opacity=50);
}

div.docBlock_odd img, div.docBlock_even img{width:400px; margin:20px; padding:5px; border:2px solid #000000;}
div.docBlock_odd ul, div.docBlock_even ul{margin:20px 0;}


input.bigButton{margin:0px auto; margin-top:15px; padding:10px 0; width:200px; display:block; cursor:pointer; font-weight:bold;}

.hide_inactive{visibility:hidden; display:none;}

.pdf_icon{
	float:left; 
	font-size:10px;
	text-align:center;
	margin:0 0 20px 0 ;
}

.pdf_icon img{
	padding:10px 3px;
	border-radius:7px;
	-moz-border-radius:7px;
	-webkit-border-radius:7px;	
	background-color:#f7f7f7
}

.pdf_details h1{
	text-align:center;
	margin-bottom:20px;
	padding:10px 0;
}

.pdf_details .description{	
	color:#0069AA; 
	background-color:#ffffff;
	border:1px 
	solid #0069AA; 
	padding:5px; 
	font-weight:bold;
	font-size:larger;
	border-radius:4px;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;	
	display:inline-block;
	width:530px;
	
}

.pdf_details img{
	margin:0px;
}

.pdf_red{
	border:3px solid #990000;
}

.pdf_yellow{
	border:3px solid #FFFF80;
}

.pdf_green{
	border:3px solid #7AC142;
}

.status_icon{
	font-size:10px;
	text-align:center;
	width:100px;
	height:100px;
}

.status_icon img{
	margin-bottom:10px;
}

.office_info_container{width:443px; padding:10px 0; height:175px; margin:0 0 0 43px; float:left; border:2px solid #000; background-color:#fff; border-radius:7px; -moz-border-radius:7px; -webkit-border-radius:7px;	}
.office_info_container *{padding:3px; margin:0px;}

.household_info_container{width:443px; padding:10px 0; height:175px; margin:0 0 0 43px; float:left; border:2px solid #000; background-color:#fff; border-radius:7px; -moz-border-radius:7px; -webkit-border-radius:7px;	}
.household_info_container h6{text-align:left; padding:10px 0 0 10px; margin:0; font-size:14px;}
.household_info_container p.personName{text-align:left; padding:0 0 0 50px; margin:0; font-size:12px; font-weight:normal;}
a.bottomLink{color:white; text-decoration:none;}


a.inbox_link{text-decoration:none; color:#000000;}
.siteLink a.inbox_link, .siteLink2 a.inbox_link, .wideContainer a.inbox_link {text-decoration:none; color:#000000;}
a.inbox_link:hover{text-decoration:underline;}

div.siteLink {margin:10px;	display:inline-block; background:#399CB0 url(../images/alert-overlay.png) repeat-x; padding: 33px; text-align:center; }
div.siteLinkTransparency{
	opacity:0.5;
	filter:alpha(opacity=50);
}
.largerWideContainer > .siteLinkTransparency {opacity:1; filter:alpha(opacity=100);}
div.disabledSiteLink {opacity:0.5;	filter:alpha(opacity=50); border:2px solid black;	border-radius:7px;	-moz-border-radius:7px;	-webkit-border-radius:7px;	background-color:#399CB0; padding: 33px; text-align:center; }
div.siteLink2 {margin:10px; display:inline-block; overflow:hidden; background:#399CB0 url(../images/alert-overlay.png) repeat-x; padding: 33px; text-align:center; }
div.siteLink2Taller{height:auto;}

div.wideContainer {margin:50px; background:#399CB0 url(../images/alert-overlay.png) repeat-x; position:relative; height:60px; overflow:hidden;}
div.wideContainer:hover, div.siteLink:hover, div.siteLink2:hover, div.dashboard-panel:hover{
 	box-shadow: 0 0 6px rgba(0, 0, 255, 1);
    -webkit-box-shadow: 0 0 6px rgba(0, 0, 255, 1); 
    -moz-box-shadow: 0 0 6px rgba(0, 0, 255, 1);
}
/*div.wideContainer, div.siteLink, div.siteLink2{border:1px solid transparent;}*/

div.wideContainerData{border-top:1px solid #000000; border-bottom:1px solid #000000; padding:20px; background-color:#ffffff; margin-bottom:60px;}
div.largerWideContainer {height:auto; /*width:860px;*/}
div#people_links{overflow:hidden;}
div.people_links_hidden{height:0;}
people_list p{display:block;}
h1#site_header{border:none; margin-bottom:20px;}

#eVerifyForm.form-inline .form-group{margin-bottom:15px;}
.everify label, .everify_prep label{display:block; font-weight:bold; font-size:15px;}
.everify .basics, .everify_prep .basics{margin-bottom:10px;}
.everify .leftSide{float:left; border-right:1px solid #000000; border-bottom:1px solid #000000; border-top:1px solid #000000;}
.everify .rightSide{float:left;  border-bottom:1px solid #000000;  border-top:1px solid #000000}
.everify .basics .floating, .everify_prep .basics .floating{float:left; margin-right:3px;}
.everify select, .everify_prep select{width:99%;}
.everify_prep textarea{width:98%;}
.everify>div{padding:10px 15px 0 15px;}
.everify>span>div{padding:0 15px 10px 15px; }
.everify_prep>span>div{padding:10px; }
.everify>span, .everify_prep>span{padding:0; display:inline-block; width:100%;}
.everify label, .everify_prep label{padding-left:3px;}

.detail_table .left{width:50%; background-color:#ffffff; border-right:1px solid #000000; border-bottom:1px solid #000000; text-align:right;}
.detail_table .right{width:50%; background-color:#f7f7f7; border-bottom:1px solid #000000;}
.detail_table .headline{background-color:#399CB0; text-align:center; font-weight:bold;}
.detail_table td{padding:15px; }
.detail_table {border:2px solid #000000;}


.detail_table_container ul li{
	margin:0; 
    padding:0; 
    list-style:none;
}
	.detail_table_container ul li label{font-weight:bold; display:inline-block; text-align:right; padding-right:5px;}

.everify_hidden{
	display:none;
}

#loadingGifHolder{position:fixed; bottom:0px; right:5px;}

#translation_select a, #translation_select a:visited, #translation_select a:active{
	margin-left:5px; 
	color:#ffffff; 
	text-decoration:none;
	font-size:10px;
}

#topMenuContainer{/*width:1170px;*/ margin:0px auto; position:relative; float:left;}
#translation_select a:hover{text-decoration:underline; color:#ffffff; font-size:10px;}
#translation_select .current{color:#D5E1CB; font-size:10px;}
#translation_select{color:#000000; font-size:10px;}

a.employeeEmail{text-decoration:none;}
a.employeeEmail:hover {text-decoration:underline;}

#hiddenContent1 {float:left; display:none; margin-left:30px; margin-top:10px; font-size:10px; text-align:center; padding:3px; border:1px solid black; width:300px; background-color:#FFFF80; border-radius:4px; -moz-border-radius:4px;	-webkit-border-radius:4px;	}

#activation_hands{
	font-size:.9em;
	background: url(../images/activation_hands.png) no-repeat;
	padding: 55px 0;
	background-size:cover;
	border-radius:50px;
	-moz-border-radius:50px;
	-webkit-border-radius:50px;	
}

@media only screen and (max-width : 850px) {
	.loginFormBox{
		margin:0px auto !important;
		margin-bottom:20px !important;
		float:none !important;
		max-width:90%;
	}	
}

@media only screen and (min-width : 851px) {
	.loginFormBox{
		width:40%;
		margin:0 5%;
	}
}

.loginFormBox{

	float:left;
	background:url(../images/landing/login-form-bg.png);
	
	padding:15px;	
	min-width:321px;
	height:350px;
	border-radius:7px;
	-moz-border-radius:7px;
	-webkit-border-radius:7px;	
	
	}
	
	.loginFormBox h2 {
		text-align:center;
	}
	
	.loginFormBox label {
			color:#0069AA;
					
		}
		
		.loginFormBox input {
		}
		
		.loginFormBox button {
			background:url(../images/submit-button.png) no-repeat;
			border:none;
			clear:both;
			cursor:pointer;
			height:39px;
			width:111px;
		}
		
		.loginFormBox a {
			color:#399CB0;			
			font-size:11px;			
			position:relative;
			right:215px;							
			text-decoration:underline;
}


.hover_link_area {
	width:250px; 
	margin:0px auto; 
	position:relative; 
	height:40px;
	z-index:17;
	margin-bottom:20px;
}

.hover_link_area .hover {
	position:absolute;
	width:100%;
}

.hover_link_area ul.isHovering{
	background-color:white;
	border-color:#aaaaaa;
	border-style:solid;
	border-width:0 1px 1px 1px;
	
	moz-box-shadow: 1px 1px 8px #555555;
	-webkit-box-shadow: 1px 1px 8px #555555;
	box-shadow: 1px 1px 8px #555555;
}

.hover_link_area ul.isHovering > li > p > a{text-decoration:underline;}

.hover_link_area .hoverli {
	text-align:center;
}

.hover_link_area .hoverli p a{
	color:#399CB0;
    text-decoration:none; 
    display:block;	
	font-weight:bold;
}



.hover_link_area ul,.hover_link_area li {
    margin:0; 
    padding:0; 
    list-style:none;
}

.hover_link_area .menu_class {
    border:1px solid #777777;
}

.hover_link_area .file_menu {
    display:none;
    width:100%;
	font-weight:bold;
	
	border-color:#aaaaaa;
	border-style:solid;
	border-width:0 1px 1px 1px;
	
	moz-box-shadow: 1px 1px 8px #555555;
	-webkit-box-shadow: 1px 1px 8px #555555;
	box-shadow: 1px 1px 8px #555555;
}

.hover_link_area .file_menu li {
	background-color:#0069AA
}

.hover_link_area .file_menu li.currEmp {
    background-color: #f7f7f7;
}

.hover_link_area .file_menu li a {
    color:#ffffff; 
    text-decoration:none; 
    padding:10px; 
    display:block;
}

.hover_link_area .file_menu li.currEmp span {
    color:#000000; 
    text-decoration:none; 
    padding:10px; 
    display:block;
}

.hover_link_area .file_menu li a:hover {
    padding:10px;
    font-weight:bold;
	color:#ccc;
/*    color: #399CB0;*/
}

li#message_note {border-left-width:0px; position:relative; zoom: 1; *display: inline;}
li#message_note div#msg_details {
	border:1px solid #aaaaaa;
	moz-box-shadow: 1px 1px 8px #555555;
	-webkit-box-shadow: 1px 1px 8px #555555;
	box-shadow: 1px 1px 8px #555555;
	height:350px; 
	width:300px; 
	position:fixed; 
	margin-top:5px; 
	background-color:#ffffff; 
	z-index:9999;

}
li#message_note #msg_arrow{position:absolute; top:-15px; left:3px;}
li#message_note #msg_alert{height:20px; }
li#message_note ul{padding:0; margin:0;}
li#message_note #messages_top{}

/*message 'to' search styles */
div#send_msg_to_container{
	visibility:hidden; position:absolute; display:block; border:1px solid #c7c7c7; background-color:#f7f7f7; margin-top:5px; border-bottom-width:10px;
	
	moz-box-shadow: 1px 1px 8px #555555;
	-webkit-box-shadow: 1px 1px 8px #555555;
	box-shadow: 1px 1px 8px #555555;
}
div#people_suggestion_box{width:300px; max-height:100px; overflow:auto;}
div#people_suggestion_box ul{margin:0; padding:0; list-style-type:none;}

span.removableContainer{
	margin: 0 4px 4px 0;
	float:left; 
	background-color:#fff; 
	border:1px solid black;
	padding: 3px 16px 3px 6px;
	border-radius:3px;
	-moz-border-radius:3px;
	-webkit-border-radius:3px;	
	position:relative;
	font-weight:bold;
	font-size:11px;
}

span.removableContainerLink{
font-size: 10px;
font-weight: bold;
position:absolute;
top:2px;
right:3px;

}

span.removableContainer a{
	text-decoration: none;
}

span.removableContainer a:hover{
	color:red;
	background-color:#FFFF80;
}

#topmenuitems #topMenuBar a.msg_list_link, #msg_dropdown a.msg_list_link {display:block; }

#topmenuitems #topMenuBar a.msg_list_link:hover, #allConversations a.msg_list_link:hover {background-color:rgba(57,156,176,0.15);}

#msg_details #msgs_headline{float:left; font-weight:bold; padding-left:5px;}
#msg_details #compose_link{float:right; padding-right:5px;}
#msg_center{border-top:1px solid; background-color:#f7f7f7; height:25px; padding:0; margin:0; text-align:center;}

#msg_dropdown li.msg_item {overflow:hidden;}
#msg_dropdown #msg_scrollpane{height:303px;}
#msg_dropdown #msg_scrollpane{height:303px; overflow-y:scroll;}

li.msg_item {overflow:hidden;}
.msg_item .msg_date{display:block;font-size:9px; float:right;}
.msg_item .msg_sender{display:block; font-size:15px; font-weight:bold;}
.msg_item .msg_subject{display:block; font-size:13px; font-weight:bold;}

ul.message_opt{padding:0; margin:0; list-style-type:none; font-weight:bold; font-size:12px; line-height:20px;}
ul.message_opt li{
	margin:5px 3px 5px 0; 
	border:2px solid #399CB0;
	border-radius:7px;
	-moz-border-radius:7px;
	-webkit-border-radius:7px;	

}
ul.message_opt a{text-decoration:none; display:block;  padding:5px 10px; color:#0069AA;	text-align:center; }
ul.message_opt a:hover{background-color:rgba(0,105,170,0.1);}


#prev_msg_container{max-height:220px; margin-bottom:20px;}
#prev_msg_container ul{list-style-type:none; margin:0; padding:0;}
#prev_msg_container li.message_item{min-height:100px; border-bottom:2px solid #ccc; padding:5px 0; background-color:#ffffff;}
#prev_msg_container .sender_name{font-weight:bold; font-size:16px; color:#0069AA;margin-bottom:10px;}
#prev_msg_container .send_date{display: block; font-size: 9px; float: right;}
#prev_msg_container .subject{font-weight:bold; font-size:14px; margin:5px 0;}
#prev_msg_container .msg_content{font-size:12px;}
#prev_msg_container a.new_convo{text-decoration:none;}
#prev_msg_container a.new_convo:hover{text-decoration:underline;}

#allConversations ul{list-style-type: none;margin:0;padding:0; }
#allConversations ul a{text-decoration: none; color: #0069AA; display:block; height:50px;}


#conversation_participants {float:right; width:23%;}
#conversation_participants h6 {margin:0; padding:0; height:20px;}
#conversation_name_list{max-height:200px;}
#conversation_name_list ul {margin:5px 0 0 0; padding:0 0 0 7px; list-style-type: none; font-size:10px;}


ul.employee_view_extra_items{
	list-style:none;
	margin:0;
	padding:0;
	position:relative;
	text-align:center;
}


ul.employee_view_extra_items li{
	height:200px;
	vertical-align:top;
	border: 0;
	background-image: url('../images/alert-overlay.png');
	background-repeat: repeat-x;
	
	display: inline-block;
		
	padding: 5px 10px 6px;
	background-color: #eee;
	text-decoration: none;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	box-shadow: 0 1px 3px rgba(0,0,0,0.5);
	-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);
	-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);
	/*text-shadow: 0 -1px 1px rgba(0,0,0,0.25);*/
	border-bottom: 1px solid rgba(0,0,0,0.25);
	position: relative;
	/*width: 128px;*/
	margin: 5px 5px;


/*

	display:block;
	list-style:none;
	margin:0;
	padding:0;
	*/
/*	right:50%;*/


/*	width: 128px;
	height: 128px;
	margin: 5px 5px;
	position: relative;
	float: left;
	text-align: center;
	overflow: hidden;
	border-radius: 7px;
	-moz-border-radius: 7px;
	-webkit-border-radius: 7px;
	border-width:3px;
	border-style:solid;
	font-weight:bold;
	font-size:10px;
	padding:10px;
*/
/*	
	display: -webkit-box;
	display: -moz-box;
	display: box;
	-webkit-box-align: center;
	-moz-box-align: center;
	box-align: center;
*/
} 

ul.employee_view_extra_items li h1{color:#0069AA; background-color:transparent; font-size:14px; margin:10px 0; text-align:center; text-shadow:none;}
ul.employee_view_extra_items li a p{font-size:10px; font-weight:bold; color:inherit;}
ul.employee_view_extra_items li p{font-size:10px; font-weight:bold; color:black;}
ul.employee_view_extra_items img {height:75px; width:75px; display:block; margin:0px auto;}



.complete{
	/*background-color:#7AC142;*/
	/*border-color:#7AC142;
	background-color:rgba(122,193,66,0.15);*/
}
.pending{
/*	background-color:yellow;*/
	/*border-color:yellow;
	background-color:rgba(255,255,0,0.15);*/
}
.action_needed{
/*	background-color:red;*/
	/*border-color:red;
	background-color:rgba(255,0,0,0.15);*/
}

a#msg_clicker{opacity:1;}

a#msg_clicker:hover{opacity:1;}


			
.styledbutton, .styledbutton:visited {
	border:0;
	background: #222 url(../images/alert-overlay.png) repeat-x; 
	display: inline-block; 
	padding: 5px 10px 6px; 
	color: #fff; 
	text-decoration: none;
	border-radius:5px;	
	-moz-border-radius: 5px; 
	-webkit-border-radius: 5px;
	box-shadow: 0 1px 3px rgba(0,0,0,0.5);
	-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);
	-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);
	text-shadow: 0 -1px 1px rgba(0,0,0,0.25);
	border-bottom: 1px solid rgba(0,0,0,0.25);
	position: relative;
	cursor: pointer;
}

	.styledbutton:hover							{ background-color: #111; color: #fff; }
	.styledbutton:active							{ top: 1px; }
	.small.styledbutton, .small.styledbutton:visited 			{ font-size: 11px; padding: ; }
	.styledbutton, .styledbutton:visited,
	.medium.styledbutton, .medium.styledbutton:visited 		{ font-size: 13px; font-weight: bold; line-height: 1; text-shadow: 0 -1px 1px rgba(0,0,0,0.25); }
	.large.styledbutton, .large.styledbutton:visited 			{ font-size: 14px; padding: 8px 14px 9px; }
	
	.green.styledbutton, .green.styledbutton:visited		{ background-color: #7AC142; }
	.green.styledbutton:hover						{ background-color: #749a02; }
	.blue.styledbutton, .blue.styledbutton:visited		{ background-color: #2daebf; }
	.blue.styledbutton:hover							{ background-color: #007d9a; }
	.red.styledbutton, .red.styledbutton:visited			{ background-color: #e33100; }
	.red.styledbutton:hover							{ background-color: #872300; }
	.magenta.styledbutton, .magenta.styledbutton:visited		{ background-color: #a9014b; }
	.magenta.styledbutton:hover							{ background-color: #630030; }
	.orange.styledbutton, .orange.styledbutton:visited		{ background-color: #ff5c00; }
	.orange.styledbutton:hover							{ background-color: #d45500; }
	.yellow.styledbutton, .yellow.styledbutton:visited		{ background-color: #FFFF80; color:black; text-shadow:none;}
	.yellow.styledbutton:hover							{ background-color: #E6E673;  color:black; text-shadow:none;}
	
	.mphr.styledbutton, .mphr.styledbutton:visited		{ border:1px solid red; background-color: white; color:black; text-shadow:none;}
	.mphr.styledbutton:hover							{ background-color: #f7f7f7;  color:black; text-shadow:none; border:none;
															box-shadow: 0 0 6px rgba(0, 0, 255, 1);
														    -webkit-box-shadow: 0 0 6px rgba(0, 0, 255, 1); 
														    -moz-box-shadow: 0 0 6px rgba(0, 0, 255, 1);
														
														}
	
	.primary.styledbutton, .primary.styledbutton:visited		{ background-color: #0069AA; color: white; text-shadow:none;}
	.primary.styledbutton:hover							{ background-color: #399CB0; color: black;}
	
	.secondary.styledbutton, .secondary.styledbutton:visited		{ background-color: #399CB0; color: black; text-shadow:none;}
	.secondary.styledbutton:hover							{ background-color: #0069AA; color: white;}

	.styledbutton.full{width:100%; text-align:center;}
	
	/*three two one forms iframe */
	#three21Iframe{width:100%; border:none; overflow:scroll; height:450px;}
	/*#blank_template_container{height:450px;overflow:hidden;}*/
	
	
	/*moblie styles*/
	#mobileHeader{height:12%; width:98%; margin:0px auto; background-color:white;border-radius:7px; margin-top:5px; -moz-border-radius:7px;	-webkit-border-radius:7px; position:relative;	}
		#mobileHeader img{height:50%;  top: 25%;  }
		#mobileHeader img.site{right:10px; position: absolute;}
		#mobileHeader img.company{left:10px; position: absolute;}
		#mobileHeader img.menu{margin:0px auto; display:block; padding-top:1%; cursor:pointer;	}
	#mobileHeader ul{margin:0px auto; width:.75em}
	#mobileHeader li{list-style-type: none;}

	
		
	#mobileMeat{height:80%; width:98%; margin:0px auto; background-color:white;border-radius:7px; margin-top:10px; -moz-border-radius:7px;	-webkit-border-radius:7px; position:relative;	}	
	#mobileFooter{position:absolute; bottom:0; width:100%; height:8%;}
		#mobileFooter img{height:100%; margin-left:10px;}


	header{width:100%; margin:0; padding:0; background-color:#0069AA; position:fixed; z-index:800; top:0; border-bottom:1px solid black;}
	header nav{float:right; }
	header nav #menu-icon img{display:block; height:20px;}
	header nav #menu-icon{display:block; margin:5px; padding:5px 10px; border-left: 1px solid #f7f7f7;}
	header nav #menu-icon:hover{opacity:0.5;}
	header h1{text-align:left; background-color:#0069AA; color:#f7f7f7; margin:0; padding:10px;}
	header h1 a{color:#f7f7f7; text-decoration:none;}
	header h1 a:hover{opacity:0.5;}
	
	header nav ul, header nav ul { 

		position: absolute;
		padding: 20px 0;
		background: #fff;
		border-width:0 0 2000px 0;
		border-color:#f7f7f7;
		border-style:solid;
		left: 0px;
		top: 44px;
		width: 100%;
		list-style-type:none;
		margin:0;		

	}
	
	header nav li {

		text-align: center;
		width: 100%;
		padding: 0;
		margin: 0;

	}

	
	header nav li a{
		text-decoration:none;
		display:block;
		padding:10px 0;
		font-weight:bold;
		color:#0069AA;
		
	}
	
	header nav li a:hover{
		background-color:#f7f7f7;
	}
	
#small_menu_link_container{display:none;}

/*form selection style*/
p.requiredContainer{float:right; bottom:0; height:50%; text-align:center; z-index: 5;   overflow: visible; padding-bottom:3px;}
p.requiredContainer span{color:red; margin-right:20px; font-size:30px; opacity:0.3; border-color: red; border-width: 3px 0; border-style: solid; font-style: italic;}
@media only screen and (max-width : 450px) {
	p.requiredContainer{float:none;}
}	



@media only screen and (min-width : 1000px) {
	#menu_choice_div #nav_menu{display:block; }
	#topMenuContainer #nav{display:block;}
}


/*style for the page when width of screen is an issue. JRE 6/26/2013*/
@media only screen and (max-width : 1000px) {
	.leftPanel{display:none;}
	#menu_choice_div #nav_menu{display:none; width: 100%; position: fixed; left: 0; margin-top: 50px; border-bottom: 2000px solid #f7f7f7}
	.visible_breadcrumb{display:block; float:none; width:100%; max-width:none; max-height:none;}
	#menu_choice_div #nav_menu .roundButtons, #menu_choice_div #nav_menu .roundButtonBlur{border-bottom-right-radius: 0px; -moz-border-radius-bottomright: 0px; -webkit-border-bottom-right-radius: 0px; border-bottom-left-radius: 0px; -moz-border-radius-bottomleft: 0px; -webkit-border-bottom-left-radius: 0px;}
		.visible_breadcrumb .roundButtonSub ul{position:inherit; margin:0; padding:0; background-color:inherit; border:1px solid #0069AA;}
		.visible_breadcrumb div.roundButton{background:white;}
		.visible_breadcrumb .roundButton a{line-height:inherit; text-decoration:none; color:#0069AA}
		.visible_breadcrumb .roundButtonSub .roundButton{background-color:white; background-url:none;}
		.visible_breadcrumb ul li{margin:10px; display:inline;}
	.menu_choice ul li.visible_breadcrumb a{display:inline; padding:0 10px;}
		

	
	
	#small_menu_link_container{display:block; position: fixed; width: 100%; left: 0; text-align: center;}
	#small_menu_link_container a{display:inline-block;}
	
	#topMenuContainer #nav{border-bottom:2000px solid #f7f7f7; display:none; position:fixed; width:100%; left:0; padding:0; margin-top:50px; background-color:white; border-top-right-radius: 0px; -moz-border-radius-topright: 0px; -webkit-border-top-right-radius: 0px; border-top-left-radius: 0px; -moz-border-radius-topleft: 0px; -webkit-border-top-left-radius: 0px;
	
	}
	#topMenuContainer #nav li{display:block; float:none;}
	#topMenuContainer #nav li a{border-bottom-right-radius: 0px; -moz-border-radius-bottomright: 0px; -webkit-border-bottom-right-radius: 0px; border-bottom-left-radius: 0px; -moz-border-radius-bottomleft: 0px; -webkit-border-bottom-left-radius: 0px; font-size:2em;}

}

@media only screen and (max-width : 325px) {
	#threeTwoOneLogo{display:none;}
	#small_menu_link_container{display:none;}
}	


/* Boxes to display form information on the employee folder area. JRE 7/11/2013 */
ul.formBoxes{margin:0; padding:0;}

ul.formBoxes > li{font-size:11px; list-style-type:none; padding:10px 0; /*margin-right:0px; margin-bottom:10px;*/ margin:10px; display:inline-block; vertical-align:middle;}

@media only screen and (min-width : 501px) {
	ul.formBoxes > li{
		width:386px;
	}
}


ul.formBoxes > li > h4{text-align:left; margin: 0 10px 10px 10px; font-size:1.2em;}
ul.formBoxes > li > ul{padding:0; margin:0; width:100%; list-style-type:none;}
ul.formBoxes > li > ul > li{padding:10px; background: transparent url(../images/alert-overlay.png) repeat-x; box-shadow: 0 1px 3px rgba(0,0,0,0.5); -moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);	-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);}
	ul.formBoxes > li > ul > li.compact{padding:3px;}
	
	ul.formBoxes > li > ul > li.red{background-color:#FF8080; color:black; font-weight:bold;}
		ul.formBoxes > li > ul > li.red h6{color:black;}
	ul.formBoxes > li > ul > li.green, ul.employee_view_extra_items > li.green > p{background-color:#7AC142; color:black; font-weight:bold;}
	ul.formBoxes > li > ul > li.yellow, ul.employee_view_extra_items > li.yellow > p{background-color:#FFFF80; color:black; font-weight:bold;}
	ul.formBoxes > li > ul > li.grey, ul.employee_view_extra_items > li.grey > p{background-color:#f7f7f7; color:black; font-weight:bold;}
	
	
	ul.employee_view_extra_items > li > h1{
		height:30px;
	}
	
	
	ul.employee_view_extra_items > li.green > p, ul.employee_view_extra_items > li.yellow > p, ul.employee_view_extra_items > li.grey > p{
		margin-top:0;
		border:0;
		background-url: url(../images/alert-overlay.png) repeat-x; 
		display: inline-block; 
		padding: 5px 10px 6px; 
		color: #fff; 
		text-decoration: none;
		border-radius:5px;	
		-moz-border-radius: 5px; 
		-webkit-border-radius: 5px;
		box-shadow: 0 1px 3px rgba(0,0,0,0.5);
		-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);
		-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);
		text-shadow: 0 -1px 1px rgba(0,0,0,0.25);
		border-bottom: 1px solid rgba(0,0,0,0.25);
		position: relative;
	}
	
	ul.formBoxes > li > ul > li a{text-decoration:none; color:black;}/*latest submission/approval*/
	ul.formBoxes > li > ul > li a:hover{text-decoration:underline; color:black;}

	ul.formBoxes > li > ul > li h5{text-align: center; margin: 0 0 10px 0; padding: 0; font-size: 1.2em; color: black; text-decoration:none;}/*latest submission/approval*/
		ul.formBoxes > li > ul > li.compact h5{margin:10px;}
		ul.formBoxes > li > ul > li h5 small{font-weight:lighter;}	
		
	ul.formBoxes > li > ul > li h6{text-align:center; padding:0; margin:0; font-size:larger;}/* no submitted forms */
	ul.formBoxes > li > ul > li .container-container{width:100%; background-color:white; padding:10px; border-radius: 7px; -moz-border-radius: 7px; -webkit-border-radius: 7px; moz-box-shadow: 1px 1px 5px #555555; -webkit-box-shadow: 1px 1px 5px #555555; box-shadow: 1px 1px 5px #555555;}
	ul.formBoxes > li > ul > li.compact .container-container{display:none}
	ul.formBoxes > li > ul > li .container-container .formLabel{font-size:larger; font-weight:bold; color:#0069AA;}
			ul.formBoxes > li > ul > li .container-container  p{min-width:200px; max-width:250px; font-size:.8em; background-color:#eee; text-align:right; float:right; margin-right:0px; padding:5px 25px 5px 5px; border-radius: 7px; -moz-border-radius: 7px; -webkit-border-radius: 7px; moz-box-shadow: 1px 1px 5px #555555; -webkit-box-shadow: 1px 1px 5px #555555; box-shadow: 1px 1px 5px #555555;}
				ul.formBoxes > li > ul > li .container-container  p span.block{display: block; font-weight: bold; margin-bottom: 10px; font-size: 1.4em;}

	ul.formBoxes > li > ul > li .container-container > .imgContainer{ float:left; width:75px; }
		ul.formBoxes > li > ul > li .container-container > .imgContainer .styledbutton{ width: 60px; margin: 0; padding: 5px 10px; text-align: center; }	
		ul.formBoxes > li > ul > li .container-container > .imgContainer img{height:65px; width:65px; }
		
	ul.formBoxes > li > ul > li .container-container a{text-decoration:none; color:white;}
	ul.formBoxes > li > ul > li .container-container a:hover{text-decoration:none; color:white;}
		
		
/*Employee Folder Progress Bar*/
div.progress_container{background-color:#399CB0; width:100%; border:1px solid #0069AA; position:relative; margin-bottom:10px; border-radius:7px;	-moz-border-radius:7px;	-webkit-border-radius:7px; }
	div.progress_container h2.completion_text{text-align:center; white-space:nowrap; width:100%; float:left; color:#f7f7f7; margin:0; padding:0; font-size:1.5em;}
	div.progress_container div.counter{ position:absolute; height:100%; background-color:#f7f7f7; right:0; border-top-right-radius:5px; -moz-border-radius-topright:5px; -webkit-border-top-right-radius:5px; border-bottom-right-radius:5px;	-moz-border-radius-bottomRight:5px;	-webkit-border-bottom-right-radius:5px;	}	

div.progress-details-container{margin-bottom:10px;}
	div.progress-details-container span{font-weight:bold; font-size:1em; color:#0069AA;}
	div.progress-details-container span.incomplete{color:red;}
		div.progress-details-container div.plansource-progress{margin-left:10px;}
		div.progress-details-container div.plansource-progress ul{display:inline-block; padding:0;}

.taskContainerContainer{
	padding:0; 
	text-align:justify; 
	margin:0 auto; 
	width:100%; 
	position:relative; 
	list-style-type:none; 
	/*min-width:450px;*/
}
.taskContainerContainer > li{
	-webkit-transition: background 1000ms ease-in-out;
    -moz-transition: background 1000ms ease-in-out;
    -o-transition: background 1000ms ease-in-out;
    transition: background 1000ms ease-in-out;
}
	.taskContainerContainer .filler, .task_container .filler, .employee_view_extra_items .filler{width:100% !important; display: inline-block; height:0px; margin:0; padding:0; background:none; border:none;}

.task_container{
	list-style-type:none; 
	margin:0 5px 20px 5px; 
	padding:10px; 
	background-color:white; 
	text-align:center; 
	position:relative; 
	float:left; 
	vertical-align:top;
	width:100%;
	}

.taskContainerContainer .needsAttn{
/*
moz-box-shadow: 1px 1px 5px #555555; 
-webkit-box-shadow: 1px 1px 5px #555555; 
box-shadow: 1px 1px 5px #555555;
*/ 
	box-shadow: 0 0 5px rgba(255, 0, 0, 1);
    -webkit-box-shadow: 0 0 5px rgba(255, 0, 0, 1); 
    -moz-box-shadow: 0 0 5px rgba(255, 0, 0, 1);
	
/*    border:1px solid rgba(0,0,255, 0.8); */
}
	
	
	.task_container .accountBox{list-style-type:none; margin:0; padding:0 25px;}
	.task_container h2{text-align:center; margin:0 0 35px 0; padding:0; font-size: 1.3em; cursor:move; width:100%; }


	.task_container .accountBox li{display:inline-block; width:146px; margin:0 10px; vertical-align:middle;}

	
	
	.restore{display:none;}
	.minimize{display:inherit;}
	
	
	.closed .restore{display:inherit;}
	.closed .minimize{display:none;}
	.closed ul{display:none;}
	.closed span{display:none;}
	.closed {width:48%; display:inline-block;}
	.closed h3 {display:none;}
	
	.standard_box_shadow{moz-box-shadow: 1px 1px 5px #555555; -webkit-box-shadow: 1px 1px 5px #555555; box-shadow: 1px 1px 5px #555555;}
	.standard_round_corners{border-radius:7px;	-moz-border-radius:7px;	-webkit-border-radius:7px;	}
	




/*play nicely with old UI and bootstrap */
#topMenuBar {
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
}


#search-container{
	position:fixed; left:0; width:0; bottom:0; background-color:#666; overflow:hidden;
	-webkit-transition: width 500ms ease-in-out;
    -moz-transition: width 500ms ease-in-out;
    -o-transition: width 500ms ease-in-out;
    transition: width 500ms ease-in-out;
}

.navbar-321 .navbar-collapse.in, .navbar-321{border-bottom:10px solid #399CB0 !important;}
.navbar-321.navbar-fixed-top .navbar-toggle:hover .icon-bar, .navbar-321 .navbar-toggle:hover .icon-bar{
	background-color:#0069AA !important;
}

@media only screen and (min-width : 992px){
	.navbar-321.navbar-fixed-top .navbar-collapse{border-bottom:10px solid #399CB0 !important;}
}





@media only screen and (max-width : 767px) {
/*
	.navbar-collapse.in, .navbar-collapse.collapsing{
		height: auto;
		position: absolute;
		top: 0px;
		background-color: rgb(85, 85, 85);
		min-height: 100%;
		right: 0px;
	}
*/
}



.contrast-text-from-primary{background-color:#0069AA; color: white;}

.contrast-text-from-primary h1, .contrast-text-from-primary h2, .contrast-text-from-primary h3, .contrast-text-from-primary h4, .contrast-text-from-primary h5, .contrast-text-from-primary h6{color: white;}

.successful-save{
	border: 5px solid rgb(0,255,0);
	-webkit-transition: border 200ms linear;
    -moz-transition: border 200ms linear;
    -o-transition: border 200ms linear;
    transition: border 200ms linear;
}




/*new task manager button*/

.task-area{
	
	position:fixed; 
	bottom:0; 
	right:0; 
	z-index:999999;
}

.task-area .content-area{
	display:none;
}

.task-area .task-minimizer{
	display:none;
}

.task-area.expanded .task-minimizer{
	display:block;
}
	.task-area.expanded .task-minimizer span{
		cursor:pointer;
		padding:2px;
	}

	.task-area.expanded .task-minimizer span:hover{
		opacity:0.5;
		background-color:#000;
		color:#fff;
	}


@media only screen and (max-width : 599px) {
	.task-area.expanded{
		left:0;
	}
		.task-area.expanded .content-area{
			width:100%;
		}	
}

@media only screen and (min-width : 600px) {
	
	.task-area.expanded{
		left:100px;
	}

	.task-area.expanded .content-area{
		width:100%;
	}	
}

@media only screen and (max-height : 449px) {
	.task-area.expanded{
		top:5px;
	}

		.task-area.expanded .content-area{
			height:80%;
		}	
}

@media only screen and (min-height : 450px) {
	.task-area.expanded .content-area{
		height:400px
	}	
}

.task-area.expanded .content-area{
	display:block;
	border-left:1px solid #ccc;
	border-top:1px solid #ccc;
}

	.task-area.expanded .content-area iframe{
		height:100%;
		width: 100%;
		border:none;
		overflow:auto;
	}

.task-menu-links {
	padding:5px; 
	opacity:0.9;
}

	.task-menu-links span{
		font-size:22px;
		color:white;
	}

	.task-menu-links span.title{
		border-right:1px solid white;
		padding-right:15px;
		padding-left:15px;
		margin-right:15px; 
		cursor:pointer;
	}

	.task-menu-links span.glyphicon{
		/*color:white;*/
		font-size:12px;
		
	}

	.task-menu-links span.glyphicon.needs-action{
		color:red;
	}

	.task-menu-links span.glyphicon:hover{
		opacity:.5;
	}

	.task-menu-links div.glyphicon-ring{
		display:inline-block;
		background-color: rgba(0,0,0,.65);
		border:2px solid rgba(255,255,255,.95);
		border-radius:100px;
		-moz-border-radius:100px;
		-webkit-border-radius:100px;	
		padding:5px 10px;
	}

