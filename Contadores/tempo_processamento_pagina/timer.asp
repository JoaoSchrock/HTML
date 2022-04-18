<% Inicio_tempo = Timer %>


<%
'AQUI VEM A SUA PAGINA, PARA EXEMPLO, ABAIXO TEM UM FOR PARA QUE CONSUMA TEMPO E POSSA EXIBIR O QUANTO.
For i = 1 To 10000
response.write "."
Next
%>

<br>

<%
response.write "Página carregada em: "
fim_tempo = Timer
tempo_decorrido = fim_tempo - Inicio_tempo

If tempo_decorrido = 0 then 
Response.write "menos de 0.005"
Else
response.write (Round(tempo_decorrido,4)) 
End if 
response.write " Segundos"
%>