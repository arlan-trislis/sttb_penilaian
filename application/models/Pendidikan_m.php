<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pendidikan_m extends CI_Model
{

    public function get($id = null)
    {
        $this->db->from('pendidikan');
        if ($id != null) {
            $this->db->where('id', $id);
        }
        $query = $this->db->get();
        return $query;
    }
    public function get2()
    {
        $this->db->select('pendidikan.id as id_jabatan,jabatan.jabatan as nama,karyawan.jabatan as jabatan_karyawan, COUNT(karyawan.jabatan) as jml');
        $this->db->group_by('jabatan_karyawan');
        $this->db->from('karyawan');
        $this->db->join('jabatan', 'jabatan.id = karyawan.jabatan', 'jabatan.jabatan');
        $hasil = $this->db->get();
        return $hasil;
    }

    public function add($data)
    {
        $data = [
            'pendidikan' => $this->input->post('pendidikan')
        ];
        $query = $this->db->insert('pendidikan', $data);
        return $query;
    }

    public function edit($post)
    {
        $params = array(
            'pendidikan' => $post['pendidikan']
        );
        $this->db->where('id', $post['id']);
        $this->db->update('pendidikan', $params);
    }

    public function del($params = null)
    {
        if ($params != null) {
            $this->db->where($params);
        }
        $this->db->delete('pendidikan');
    }
}
