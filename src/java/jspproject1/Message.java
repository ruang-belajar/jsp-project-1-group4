/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package jspproject1;

public class Message {
    private String pengirim;
    private String pesan;
    private String waktu;
    private int id;

    public Message(int id, String pengirim, String pesan, String waktu) {
        this.id = id;
        this.pengirim = pengirim;
        this.pesan = pesan;
        this.waktu = waktu;
    }

    public int getId() { return id; }
    public String getPengirim() { return pengirim; }
    public String getPesan() { return pesan; }
    public String getWaktu() { return waktu; }
}