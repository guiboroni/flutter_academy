void main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  // Baseado na lista acima.
  // 1 - Remover os duplicados
  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
  //     e mostre a quantidade de pessoas com mais de 18 anos
  // 4 - Encontre a pessoa mais velha.

  // ? ITEM 1
  print('// 1 - Remover os duplicados');

  var pessoasSemDuplicar = [];

  pessoas.forEach((element) {
    if (!pessoasSemDuplicar.any((e) => e == element)) {
      pessoasSemDuplicar.add(element);
    }
  });
  print(pessoasSemDuplicar);
  print('');

  // ? ITEM 2
  print(
      '// 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino');

  int qtdePessoasSexoM = 0;
  int qtdePessoasSexoF = 0;

  pessoasSemDuplicar.forEach((element) {
    String sexo = element.toString().split('|')[2];
    switch (sexo) {
      case 'Masculino':
        qtdePessoasSexoM++;
        break;
      case 'Feminino':
        qtdePessoasSexoF++;
        break;
      default:
    }
  });

  print('Qtde pessoas do sexo masculino: $qtdePessoasSexoM');
  print('Qtde pessoas do sexo feminino: $qtdePessoasSexoF');
  print('');

  // ? ITEM 3
  print(
      '// 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos ' +
          'e mostre a quantidade de pessoas com mais de 18 anos');

  var pessoasMaiores18 = [];

  pessoasSemDuplicar.forEach((element) {
    int idade = int.parse(element.toString().split('|')[1]);
    if (idade > 18) {
      pessoasMaiores18.add(element);
    }
  });
  print(pessoasMaiores18);

  int pessoasMaiores18M = 0;
  int pessoasMaiores18F = 0;

  pessoasMaiores18.forEach((element) {
    String sexo = element.toString().split('|')[2];
    switch (sexo) {
      case 'Masculino':
        pessoasMaiores18M++;
        break;
      case 'Feminino':
        pessoasMaiores18F++;
        break;
      default:
    }
  });

  print(
      'Qtde pessoas do sexo masculino maiores de 18 anos: $pessoasMaiores18M');
  print('Qtde pessoas do sexo feminino maiores de 18 anos: $pessoasMaiores18F');
  print('');

  // ? ITEM 4
  print('// 4 - Encontre a pessoa mais velha.');

  String sexoPessoaMaisVelha;
  String nomePessoaMaisVelha;
  int idadePessoaMaisVelha = 0;
  int idadePessoa;

  pessoasSemDuplicar.forEach((element) {
    idadePessoa = int.parse(element.toString().split('|')[1]);

    if (idadePessoa > idadePessoaMaisVelha) {
      idadePessoaMaisVelha = idadePessoa;
      nomePessoaMaisVelha = element.toString().split('|')[0];
      sexoPessoaMaisVelha = element.toString().split('|')[2];
    }
  });

  print(
      'A pessoa mais velha da lista é ${sexoPessoaMaisVelha == 'Masculino' ? 'o' : 'a'} $nomePessoaMaisVelha e ${sexoPessoaMaisVelha == 'Masculino' ? 'ele' : 'ela'} tem $idadePessoaMaisVelha anos.');
}
