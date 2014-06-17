
$brand-primary: #a5fd07;
$brand-success: #5cb85c;
$brand-info: #5bc0de;
$brand-warning: #f0ad4e;
$brand-danger: #d9534f;
$gray-dark: #40bfa4;
/* Added by Dawit Haile*/

/*--------Beggin importing bootsrap-----------*/

@import "bootstrap";

/* Extra Small */
@media(max-width:767px){




}

/* Small */
@media(min-width:768px) and (max-width:991px){




}

/* Medium */
@media(min-width:992px) and (max-width:1199px){
form.navbar-form > div.form-group {width: 28em;}
}

/* Large */
@media(min-width:1200px){}
body {
    background       : none;
    
}


.navbar-default{margin-bottom:0;
margin-top:0;}

.navbar-default .navbar-collapse, .navbar-default .navbar-form {
    border-color: #4c956f;
    background-color:#a5fd07
}

.navbar-default .navbar-nav > .active > a, 
.navbar-default .navbar-nav > .active > a:hover, 
.navbar-default .navbar-nav > .active > a:focus {
    color                : $gray-dark;
    background-color     :  #4c956f;
}
/* Added by Dawit Haile*/

/*--------Beggin importing bootsrap-----------*/
container-liquid{padding-top: 0;
margin-top:0;
position: absolute;}
.container-fluid{ padding-top:0;
                  margin-top:0;
                  background-color   : none;
                  border-color       : #449e3d;    
                  font-family        : "Krona One";
}

$colHighlight   : #4c956f;
$bgDefault      : #e74c3c;
$bgHighlight    : #c0392b;
$colDefault     : #f607c1;
$colHover       : #4c956f;
@font-face{ font-family: 'Font-Awesome'; src: asset-url('font-awesome.eot'); src: asset-url('font-awesome.eot?#iefix') format('embedded-opentype'),
asset-url('font-awesome.svg') format('svg'),
asset-url('font-awesome.woff') format('woff'); }
 @font-face {
    font-family: "KronaOneRegular";
    src: font_url("KronaOne-Regular.ttf") format('truetype');
         
}
 

html{font-family:"Krona One", Arial, serif;}

*{ font-family: "Krona One", Arial, serif; }

/*-----custome Google map style----------*/

h1 h2 h3 h4 h5{ font-family:"Krona One", Arial, serif;}


/* --- Custome Style for Ganjamap --- */
form.navbar-form > div.form-group {width: 57em;}


/*-------------------------search button on the navigation--------------------------------------*/
.btn.btn-ganja {
            background       :  #2BDC1C;
            border-color     :  #155827;
}

.btn-ganja:hover {
background: #2b8454;
border-color: #229456;
}

/*-------------------------font awesome and etc--------------------------------------*/

.table{border-collapse: collapse;
}


div.panel.panel-info >div.panel-heading>div.pagination {
.disabled {
display: none;
height: 22px;
margin: 2px, 0;

}
.panel-heading{
  padding: 5px;
}



background: white;
cursor: default;
height: 22px;
a, span, em {
padding: 0.2em 0.5em;
display: block;
float: left;
margin-right: 1px;
}
.disabled {
color: #999999;
border: 1px solid #dddddd;
}
.current {
font-style: normal;
font-weight: bold;
background: #40bf4c;
color: #21953d;
border: 1px solid #40bf4c;
}
a{
text-decoration: none;
color: #40bf4c;
border: 1px solid #6ae275;
&:hover, &:focus {
color: #000033;
border-color: #000033;
}
}
.page_info {
background: #40bf4c;
color: white;
padding: 0.4em 0.6em;
width: 22em;
margin-bottom: 0.3em;
text-align: center;
b{
color: #000033;
background: #40bf4c + 60;
padding: 0.1em 0.25em;
}
}
}
#map{

background-color: none;
border: 2px solid #B8CB99;
padding: 10px;
}



/* Style for  debug box with a Sass mixin START*/



$grayMediumLight: #eaeaea;

@mixin box_sizing {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

.debug_dump {
  clear: both;
  float: left;
  width: 100%;
  margin-top: 45px;
  @include box_sizing;
}


/* Style for  debug box with a Sass mixin END*/

/* Users index */
$grayLighter: #2b8454;
.users {
  list-style: none;
  margin: 0;
  li {
    overflow: auto;
    padding: 10px 0;
    border-top: 1px solid $grayLighter;
    &:last-child {
      border-bottom: 1px solid $grayLighter;
    }
  }
}


footer{
   background:#5cb85c ;
   border-top:3px solid #ddd; 
   box-shadow:inset 0px 0px 3px #111;
   color:#ffffff;
   font-size:10px;
   line-height:25px;
   padding:35px 0px 10px 0px;
}

footer a{
   color:#eee;
   text-decoration:none;
   border-bottom:1px dotted #888;
}

footer a:hover{
   color:#aaa;
   text-decoration:none;
   border:0px;
}

footer hr{
  margin-top: 10px;
  margin-bottom: 10px;
  border-top: #155827 1px solid;
  border-bottom: #155827 1px solid;
}

footer .social{
   margin-top:10px;
}

footer .social a i{
   width:30px;
   height:30px;
   font-size:13px !important;
   line-height:30px;
   box-shadow:1px 1px 3px #000;
}

footer .fwidget{
   font-style:italic;
   margin-bottom:30px;
}

footer .fwidget h4{
   font-size:16px;
   color:#eee;
   font-style:normal;
}

footer .fwidget ul{
   margin-left:0px;
   padding-left:0px;
   list-style-type:none;
}

footer .fwidget ul li{
   margin-bottom:10px;
}

footer  i.contact-icon{
   background:#0fa6bc;
   width:30px;
   height:30px;
   line-height:30px;
   text-align:center;
   display:inline-block;
   border-radius:100px;
   color:#fff;
   font-size:10px;
   margin-right:7px;
}

footer .address p{
   margin-bottom:6px;
}

footer .copy{
   font-size:5px;
   margin:15px 0px;
}


.social{
   margin:10px 0px;
}

.social a i{
   display:inline-block;
   width:40px;
   height:40px;
   font-size:17px !important;
   line-height:40px;
   text-decoration:none;
   text-align:center;
   color:#fff;
   -webkit-transition: background 2s ease;
   -moz-transition: background 2s ease;
   -o-transition: background 2s ease;
   -ms-transition: background 2s ease;
   transition: background 2s ease;
   border-radius:100px;
   margin-right:5px;
}
.social a.facebook i{
  background:#1e78ae;
}

.social a.twitter i{
  background:#1ba1e2;
}

.social a.google-plus i{
  background:#f22d0c;
}

.social a.pinterest i{
  background:#dd1617;
}

.social a.linkedin i{
  background:#2d93cf;
}

.social a:hover i{
   background:#000;
   -webkit-transition: background 2s ease;
   -moz-transition: background 2s ease;
   -o-transition: background 2s ease;
   -ms-transition: background 2s ease;
   transition: background 2s ease;
}

.social a, .social a:hover{
   border:0px;
   text-decoration:none;
}

.input-group .btn{
   margin-top:0px !important;
} 


