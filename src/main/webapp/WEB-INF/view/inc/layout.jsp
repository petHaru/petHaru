<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title}</title>
    <link href="../../css/layout.css" type="text/css" rel="stylesheet">
    <link href="../../css/<tiles:getAsString name="css" />" type="text/css" rel="stylesheet" />
	<script src="/js/<tiles:getAsString name="js" />"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>

<body>
    <div id="root">
    <!-- header영역 -->
     <tiles:insertAttribute name="header" />
   
        <div id="visual">
            <div class="float-content">

            </div>
        </div>

        <div id="body">
            <div class="float-content">
               <!-- aside영역 -->
                <tiles:insertAttribute name="aside" />
               <!-- main영역 -->
                <tiles:insertAttribute name="main" />
            </div>
        </div>

       <!-- footer영역 -->
        <tiles:insertAttribute name="footer" />
    </div>

</body>


</html>