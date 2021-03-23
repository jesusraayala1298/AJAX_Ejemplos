<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejemplo1.aspx.cs" Inherits="AJAX_Ejemplos.Ejemplo1" %>

<!DOCTYPE html>
<html>
<body>

<h2>The XMLHttpRequest Object</h2>

<p id="demo">Deja que AJAX cambie este texto.</p>

<button type="button" onclick="loadDoc()">Change Content</button>

<script>
function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("demo").innerHTML = this.responseText;
    }
  };
  xhttp.open("GET", "informacion.txt", true);
  xhttp.send();
}
</script>

</body>
</html>

