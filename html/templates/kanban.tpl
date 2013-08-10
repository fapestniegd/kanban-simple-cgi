<html><head>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
<!-- This software application is Twitter-Ware. If you like it,
     use it, or have something to say, follow and tell me on Twitter
	 at @codemonkeyism
	 http://twitter.com/codemonkeyism
	 Blog at http://www.codemonkeyism.com

	 Webssite http://www.simple-kanban.com
     See MIT license at bottom.
-->
<title>Kanban Board</title>
</head><body>

<!-- The data for the stories -->
<textarea rows="1" id="stories" style="visibility: hidden;">
[% tasks %]
</textarea>

<!-- Names and shortcuts for the different states:
    Shortcut,Name
    They will be displayed in this order
	 -->
<textarea rows="1"  id="states" style="visibility: hidden;">
[% phases %]
</textarea>

<!-- The HTML starts here -->
<a id="data_link" class="button" href="#" style="float:right;">Data</a>
<a id="board_link" class="button" href="#" style="float:right;">Board</a>
<h1>Kanban Board</h1>
<div id="output"></div>
<div class="clear"></div>

<textarea id="data_output" rows="20" cols="100">
</textarea>
<!-- The HTML ends here -->

<!-- Color definitions for the boxes. Queues are all grey to not distract
     from the real work being done -->
<style type="text/css">
<!--
[% colors %]
	-->
</style>

<!-- HERE ARE DRAGONS, DON'T CHANGE ! -->

<!-- Layout from the 1-line Grid Framework,
     http://www.vcarrer.com/2009/06/1-line-css-grid-framework.html -->
<style type="text/css">
<!--
    .button { background-color: #e0e0e0; color: #a0a0a0; padding: 0.2em; text-decoration: none;}
    .placeholder {border: 1px solid black; }
     ul { list-style: none; margin: 0 0 0 0; padding: 0 0 0 0;}
	 body { font-family: Helvetica; }
	 .box { font-size: 80%; padding: 0.2em; border: 1px solid black; margin-bottom: 1em; margin-right: 5px;}
	 .dp10 {width:9%;  float:left;  display: inline;  *margin-right:-1px; }
	 .clear {clear:both;}
	 .headline { font-weight: bold; height: 3em; color: #000000;}
	 .queue_column .headline { font-weight: bold; height: 3em; color: #d0d0d0;}
	 .footer { font-size: 80%; color: #808080; padding-top: 5em;}
	 -->
</style>
<script src="js/jQuery-1.3.2.js"/></script>
<script src="js/board.js"></script>

<div class="clear"></div>
<div class="footer">
Written by Stephan Schmidt, who can be found on Twitter <a href="http://twitter.com/codemonkeyism">http://twitter.com/codemonkeyism</a>,
Blog at <a href="http://www.codemonkeyism.com">http://www.codemonkeyism.com</a>,  using
JQuery with the DragSort plugin<br>
This software application is Twitter-Ware. If you like it, use it, or have something to say, <b>follow me</b> and
tell me on Twitter at @codemonkeyism<br/>
    The newest version can be found on <a href="http://www.simple-kanban.com">www.simple-kanban.com</a>
</div>
<!--
	 Copyright (c) 2009 Stephan Schmidt

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE
--></body></html>
