
package modelo;

public class Persona {
    int id;
    String nom;
    String correo;
    
    public Persona(){
    
    }

    public Persona(int id, String nom, String correo) {
        this.id = id;
        this.nom = nom;
        this.correo = correo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }
 
}
