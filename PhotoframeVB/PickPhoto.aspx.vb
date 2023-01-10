Imports System.Drawing
Imports System.IO
Imports System.Net
Imports System.Security.Cryptography
Imports Microsoft

Public Class WebForm2
    Inherits System.Web.UI.Page
    Public sid As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub upload()
        sid = LogInWebRequest("217.73.131.185")
        Dim IdClient = "Arsel_Aga_12345"
        Dim folderPath As String = Server.MapPath("~/Uploads/" & IdClient)


        If Not Directory.Exists(folderPath) Then
            'If Directory (Folder) does not exists. Create it.
            Directory.CreateDirectory(folderPath)
        End If

        For i0 = 0 To Request.Files.Count - 1
            Dim postedFile As HttpPostedFile = Request.Files(i0)

            If postedFile.ContentLength > 0 Then

                'Dim destPath As String = "Multimedia/Sample"
                'Dim FilePath As String = postedFile.FileName
                'Dim filename As String() = FilePath.Split("\")
                'Dim NewFilename As String = "EmriKlientit" & "_" & "_" & Now.ToShortDateString & Path.GetFileName(postedFile.FileName)



                'Dim uploadResult As String = Upload_WebFile(FilePath, destPath)

                Dim filePath2 = folderPath + "/" + Path.GetFileName(postedFile.FileName)
                postedFile.SaveAs(filePath2)
                'lblMessage.Visible = true

            End If
        Next
    End Sub
    Public Function Upload_WebFile(sourceFilePath As String, destinPath As String) As String
        Dim strSplit() As String
        Dim newDestinPath As String = destinPath.Replace("/", "-")
        Dim strUploadPath As String = "http://" & "217.73.131.185" & ":8080/cgi-bin/filemanager/utilRequest.cgi?func=upload&type=standard&sid=" & sid &
             "&dest_path=/" & destinPath & "&overwrite=1&progress=-" & newDestinPath & "test"
        Dim webClient As WebClient = New WebClient
        Dim response() As Byte = webClient.UploadFile(strUploadPath, sourceFilePath)
        Dim strAnswer As String = System.Text.Encoding.ASCII.GetString(response)
        Return strAnswer
    End Function
    Public Function LogInWebRequest(cloudIp As String)

        Dim linkLogin As String = "http://" & cloudIp & ":8080/cgi-bin/authLogin.cgi?user=admin&pwd=U2FsdXMyMDEy&remme=1"
        linkLogin = Send_Request(linkLogin)
        sid = GetSid(linkLogin)
        Return sid
        'Dim reader As XmlTextReader = New XmlTextReader(linkLogin)
        'Dim cdata As XmlCDataSection
        'Dim flag As Boolean = False
        'Dim readersplit = reader.ToString.Split("<")
        'For i0 = 0 To readersplit.Count - 1

        'Next

    End Function
    Private Function GetSid(Data) As String
        Dim datasplit As String(), sidVal As String = ""
        If Not Data Like "" Then
            datasplit = Data.split("<")
            For i0 = 0 To datasplit.Count
                If datasplit(i0).Contains("authSid") Then
                    sidVal = datasplit(i0 + 1)
                    sidVal = Mid(sidVal, 9, sidVal.Length - 3)
                    sidVal = Mid(sidVal, 1, sidVal.Length - 3)
                    Exit For
                End If
            Next
        End If
        Return sidVal
    End Function
    Public Function Send_Request(ByVal linkRequest As String) As String
        Dim Returndata As String = ""
        Dim retVal As Bitmap = Nothing
        Try
            Dim Request As HttpWebRequest = HttpWebRequest.Create(linkRequest)
            Request.UserAgent = "Salus"

            'Create The Response and reader
            Dim Response As HttpWebResponse = Request.GetResponse
            Dim ResponseStream As System.IO.Stream = Response.GetResponseStream
            'create stream reader
            Dim StreamReader As New System.IO.StreamReader(ResponseStream)
            Dim data = StreamReader.ReadToEnd


            Returndata = data
            StreamReader.Close()

            'display the data


        Catch ex As Exception
            MsgBox("Inproper Input " & vbNewLine & ex.ToString)
        End Try
        Return Returndata
    End Function
End Class