﻿Imports System.Data.OleDb
Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\SEM - 5\505-ASP\Projects\insert2\App_Data\demo3.accdb")
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Try
            cn.Open()
            Dim cmd As New OleDbCommand("INSERT INTO Table1 values(" & TextBox1.Text & ",'" & TextBox2.Text & "','" & TextBox3.Text & "'," & TextBox4.Text & ")", cn)
            cmd.ExecuteNonQuery()
            MsgBox("Record Insert")
            GridView1.DataBind()
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        TextBox4.Text = ""
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        Try
            cn.Open()
            Dim cmd As New OleDbCommand("update Table1  where ID=" & TextBox1.Text & " set firstname='" & TextBox2.Text & "',lastname='" & TextBox3.Text & "',mobile=" & TextBox4.Text & "", cn)
            cmd.ExecuteNonQuery()
            MsgBox("Record Updated")
            GridView1.DataBind()
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button4.Click
        Try
            cn.Open()
            Dim cmd As New OleDbCommand("delete from Table1 where ID=" & TextBox1.Text & "", cn)
            cmd.ExecuteNonQuery()
            MsgBox("Record Deleted")
            GridView1.DataBind()
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button5.Click
        Try

            cn.Open()
            Dim cmd As New OleDbCommand("select * from Table1 where ID=" & TextBox1.Text & "", cn)
            Dim dr As OleDbDataReader
            dr = cmd.ExecuteReader()
            While dr.Read
                TextBox2.Text = dr.Item(1).ToString
                TextBox3.Text = dr.Item(2).ToString
                TextBox4.Text = dr.Item(3).ToString
            End While
            GridView1.DataBind()
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button6.Click
        Dim cmd As New OleDbCommand("select count(ID) from Table1", cn)
        cn.Open()
        TextBox5.Text = cmd.ExecuteScalar
        cn.Close()
    End Sub
    Dim key As Integer = 0
    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged
        TextBox1.Text = GridView1.SelectedRow.Cells[2].Value;
    End Sub

End Class