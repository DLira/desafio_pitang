package pitang.usuarios.boundary;

import pitang.usuarios.control.UsuarioManager;
import pitang.usuarios.entity.Usuario;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.view.ViewScoped;
import javax.inject.Inject;
import javax.inject.Named;
import java.io.Serializable;
import java.util.List;

@Named
@ViewScoped
public class UsuariosBacking implements Serializable {

    private List<Usuario> usuarios;

    private Usuario usuario = new Usuario();

    @Inject
    private UsuarioManager usuarioManager;

    @PostConstruct
    public void init() {
        this.usuarios = usuarioManager.loadAllUsuarios();
    }

    public void delete(Usuario usuario) {
        usuarioManager.delete(usuario);
        usuarios.remove(usuario);
    }

    public void add() {
        usuarioManager.addNovoUsuario(usuario);
        this.usuarios = usuarioManager.loadAllUsuarios();
        this.usuario = new Usuario();
    }

    public void update() {
        usuarioManager.update(usuarios);
        FacesContext.getCurrentInstance().addMessage(null, new FacesMessage("Atualizado com Sucesso!"));
    }

    public List<Usuario> getUsuarios() {
        return usuarios;
    }

    public void setUsuarios(List<Usuario> usuarios) {
        this.usuarios = usuarios;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public UsuarioManager getUsuarioManager() {
        return usuarioManager;
    }

    public void setUsuarioManager(UsuarioManager usuarioManager) {
        this.usuarioManager = usuarioManager;
    }
}
