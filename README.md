# Criando compiladores através do JFlex e JavaCC


## JFlex

### Conceito básico:

JFlex é um analisador léxico para Java, um leitor que implementa um autômato finito, capaz de reconhecer 
caracteres de uma determinada linguagem. Por ser uma aplicação Java, JFlex necessita de uma máquina virtual Java.
É distribuído pela GPL e está disponível em: http://jflex.de/download.html 

### Pré-requisitos:

Tenha o Java instalado e a versão do JDK atualizada. Então verifique no Windows/Linux, as versões pelo terminal:

`java -version`
				
Se estiver tudo certo, execute o comando:

`javac -version`

### Instalação:

#### Windows
- Faça o download: [Aqui](http://jflex.de/download.html);

- O arquivo estará com o nome jflex e sua versão. Por exemplo: jflex-1.8.2;

- Descompacte o arquivo em uma pasta vazia de preferência no disco local *C:\\*;

- Dentro da pasta jflex-1.8.2 tem um arquivo com o nome bin, clique na pasta. E, abra o arquivo jflex.bat;

- Você verá o seguinte código:
	
  `if not JFLEX_HOME set JFLEX_HOME=C:\JFLEX`

- Basicamente o JFLEX_HOME está setado com o caminho *C:\JFLEX*;

- Se o caminho estiver correto, não precisa modificar;

- Se preferir, renomeie a pasta jflex-1.8.2 para jflex e também o **JFLEX_HOME**. No nosso caso, deixaremos com a versão:

- `if not JFLEX_HOME set JFLEX_HOME=C:\jflex-1.8.2`

- Inclua aquele caminho junto com o *\\bin*  na variável **PATH**. Por exemplo: *C:\jflex-1.8.2\bin*;

- Por fim abra o terminal e verifique a instalação digitando o comando: 

- `jflex`

- Aparecerá a interface do **JFLEX**.
	
#### Linux

* Faça o download: [Aqui](http://jflex.de/download.html);
* Abra seu terminal;

- Descompacte o arquivo em uma pasta vazia de preferência no seu diretório */home/usuário/*;
- O til "~" é um símbolo que representa este diretório: */home/usuário*, utilizaremos ele a partir de agora;
- Criaremos no diretório "~" uma pasta chamada **JFLEX** e extrairemos em seguida o conteúdo do arquivo compactado;
- `mkdir ~/JFLEX`
- `sudo tar -xvf jflex-versao.tar.gz -C ~/JFLEX`
- Utilizando seu editor de texto de preferência, edite o arquivo *.bashrc* no diretório "~", no meu caso, estarei utilizando vim: 
- `vim ~/.bashrc`
- Com o arquivo aberto, adicione na última linha o seguinte, utilizando o caminho onde você extraiu os arquivos do **JFLEX**, no meu caso, utilizarei o diretório *~/JFLEX*;
- `export PATH="~/JFLEX/jflex-1.8.2/bin/:$PATH"`
- ![Arquivo .bashrc](https://i.imgur.com/gNg6cu3.png)
- Por fim, reinicie seu terminal e digite o comando `jflex`.

## JavaCC

### Conceito básico:

É uma ferramenta que gera analisadores sintáticos para a linguagem Java. Utiliza muitas característica da linguagem Java, o que trás uma maior facilidade ao construir um analisador sintático. Por utilizar orientação a objetos e tratamento de exceções, torna o gerenciamento de erros sintáticos mais fácil para  implementação e leitura.
	
### Pré-requisitos:

Tenha o Java instalado e a versão do JDK atualizada. Então verifique no Windows/Linux, as versões pelo terminal:

`java -version`				

Se estiver tudo certo, execute o comando:

`javac -version`
	

### Instalação:

#### Windows

- Faça o download: [Aqui](https://javacc.github.io/javacc/);

- Após baixar, de preferência deixe no disco local *C:\\*;

- Renomeie a pasta *bootstrap* para *target*;

- Encontre dentro da pasta do **JAVACC** o diretório *\scripts* e acesse-o;

- Estando nesse diretório, copie o caminho, e acesse as Variáveis de Ambiente e crie um PATH direcionando para o mesmo;

- Abra o terminal e digite:

  `javacc`
  
- Aparecerá uma mensagem informando que classe principal não foi localizada, o que indica que o javaCC já está instalado
	
#### Linux

- Faça o download: [Aqui](https://javacc.github.io/javacc/), utilize o arquivo no formato *.tar.gz*
- Abra seu terminal;
- Descompacte o arquivo em uma pasta vazia de preferência no seu diretório */home/usuário/*;
- Criaremos no diretório "~" uma pasta chamada **JAVACC** e extrairemos em seguida o conteúdo do arquivo compactado;
- `mkdir ~/JAVACC`
- `tar -xvf javacc-javacc-versao.tar.gz -C ~/JAVACC`
- Vá para o diretório onde foram extraídos estes arquivos e renomeie o diretório "bootstrap" para "target", da seguinte forma:
- `mv bootstrap/ target/`
- Utilizando seu editor de texto de preferência, digite o seguinte comando, no meu caso, estarei utilizando vim: 
- `vim ~/.bashrc`
- Com o arquivo aberto, adicione na última linha o seguinte, utilizando o caminho onde você extraiu os arquivos do **JAVACC**, no meu caso, utilizei o diretório *~/JAVACC*;
- `export PATH="~/JAVACC/javacc-javacc-versao/scripts/:$PATH"`
- ![Arquivo .bashrc](https://i.imgur.com/qMBgzaf.png)
- Por fim, reinicie seu terminal e digite o comando `javacc`.














