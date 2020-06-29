package pitang.usuarios.control;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import pitang.usuarios.entity.Usuario;

import java.util.List;


@Stateless
public class UsuarioManager {

    @PersistenceContext
    private EntityManager entityManager;

    public List<Usuario> loadAllUsuarios() {
        return this.entityManager.createQuery("SELECT c FROM Usuario c", Usuario.class).getResultList();
    }

    public void delete(Usuario usuario) {
        if (entityManager.contains(usuario)) {
            entityManager.remove(usuario);
        } else {
            Usuario managedUsuario = entityManager.find(Usuario.class, usuario.getId());
            if (managedUsuario != null) {
                entityManager.remove(managedUsuario);
            }
        }
    }

    public void addNovoUsuario(Usuario usuario) {

        Usuario novoUsuario = new Usuario();
        novoUsuario.setNome(usuario.getNome());
        novoUsuario.setEmail(usuario.getEmail());
        novoUsuario.setNascimento(usuario.getNascimento());
        novoUsuario.setTelefone(usuario.getTelefone());
        novoUsuario.setTelefoneDDD(usuario.getTelefoneDDD());
        novoUsuario.setTelefoneTipo(usuario.getTelefoneTipo());       
        
        this.entityManager.persist(novoUsuario);
    }

    public void update(List<Usuario> usuarios) {
        usuarios.forEach(entityManager::merge);
    }
}