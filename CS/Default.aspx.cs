using System.Drawing;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page {
    protected void CallbackPanel_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e) {
        if((bool)CaptchaRadioButtonList.Value)
            AddSuccessControlsInPanel(sender);
        else
            AddFailureControlsInPanel(sender);
    }

    private void AddFailureControlsInPanel(object sender) {
        (sender as ASPxCallbackPanel).Controls.Add(new ASPxLabel() {
            ID = "SuccessLabel",
            Text = "Congratulations! You've passed the robot test!",
            ForeColor = Color.Green
        });
    }

    private void AddSuccessControlsInPanel(object sender) {
        (sender as ASPxCallbackPanel).Controls.Add(new ASPxLabel() {
            ID = "FailLabel",
            Text = "You're a robot! To try again, please reload the page.",
            ForeColor = Color.Red
        });
    }
}