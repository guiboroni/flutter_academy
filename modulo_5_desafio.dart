void main(List<String> args) {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // * Apresente a quantidade de pacientes com mais de 20 anos

  int totalPacientesMaioresVinteAnos = 0;

  for (var paciente in pacientes) {
    var dados = paciente.toString().split('|');
    if (int.parse(dados[1]) > 20) {
      totalPacientesMaioresVinteAnos++;
    }
  }

  // * Fim

  print('---');
  print(
      'Total de pacientes maiores de 20 anos: $totalPacientesMaioresVinteAnos');
  print('---');
  print(' ');

  // * Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.

  List<String> familiaRahman = [];
  List<String> familiaSilva = [];
  List<String> familiaVerne = [];

  for (var paciente in pacientes) {
    var dados = paciente.toString().split('|');
    var nomeCompleto = dados.first.split(' ');

    switch (nomeCompleto[1]) {
      case 'Rahman':
        familiaRahman.add(nomeCompleto[0]);
        break;
      case 'Silva':
        familiaSilva.add(nomeCompleto[0]);
        break;
      case 'Verne':
        familiaVerne.add(nomeCompleto[0]);
        break;
      default:
        print('Família inválida.');
    }
  }

  print('Família Rahman:');
  print('--------------');
  for (var nome in familiaRahman) {
    print(nome);
  }
  print(' ');

  print('Família Silva:');
  print('-------------');
  for (var nome in familiaSilva) {
    print(nome);
  }
  print(' ');

  print('Família Verne:');
  print('-------------');
  for (var nome in familiaVerne) {
    print(nome);
  }

  // * Fim
}
