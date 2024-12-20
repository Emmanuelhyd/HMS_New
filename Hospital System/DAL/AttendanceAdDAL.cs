﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Mvc;
using Hospital_System.Models;
using System.Data;

namespace Hospital_System.DAL
{
    public class AttendanceDAL
    {
        string _connectionString;
        SqlConnection con = null;
        SqlCommand cmd = null;
        SqlDataReader reader = null;

        public AttendanceDAL()
        {
            _connectionString = ConfigurationManager.ConnectionStrings["Hospital"].ConnectionString;
            con = new SqlConnection(_connectionString);
        }

        //List
        public List<AttendanceDo> AttendanceList()
        {
            List<AttendanceDo> attendanceDos = new List<AttendanceDo>();

            {

                con.Open();
                cmd = new SqlCommand("select * from Attendance", con);
                SqlDataReader sdr;
                sdr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(sdr);
                foreach (DataRow row in dt.Rows)
                    attendanceDos.Add(
                        new AttendanceDo
                        {
                            Id = Convert.ToInt32(row["Id"]),
                            Name = row["Name"].ToString(),
                            Department = row["Department"].ToString(),
                            JobTitle = row["JobTitle"].ToString(),
                            Contact = row["Contact"].ToString(),
                            Shift = row["Shift"].ToString(),
                            Time = row["Time"].ToString(),
                            LoginTime = row["LoginTime"].ToString(),
                            LogoutTime = row["LogoutTime"].ToString(),
                            Status = row["Status"].ToString(),


                        });

                return attendanceDos;
            }
        }

        //Add Attendance

        public List<AttendanceDo> AddAttendance(AttendanceDo attendanceDo)
        {

            var ids = 0;
            con.Open();
            cmd = new SqlCommand("select * from Attendance where Id='" + attendanceDo.Id + "'", con);
            reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                ids = Convert.ToInt32(reader["Id"]);
            }

            reader.Close();
            con.Close();



            con.Open();
            if (ids == 0)
            {
                cmd = new SqlCommand("insert into Attendance(Id,Name,Department,JobTitle,Contact,Shift,Time,LoginTime,LogoutTime,Status) values(" + attendanceDo.Id + ",'" + attendanceDo.Name + "','" + attendanceDo.Department + "','" + attendanceDo.JobTitle + "','" + attendanceDo.Contact + "','" + attendanceDo.Shift + "','" + attendanceDo.Time + "','" + attendanceDo.LoginTime + "','" + attendanceDo.LogoutTime + "','" + attendanceDo.Status + "')", con);

            }
            else
            {
                cmd = new SqlCommand("update Attendance set Name='" + attendanceDo.Name + "',Department='" + attendanceDo.Department + "',JobTitle='" + attendanceDo.JobTitle + "',Contact='" + attendanceDo.Contact + "',Shift='" + attendanceDo.Shift + "',Time='" + attendanceDo.Time + "',LoginTime='" + attendanceDo.LoginTime + "',LogoutTime='" + attendanceDo.LogoutTime + "',Status='" + attendanceDo.Status + "' where Id=" + attendanceDo.Id + "", con);
            }
            cmd.ExecuteNonQuery();
            con.Close();


            List<AttendanceDo> attendanceDos = new List<AttendanceDo>();
            attendanceDos = AttendanceList();
            return attendanceDos;
        }

        //Auto increment Id
        public int AttendanceId()
        {
            int id = 0;
            con.Open();
            cmd = new SqlCommand("SELECT MAX(Id) FROM Attendance", con);
            var result = cmd.ExecuteScalar();

            if (result != DBNull.Value)
            {
                id = Convert.ToInt32(result);
            }
            con.Close();
            return id;
        }

        //Attendance Edit

        public AttendanceDo AttendanceEdit(int Id)
        {
            AttendanceDo attendanceDo = new AttendanceDo();


            SqlCommand cmd = new SqlCommand("Select * from Attendance where Id='" + Id + "'", con);
            {

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();


                if (reader.Read())
                {
                    attendanceDo.Id = Convert.ToInt32(reader["Id"]);
                    attendanceDo.Name = reader["Name"].ToString();
                    attendanceDo.Department = reader["Department"].ToString();
                    attendanceDo.JobTitle = reader["JobTitle"].ToString();
                    attendanceDo.Contact = reader["Contact"].ToString();
                   
                    attendanceDo.Shift = reader["Shift"].ToString();
                    attendanceDo.Time = reader["Time"].ToString();
                    attendanceDo.LoginTime = reader["LoginTime"].ToString();
                    attendanceDo.LogoutTime = reader["LogoutTime"].ToString();
                    attendanceDo.Status = reader["Status"].ToString();



                }
                reader.Close();
                con.Close();

            }
            return attendanceDo;
        }

        //attendance delete

        public List<AttendanceDo> AttendanceDelete(int Id)
        {
            con.Open();
            cmd = new SqlCommand("Delete from Attendance where Id='" + Id + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            List<AttendanceDo> attendanceDos = new List<AttendanceDo>();

            con.Open();
            cmd = new SqlCommand("select * from Attendance", con);
            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                AttendanceDo attendanceDo = new AttendanceDo();

                attendanceDo.Id = Convert.ToInt32(reader["Id"]);
                attendanceDo.Name = reader["Name"].ToString();
                attendanceDo.Department = reader["Department"].ToString();
                attendanceDo.JobTitle = reader["JobTitle"].ToString();
                attendanceDo.Contact = reader["Contact"].ToString();

                attendanceDo.Shift = reader["Shift"].ToString();
                attendanceDo.Time = reader["Time"].ToString();
                attendanceDo.LoginTime = reader["LoginTime"].ToString();
                attendanceDo.LogoutTime = reader["LogoutTime"].ToString();
                attendanceDo.Status = reader["Status"].ToString();


                attendanceDos.Add(attendanceDo);

            }

            reader.Close();
            con.Close();
            return attendanceDos;
        }


    }
}