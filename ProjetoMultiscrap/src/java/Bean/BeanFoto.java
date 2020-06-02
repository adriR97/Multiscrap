package Bean;

/**
 *
 * @author dryro
 */
public class BeanFoto {
    private int idFoto;
    private int idAlbum;

    public BeanFoto(int idFoto, int idAlbum) {
        this.idFoto = idFoto;
        this.idAlbum = idAlbum;
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
}
