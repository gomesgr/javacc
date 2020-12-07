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
- Faça o download: http://jflex.de/download.html
- O arquivo vai estar com o nome jflex e sua versão. Por exemplo: jflex-1.8.2
- Descompacte o arquivo em uma pasta vazia de preferência no disco local C:\
- Dentro da pasta jflex-1.8.2 tem um arquivo com o nome bin, clique na pasta. E, abra o arquivo jflex.bat
- Você verá o seguinte código:
	
  `if not JFLEX_HOME set JFLEX_HOME=C:\jflex-1.8.2\`

- Basicamente o JFLEX_HOME está setado com o caminho C:\jflex-1.8.2\
- Se o caminho estiver correto, não precisa modificar
- Se preferir, renomeie a pasta jflex-1.8.2 para jflex e também o JFLEX_HOME. No nosso caso, deixaremos com a versão
- Inclua aquele caminho junto com o \bin  na variável path. Por exemplo: C:\jflex-1.8.2\bin
- Por fim abra o terminal e verifique a instação digitando: jflex
- Aparecerá a interface do Jflex		
	
#### Linux
- Faça as atualizações necessários da sua distro, usando o comando como administrador: `sudo apt update`
- Em seguida instale usando o comando: `sudo apt install jflex`
- Descompacte o arquivo em uma pasta vazia de preferência no local /usr
- Dentro da pasta jflex-1.8.2 tem um arquivo com o nome bin, clique na pasta. E, abra o arquivo jflex.bat 
- Você verá o seguinte código:
	
   `if not JFLEX_HOME set JFLEX_HOME= .\usr\jflex-1.8.2\`

   Edite o caminho do arquivo de acordo com o local onde se encontra. Se estiver correto, não modifiquei:
				
  `if not JFLEX_HOME set JFLEX_HOME= .\usr\jflex-1.8.2`
  
- Basicamente o JFLEX_HOME está setado com o caminho C:\jflex-1.8.2\	
- Esse caminho precisa estar de acordo com a pasta jflex e o seu diretório
- Por fim abra o terminal e verifique a instação digitando: jflex
- Aparecerá a interface do Jflex

## JavaCC

### Conceito básico:

É uma ferramenta que gera analisadores sintáticos para a linguagem Java. Utiliza muitas característca da linguagem Java o que trás
maior facilidade ao construir um analisador sintático. Por utilizar Orientação Objeto e tratamento de exceções, torna o gerenciamento de erros sintáticos
mais fácil para implementação e leitura.
	
### Pré-requisitos:

Tenha o Java instalado e a versão do JDK atualizada. Então verifique no Windows/Linux, as versões pelo terminal:

`java -version`				

Se estiver tudo certo, execute o comando:

`javac -version`
	
### Instalação:
		
#### Windows
		
- O site para baixar o JavaCC, é: https://javacc.github.io/javacc/
- Após baixar, de preferência deixe no disco local C:\
- Crie uma pasta chamada target
- Acesse o link para baixar o arquivo binário: https://repo1.maven.org/maven2/net/java/dev/javacc/javacc/7.0.9/javacc-7.0.9.jar
- Cole dentro da pasta target e renomeio o javacc-7.0.9.jar e renomeie para javacc.jar
- Volte um diretório onde tem uma pasta chamada scripts e entre na pasta
- Estando nesse diretório, copie o caminho, e acesse as Variáveis de Ambiente e crie um PATH
- Abra o terminal e digite:

  `javacc`
  
- Vai aparecer uma mensagem informando que classe principal não foi localizada, o que indica que o javaCC já está instalado
	
#### Linux

- O site para baixar o JavaCC, é: https://javacc.github.io/javacc/
- Após baixar, de preferência deixe para o diretório /usr
- Crie uma pasta chamada target
- Acesse o link para baixar o arquivo binário: https://repo1.maven.org/maven2/net/java/dev/javacc/javacc/7.0.9/javacc-7.0.9.jar
- Cole dentro da pasta target e renomeio o javacc-7.0.9.jar e renomeie para javacc.jar	
- Volte um diretório onde tem uma pasta chamada scripts e entre na pasta
- Bom, abra uma nova aba pastas e acesse a Pasta pessoal e procure por .bashrc e abra em um edtor.
- Adicione na última linha:
  `export PATH="/usr/seunome/javacc-7.0.9/scripts:$PATH"`
- Digite no terminal:	

  `javacc` 
  
- Vai aparecer uma mensagem informando que classe principal não foi localizada, o que indica que o javaCC já está instalado














