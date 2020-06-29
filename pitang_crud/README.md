# Desafio Pitang / SEFAZ

Para o desenvolvimento do sistema, foram utilizados o servidor de aplicações **WildFly 20.0Final** e o Banco Relacional **H2** (in memory) junto com o data source de exemplo _ExampleDS_.

- O build do sistema pode ser feito diretamente via linha de comando utilizando o maven. `mvn clean package` irá gerar o **pitangCRUD.war**

- O deploy pode ser feito diretamente pela console administrativa do WildFly em http://localhost:9990.

- O Sistema então poderá ser testado http://localhost:8080/usuarios.xhtml

- Os arquivos de configuração do WildFly, `standalone-full.xml` e `standalone.xml` estão na pasta [wildfly_configuration_files](https://github.com/DLira/desafio_pitang/tree/master/pitang_crud/wildfly_configuration_files) (precisa incluir mais algum?).