<html>
<body>

<h2>Factorial Program</h2>

<%
    int n = 5;
    int fact = 1;

    for (int i = 1; i <= n; i++) {
        fact = fact * i;
    }
%>

<p>Number = <%= n %></p>
<p>Factorial = <%= fact %></p>

</body>
</html>