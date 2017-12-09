<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MENU</title>
        <%String role =((String) session.getAttribute("role"));%>
            <%if (role.equals("user")){%>
                <style>
                    #brand{
                        display:none;
                    }
                    #gommesize{
                        display:none;
                    }
                    #vehicle{
                        display:none;
                    }
                 </style>
            <%}%>
    </head>
    <body>
        <%if (role.equals("admin")){%>
            <h1>MENU ADMIN</h1>
                <div style="width: 300px">
                    <form action="SERVLET?????????????????" method="">
                        <fieldset>
                            <legend>Inserimento</legend>
                            <table style="width: 300px">
                                <tr>
                                    <td>
                                        <input type="radio" name="inserimento" value="1"/>Inserisci gomma
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="inserimento" value="2"/>Inserisci veicolo
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <input type="submit" value="CONFERMA" align="center">
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </form>
                </div>
                </br>
                <div style="width: 300px">
                    <form action="JSP????????????" method="">
                        <fieldset>
                            <legend>Visualizza</legend>
                            <table style="width: 300px">
                                <tr>
                                    <td>
                                        <input type="radio" name="visualizza" value="1"/>Visualizza gomme disponibili </br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="visualizza" value="2"/>Visualizza utenti registrati </br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="visualizza" value="3"/>Visualizza veicoli registrati </br>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <input type="submit" value="CONFERMA">
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </form>
                <div>
                <%}else if(role.equals("user")) {%>
                    <%
                            String firstname= (String)  session.getAttribute("firstname");
                             response.getWriter().println(""+role+" "+firstname);
                    %>
                    <h1>MENU USER</h1>
                        <div style="width: 400px">
                             <form action="SERVLET?????????????????">
                                <fieldset>
                                    <legend>Ricerca</legend>
                                        <table style="width: 400px">
                                            <tr>
                                                <td>
                                                    <input type="radio" name="visualizza" value="1" onclick="myFunction1()"/>Cerca gomma per brand</br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <input type="radio" name="visualizza" value="2" onclick="myFunction2()"/>Cerca gomma per dimensioni</br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <input type="radio" name="visualizza" value="3" onclick="myFunction3()"/>Cerca brand gomma per il tuo veicolo</br>
                                                </td>
                                            </tr>
                                        </table>
                                </fieldset>
                             </form>
                        </div>
                        <div id="brand" style="width: 400px">
                            <form action="SERVLET?????????????????" method="">
                                 <fieldset>
                                      <legend>Cerca gomma per brand</legend>
                                           <table style="width: 400px">
                                                <tr>
                                                    <td>
                                                        Tipo di veicolo
                                                    </td>
                                                    <td>
                                                        <select>
                                                            <option value="moto">Moto</option>
                                                            <option value="auto">Auto</option>
                                                            <option value="commerciale">Commerciale</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2">
                                                        <input type="submit" value="CONFERMA">
                                                    </td>
                                                <tr>
                                           </table>
                                 </fieldset>
                            </form>
                        </div>
                        <div id="gommesize" style="width: 400px">
                             <form action="SERVLET?????????????????" method="">
                                <fieldset>
                                    <legend>Cerca gomma per dimensioni</legend>
                                        <table style="width: 400px">
                                            <tr>
                                                <td>
                                                    Tipo di veicolo
                                                </td>
                                                <td>
                                                    <select>
                                                        <option value="moto">Moto</option>
                                                        <option value="auto">Auto</option>
                                                        <option value="commerciale">Commerciale</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2">
                                                        Dimensioni
                                                    <td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Larghezza
                                                    </td>
                                                    <td>
                                                        <input type="text" name="width">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Altezza
                                                    </td>
                                                    <td>
                                                        <input type="text" name="height">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Diametro
                                                    </td>
                                                    <td>
                                                        <input type="text" name="diameter">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Carico
                                                    </td>
                                                    <td>
                                                        <input type="text" name="weight">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Velocita
                                                    </td>
                                                    <td>
                                                        <input type="text" name="speed">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2">
                                                        <input type="submit" value="CONFERMA">
                                                    </td>
                                                </tr>
                                        </table>
                                </fieldset>
                             </form>
                        </div>
                        <div id="vehicle" style="width: 400px">
                            <form action="SERVLET?????????????????" method="">
                                <fieldset>
                                    <legend>Cerca brand gomma per il tuo veicolo</legend>
                                        <table style="width: 400px">
                                            <tr>
                                                <td align="center" colspan="2">
                                                    Inserisci valori
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Marca
                                                </td>
                                                <td>
                                                    <input type="text" name="brand">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Modello
                                                </td>
                                                <td>
                                                    <input type="text" name="model">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Alimentazione
                                                </td>
                                                <td>
                                                    <input type="text" name="fuel">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Versione
                                                </td>
                                                <td>
                                                    <input type="text" name="version">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Cilindrata
                                                </td>
                                                <td>
                                                    <input type="text" name="capacity">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2">
                                                    <input type="submit" value="CONFERMA">
                                                </td>
                                            </tr>
                                    </table>
                                </fieldset>
                            </form>
                        </div>
                <%}%>
            <script src="subMenu.js"></script>
                </body>

</html>