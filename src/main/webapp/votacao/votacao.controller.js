
function changeInput()
{
	var candidato = document.getElementById('candidato').value;
	if(candidato)
	{
		if(candidato === "") candidato = "0";
		document.getElementById('voto').value = candidato;
		document.getElementById('imgCandidato').src = './votacao/images/' + candidato + '.jpg';
		
		if (candidato == '0')
			document.getElementById('partido').value = 'Branco';
		else if (candidato == '7')
			document.getElementById('partido').value = 'Recorde';
		else if (candidato == '17')
			document.getElementById('partido').value = 'Domingão';
		else if (candidato == '18')
			document.getElementById('partido').value = '+VC';
		else if (candidato == '45')
			document.getElementById('partido').value = 'RR';
	}
}

function clear()
{
	location.reload();
};

function vote()
{
	var value = document.getElementById('candidato').value;
	document.getElementById('voto').value = value ? value : "0";
}