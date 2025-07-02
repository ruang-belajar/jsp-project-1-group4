package jspproject1;

import java.sql.*;
import java.util.ArrayList;

public class Messager {
    private String boardName;

    public Messager(String boardName) {
        this.boardName = boardName;
    }
    public void addMessage(String pengirim, String pesan) {
        try (Connection conn = DBUtil.getConnection()) {
            String sql = "INSERT INTO messages (nama_board, pengirim, pesan) VALUES (?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, boardName);
            stmt.setString(2, pengirim);
            stmt.setString(3, pesan);
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public ArrayList<Message> getList() {
    ArrayList<Message> list = new ArrayList<>();
    try (Connection conn = DBUtil.getConnection()) {
        String sql = "SELECT id, pengirim, pesan, waktu FROM messages WHERE nama_board = ? ORDER BY waktu DESC";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, boardName);
        ResultSet rs = stmt.executeQuery();

        java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm");

        while (rs.next()) {
            int id = rs.getInt("id");
            String pengirim = rs.getString("pengirim");
            String pesan = rs.getString("pesan");
            String waktu = sdf.format(rs.getTimestamp("waktu"));

            list.add(new Message(id, pengirim, pesan, waktu));
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return list;
}
    public void deleteMessage(int id) {
        try (Connection conn = DBUtil.getConnection()) {
            String sql = "DELETE FROM messages WHERE id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}