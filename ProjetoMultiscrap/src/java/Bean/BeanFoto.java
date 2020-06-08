package Bean;

/**
 *
 * @author dryro
 */
public class BeanFoto {
    private int idFoto;
    private int idAlbum;
    private String descricao;

    public BeanFoto(int idFoto, int idAlbum, String descricao) {
        this.idFoto = idFoto;
        this.idAlbum = idAlbum;
        this.descricao = descricao;
    }

    public int getIdFoto() {
        return idFoto;
    }

    public void setIdFoto(int idFoto) {
        this.idFoto = idFoto;
    }

    public int getIdAlbum() {
        return idAlbum;
    }

    public void setIdAlbum(int idAlbum) {
        this.idAlbum = idAlbum;
    }
    
    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
}
