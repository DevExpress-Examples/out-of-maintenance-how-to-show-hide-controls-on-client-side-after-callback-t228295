Imports DevExpress.Web
Imports System.Drawing
Imports System.Web.UI

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub ResultsCallbackPanel_Callback(ByVal sender As Object, ByVal e As DevExpress.Web.CallbackEventArgsBase)
        If CBool(CaptchaRadioButtonList.Value) Then
            AddSuccessControlsInPanel()
        Else
            AddFailureControlsInPanel()
        End If
    End Sub

    Private Sub AddFailureControlsInPanel()
        ResultsCallbackPanel.Controls.Add(New ASPxLabel() With {.Text = "Congratulations! You've passed the robot test!", .ForeColor = Color.Green})
    End Sub

    Private Sub AddSuccessControlsInPanel()
        ResultsCallbackPanel.Controls.Add(New ASPxLabel() With {.Text = "You're robot! To try again please reload the page.", .ForeColor = Color.Red})
    End Sub
End Class