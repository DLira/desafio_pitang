package pitang.usuarios.entity;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Past;
import javax.validation.constraints.Min;
import javax.validation.constraints.Max;
import javax.validation.constraints.Digits;
import java.time.LocalDate;

@Entity
public class Usuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    @NotEmpty
    private String nome;

    @Column(nullable = false)
    @NotEmpty
    @Email
    private String email;

    @Column(nullable = false)
    @NotEmpty
    @Digits(integer = 9, fraction = 0)
    private String telefone;

    @Column(nullable = false)
    @Max(99)
    @Min(11)
    private int telefoneDDD;
    
	@Column(nullable = false)
    @NotEmpty
    private String telefoneTipo;
    
    @Past
    private LocalDate nascimento;

    public Usuario() {

    }

    public Usuario(String nome, String email, int telefoneDDD, String telefone, String telefoneTipo,  LocalDate nascimento) {
        this.nome = nome;
        this.email = email;
        this.telefoneDDD = telefoneDDD;
        this.telefone = telefone;
        this.telefoneTipo = telefoneTipo;
        this.nascimento = nascimento;
        
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public int getTelefoneDDD() {
		return telefoneDDD;
	}

	public void setTelefoneDDD(int telefoneDDD) {
		this.telefoneDDD = telefoneDDD;
	}

	public String getTelefoneTipo() {
		return telefoneTipo;
	}

	public void setTelefoneTipo(String telefoneTipo) {
		this.telefoneTipo = telefoneTipo;
	}
	
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public LocalDate getNascimento() {
        return nascimento;
    }

    public void setNascimento(LocalDate nascimento) {
        this.nascimento = nascimento;
    }

}
