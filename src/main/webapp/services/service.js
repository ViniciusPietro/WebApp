window.history.forward(1);

function backPage(valueName)
{
    valueName += '';
    var url = "&";
    

    document.forms[0].action = "/Eleicao/redirect?pagina=/dashboards/Dashboard.view.jsp" + url;
    document.forms[0].method = "POST";

}

function goTo()
{
    window.location = "/Eleicao/redirect?pagina=/dashboards/Dashboard.view.jsp";
}