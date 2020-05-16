/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Kelas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author RRQ'Toothless
 */
public class inputdata {
    Connection conn = null;
    ResultSet rs = null;
    PreparedStatement pst = null;
    
    private String sql;
    public String nim;
    public String nama;
    public String jk_mhs;
    public String almt_rmh;
    public String perguruan_tinggi;
    public String prodi;
    public String semester;
    public String angkatan;
    public String ipk;
    public String prestasi;
    public String no_hp_mhs;
    public String pekerjaan_ortu;
    public String penghasilan_rata;
    public String jumlah_tanggungan;
    public String no_hp_ortu;
    public String nama_lkp_bank;
    public String no_rek;
    public String status;
    
    public  void simpan()throws SQLException{
        conn = koneksi.getKoneksi();
        sql="INSERT into tbl_mahasiswa(nim,nama,jk_mhs,almt_rmh,perguruan_tinggi,prodi,semester,angkatan,ipk,prestasi,no_hp_mhs,pekerjaan_ortu,"
                + "penghasilan_rata,jumlah_tanggungan,no_hp_ortu,nama_lkp_bank,no_rek,status)VALUE(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        pst = conn.prepareStatement(sql);
        pst.setString(1, nim);
        pst.setString(2, nama);
        pst.setString(3, jk_mhs);
        pst.setString(4, almt_rmh);
        pst.setString(5, perguruan_tinggi);
        pst.setString(6, prodi);
        pst.setString(7, semester);
        pst.setString(8, angkatan);
        pst.setString(9, ipk);
        pst.setString(10, prestasi);
        pst.setString(11, no_hp_mhs);
        pst.setString(12, pekerjaan_ortu);
        pst.setString(13, penghasilan_rata);
        pst.setString(14, jumlah_tanggungan);
        pst.setString(15, no_hp_ortu);
        pst.setString(16, nama_lkp_bank);
        pst.setString(17, no_rek);
        pst.setString(18, status);
        
        pst.execute();
        pst.close();
    }
    public ResultSet Updatelisttable()throws SQLException{
        conn =koneksi.getKoneksi();
        sql="select*from tbl_mahasiswa";
        pst= conn.prepareStatement(sql);
        rs=pst.executeQuery();
        return rs;
    }
    public  void hapus()throws SQLException{
        conn = koneksi.getKoneksi();
        String sql = "delete from tbl_mahasiswa where nim=?";
        try{
            pst = conn.prepareStatement(sql);
            pst.setString(1, nim);
            pst.execute();
        }catch(Exception e){
            JOptionPane.showMessageDialog(null, e);
        }
    }
    public void edit ()throws SQLException{
        conn = koneksi.getKoneksi();
        String sql = "Update tbl_mahasiswa set  nama=?,jk_mhs=?,almt_rmh=?,perguruan_tinggi=?,prodi=?,semester=?,angkatan=?,ipk=?,prestasi=?,no_hp_mhs=?,pekerjaan_ortu=?,"
                + "penghasilan_rata=?,jumlah_tanggungan=?,no_hp_ortu=?,nama_lkp_bank=?,no_rek=?,status=? where nim=?";
        pst = conn.prepareStatement(sql);
        pst.setString(1, nama);
        pst.setString(2, jk_mhs);
        pst.setString(3, almt_rmh);
        pst.setString(4, perguruan_tinggi);
        pst.setString(5, prodi);
        pst.setString(6, semester);
        pst.setString(7, angkatan);
        pst.setString(8, ipk);
        pst.setString(9, prestasi);
        pst.setString(10, no_hp_mhs);
        pst.setString(11, pekerjaan_ortu);
        pst.setString(12, penghasilan_rata);
        pst.setString(13, jumlah_tanggungan);
        pst.setString(14, no_hp_ortu);
        pst.setString(15, nama_lkp_bank);
        pst.setString(16, no_rek);
        pst.setString(17, status);
        pst.setString(18, nim);
        
        pst.executeUpdate();
        pst.close();
    }
    public  ResultSet SearchTextList(String nma)throws SQLException{
        conn = koneksi.getKoneksi();
        sql = "select*from tbl_mahasiswa where nama like ?";
        pst = conn.prepareStatement(sql);
        pst.setString(1, nma+"%");
        rs = pst.executeQuery();
        return rs;
    }
}
