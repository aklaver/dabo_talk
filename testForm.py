import dabo
import dabo.dEvents as dEvents
dabo.ui.loadUI("wx")

class PreviousBtn(dabo.ui.dButton):
    def initProperties(self):
        self.Name = "previous_btn"
        self.Caption = "<Previous"

class NavBar(dabo.ui.dBorderSizer):
    def afterInit(self):
        self.Caption = "Navigation"
        self.Orientation = "Horizontal"

class TestPanel1(dabo.ui.dPanel):
    
    def afterInit(self):
        self.Sizer = vs = dabo.ui.dSizer("v")
        vs.append(dabo.ui.dLabel(self,Caption="Panel1 Label"))
        rb = NavBar(vs.Parent, Parent=vs.Parent, Name="navBar")
        rb.append(PreviousBtn(self))
        hs1 = dabo.ui.dSizer("h")
        hs1.append(rb)
        vs.append(hs1)
        
class TestPanel2(dabo.ui.dPanel):
    
    def afterInit(self):
        self.Sizer = vs = dabo.ui.dSizer("v")
        vs.append1x(dabo.ui.dLabel(self,Caption="Panel2 Label1",RegID="Label1",
            BorderWidth=2))
        vs.appendSpacer(5)
        vs.append(dabo.ui.dLabel(self,Caption="Panel2 Label2",BorderWidth=2),1)
        vs.appendSpacer(5)
        vs.append(dabo.ui.dLabel(self,Caption="Panel2 Label3",BorderWidth=2),
            "expand")
        
class MainForm(dabo.ui.dForm):
    
    def initProperties(self):
        self.Caption = "Test"
        
    def afterInit(self):
        vs = self.Sizer
        vs.append1x(TestPanel1(self))
        vs.appendSpacer(10)
        vs.append1x(TestPanel2(self))

def main():
    app=dabo.dApp()
    app.MainFormClass = MainForm
    app.BasePrefKey = "testFrm"
    app.start()
    
if __name__ == "__main__":
    main()
