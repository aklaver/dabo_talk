import dabo
import dabo.dEvents as dEvents
dabo.ui.loadUI("wx")

## Plant button
#

class PlantNumberBtn(dabo.ui.dButton):
    def initProperties(self):
        self.Caption = "&Plant #"
        self.RegID = "plantNumberBtn"
    
    def onHit(self, evt):
        class pno_dlg(dabo.ui.dOkCancelDialog):
            def afterInit(self):
                sz = self.sizer = dabo.ui.dSizer("v")
            def addControls(self):
                sz = self.Sizer
                sz.appendSpacer(25)
                tBox = dabo.ui.dTextBox(self,Name="Tbox",Caption="Box")
                sz.append(tBox,"x",border=10)
                tBox.setFocus()
                self.Caption = ("Plant Number")
                self.Width = 640
                self.Height = 480
                self.layout()
        dlg = pno_dlg()
        dlg.show()
        p_no = dlg.Tbox.Value
        dlg.release()
        if dlg.Accepted == True:
            biz = self.Form.getBizobj()
            biz.setWhereClause("p_item_no=%s")
            biz.setParams((p_no,))
            biz.requery()
            if biz.RowCount>0:
                self.Form.requery(biz)
                self.Form.update()
            else:
                biz.RestorePositionOnRequery = True
        else:
            pass
        
#
## Plant button

## Common name button
#
            
class CommonBtn(dabo.ui.dButton):
        def initProperties(self):
            self.Caption = "&Common"
            self.RegID = "commonNameBtn"
        def onHit(self, evt):
            class name_dlg(dabo.ui.dOkCancelDialog):
                def afterInit(self):
                    sz = self.Sizer = dabo.ui.dSizer("v")
                def addControls(self):
                    sz = self.Sizer
                    sz.appendSpacer(10)
                    tBox = dabo.ui.dTextBox(self,Name="Tbox",Caption="Search",\
                        BorderWidth=3)
                    sz.append(tBox,"x",border=5)
                    tBox.setFocus()
                    rl = dabo.ui.dRadioList(self,Caption="Text Search",\
                        Choices=["Begins","Contains"],ValueMode="string",\
                        RegID="t_search")
                    sz.append(rl,"x",border=5)
                    self.Caption = ("Common Name")
                    self.Width = 640
                    self.Height = 480
                    self.layout()
            dlg = name_dlg()
            dlg.show()
            dlg.release()
            if dlg.Accepted == True:
                srch_str = dlg.Tbox.Value   
                biz = self.Form.getBizobj()
                biz.setWhereClause("common ilike %s")
                if dlg.t_search.Value == "Begins":
                    
                    biz.setParams((srch_str+"%",))
                    
                else:
                    biz.setParams(("%"+srch_str+"%",))
                    
                biz.requery()
                if biz.RowCount > 0:
                    self.Form.requery(biz)
                    self.Form.update()
                else:
                    biz.RestorePositionOnRequery = True
            else:
                pass

#
## Common name button


## Record buttons/bars
#

class NewBtn(dabo.ui.dButton):
    def initProperties(self):
        self.Name = "new_btn"
        self.Caption= "New"
        
class SaveBtn(dabo.ui.dButton):
    def initProperties(self):
        self.Name = "save_btn"
        self.Caption= "Save"
        
class DeleteBtn(dabo.ui.dButton):
    def initProperties(self):
        self.Name = "delete_btn"
        self.Caption = "Delete"
        
class RecBar(dabo.ui.dBorderSizer):
    def afterInit(self):
        self.Caption = "Record"
        self.Orientation = "Horizontal"
        
class FirstBtn(dabo.ui.dButton):
    def initProperties(self):   
        self.Name = "first_btn"
        self.Caption= "<<First"
        
class PreviousBtn(dabo.ui.dButton):
    def initProperties(self):
        self.Name = "previous_btn"
        self.Caption= "<Previous"
        
class NextBtn(dabo.ui.dButton):
    def initProperties(self):
        self.Name = "next_btn"
        self.Caption = "Next>"
        
class LastBtn(dabo.ui.dButton):
    def initProperties(self):
        self.Name = "last_btn"
        self.Caption= "Last>>"
        
class NavBar(dabo.ui.dBorderSizer):
    def afterInit(self):
        self.Caption = "Navigation"
        self.Orientation = "Horizontal"
        
#
## Record buttons/bars

class PlantPanel(dabo.ui.dPanel):
    
    def initProperties(self):
        pass
        
    def afterInit(self):
        self.ds = self.Form.getBizobj("public.plant1")
        self.Name = "plant"
        self.RegID = "plantPanel"
        self.Sizer = vs = dabo.ui.dSizer("v")
        hs = dabo.ui.dSizer("h")
        sz = dabo.ui.dGridSizer()
        sz.setProperties({"Cols":5,"Rows":11,"HGap":2,"VGap":5})
        #vs.appendSpacer(10)
        vs.append1x(sz)
        vs.append(hs)
        sz.append(dabo.ui.dLabel(self,Caption="Plant # "),row=0,col=0,\
            alignment="right")
        sz.append(dabo.ui.dTextBox(self,DataSource="public.plant1",\
            DataField="p_item_no",RegID="pItemNo"),row=0,col=1)
        sz.append(PlantNumberBtn(self),row=0,col=2)
        sz.append(dabo.ui.dLabel(self,Caption="Plant Type"),row=1,col=0,\
            alignment="right")
        sz.append(dabo.ui.dComboBox(self,DataSource="public.plant1",\
            DataField="plant_type",\
            Choices=["flower","herb"]),"expand",row=1,col=1)
        sz.append(dabo.ui.dLabel(self,Caption="Season"),row=2,col=0,\
            alignment="right")
        sz.append(dabo.ui.dComboBox(self,DataSource="public.plant1",\
            DataField="season",\
            Choices=["annual","perennial","unknown"]),"expand",row=2,col=1)
        sz.append(dabo.ui.dLabel(self,Caption="Genus "),row=3,col=0,\
            alignment="right")
        sz.append(dabo.ui.dTextBox(self,DataSource="public.plant1",\
            DataField="genus"),"expand",row=3,col=1)
        sz.append(dabo.ui.dLabel(self,Caption="Species"),row=4,col=0,\
            alignment="right")
        sz.append(dabo.ui.dTextBox(self,DataSource="public.plant1",\
            DataField="species"),"expand",row=4,col=1)
        sz.append(dabo.ui.dLabel(self,Caption="Common "),row=5,col=0,\
            alignment="right")
        sz.append(dabo.ui.dTextBox(self,DataSource="public.plant1",\
            DataField="common",RegID="commonName"),"expand",row=5,col=1,\
            colSpan=3)
        sz.append(CommonBtn(self),row=5,col=5)
        sz.append(dabo.ui.dLabel(self,Caption="Variety"),row=6,col=0,\
            alignment="right")
        sz.append(dabo.ui.dTextBox(self,DataSource="public.plant1",\
            DataField="variety"),"expand",row=6,col=1,colSpan=2)
        sz.append(dabo.ui.dLabel(self,Caption="Series"),row=7,col=0,\
            alignment="right")
        sz.append(dabo.ui.dTextBox(self,DataSource="public.plant1",\
            DataField="series"),row=7,col=1)
        sz.append(dabo.ui.dLabel(self,Caption="Color"),row=7,col=2,\
            alignment="right")
        sz.append(dabo.ui.dTextBox(self,DataSource="public.plant1",\
            DataField="color"),"expand",row=7,col=3)
        sz.append(dabo.ui.dLabel(self,Caption="CategoryType"),row=8,col=0,\
            alignment="right")
        sz.append(dabo.ui.dComboBox(self,DataSource="public.plant1",\
            DataField="category_type",\
            Choices=["asst","plant","tag"],RegID="categoryType"),"expand",\
            row=8,col=1)
        sz.append(dabo.ui.dLabel(self,Caption="CategorySubType"),row=8,col=2,
            alignment="right")
        sz.append(dabo.ui.dComboBox(self,DataSource="public.plant1",\
            DataField="category_sub_type",\
            Choices=["assy","none","normal","regular","fall_bulb","price_group",
            "sub_price_group"],RegID="categorySubType"),row=8,col=3,)
        sz.appendSpacer((10),"expand",row=5,col=4)
        #sz.setColExpand(True,2,proportion=0)
        nbar = NavBar(vs.Parent,Parent=vs.Parent,Name="Nav")
        nbar.append(FirstBtn(self,RegID=self.Name+"FirstBtn"))
        nbar.append(PreviousBtn(self,RegID=self.Name+"PreviousBtn"))
        nbar.append(NextBtn(self,RegID=self.Name+"NextBtn"))
        nbar.append(LastBtn(self,RegID=self.Name+"LastBtn"))
        hs.append(nbar)
        rbar = RecBar(vs.Parent,Parent=vs.Parent,Name="Rec")
        rbar.append(NewBtn(self,RegID=self.Name+"NewBtn"))
        rbar.append(SaveBtn(self,RegID=self.Name+"SaveBtn"))
        rbar.append(DeleteBtn(self,RegID=self.Name+"DeleteBtn"))
        hs.append(rbar)
        
    def onHit_plantFirstBtn(self,evt):
        self.Form.first(self.ds)
    
    def onHit_plantPreviousBtn(self,evt):
        self.Form.prior(self.ds)
        
    def onHit_plantNextBtn(self,evt):
        self.Form.next(self.ds)
        
    def onHit_plantLastBtn(self,evt):
        self.Form.last(self.ds)
            
    def onHit_plantNewBtn(self,evt):
        self.Form.new(self.ds)
        
    def onHit_plantSaveBtn(self,evt):
        self.Form.save(self.ds)
        self.Form.requery(self.ds)
        self.Form.update()
        
    def onHit_plantDeleteBtn(self,evt):
        self.Form.delete(self.ds,message="Are you sure?")
        self.Form.requery(self.ds)
        self.Form.update()

class ProjectionGrid(dabo.ui.dGrid):
    def initProperties(self):
        self.ActivateEditorOnSelect = False
        self.DataSource = "public.projection"
        self.RegID = "projectionGrid"
        self.SelectionMode = "Row"
        self.Editable = True
    def afterInit(self):
        con_id = self.DataSource.getCId()
        lineIdCol = dabo.ui.dColumn(self,Name="pgLineId",Caption="line_id",\
            DataField="line_id",DataType="int")
        self.addColumn(lineIdCol)
        pItemNoCol = dabo.ui.dColumn(self,Name="pgPItemNo",Caption="Plant #",\
            DataField="p_item_no",DataType="int")
        self.addColumn(pItemNoCol)
        yearCol = dabo.ui.dColumn(self,Name="pgYear",Caption="Year",\
            DataField="year",DataType="unicode",Editable=True)
        self.addColumn(yearCol)
        cidCol = dabo.ui.dColumn(self,Name="pgCId",Caption="c_id",\
            DataField="c_id",DataType="list",ListEditorChoices=con_id,\
            Editable=True)
        self.addColumn(cidCol)
        methodCol = dabo.ui.dColumn(self,Name="pgMethod",Caption="Method",\
            DataField="method",DataType="list",\
            ListEditorChoices=["none","seed","vegetative"],Editable=True)
        self.addColumn(methodCol)
        subMethodCol = dabo.ui.dColumn(self,Name="pgSubMethod",\
            Caption="SubMethod",DataField="sub_method",DataType="unicode",\
            Editable=True)
        self.addColumn(subMethodCol)
        qtyCol = dabo.ui.dColumn(self,Name="pgQty",Caption="Qty",\
            DataField="qty",DataType="decimal.Decimal",Editable=True)
        self.addColumn(qtyCol)
        potCtCol = dabo.ui.dColumn(self,Name="pgPotCt",Caption="Pot Ct",\
            DataType="int",DataField="pot_ct")
        self.addColumn(potCtCol)
        projNoteCol = dabo.ui.dColumn(self,Name="pgProjNote",Caption="Note",\
            DataField="proj_note",DataType="unicode",Editable=True)
        self.addColumn(projNoteCol)
        itemKeyCol = dabo.ui.dColumn(self,Name="pgItemKey",Caption="Item Key",\
            DataType="unicode",DataField="item_key")
        self.addColumn(itemKeyCol)
        trialCol = dabo.ui.dColumn(self,Name="pgTrial",Caption="Trial",\
            DataType="bool",DataField="trial",Editable=True)
        self.addColumn(trialCol)
        linkKeyCol = dabo.ui.dColumn(self,Name="pgLinkKey",Caption="Link Key",\
            DataType="unicode",DataField="link_key")
        self.addColumn(linkKeyCol)
        self.autoSizeCol(colNum="all")
    


class ProjectionPanel(dabo.ui.dPanel):
    
    def afterInit(self):
        self.ds = self.Form.getBizobj("public.projection")
        self.Name = "projection"
        self.RegID = "projectionPanel"
        self.Sizer = vs = dabo.ui.dSizer("v")
        vs.append(ProjectionGrid(self),1,"x")
        hs=dabo.ui.dSizer("h",Name="Hs")
        vs.append(hs)
        nbar = NavBar(vs.Parent,Parent=vs.Parent,Name="Nav")
        nbar.append(FirstBtn(self,RegID= self.Name+"FirstBtn"))
        nbar.append(PreviousBtn(self,RegID=self.Name+"PreviousBtn"))
        nbar.append(NextBtn(self,RegID=self.Name+"NextBtn"))
        nbar.append(LastBtn(self,RegID=self.Name+"LastBtn"))
        hs.append(nbar)
        rbar = RecBar(vs.Parent,Parent=vs.Parent,Name="Rec")
        rbar.append(NewBtn(self,RegID=self.Name+"NewBtn"))
        rbar.append(SaveBtn(self,RegID=self.Name+"SaveBtn"))
        rbar.append(DeleteBtn(self,RegID=self.Name+"DeleteBtn"))
        hs.append(rbar)
        
    
    def onHit_projectionFirstBtn(self,evt):
        ds = self.ds
        self.Form.first(ds)
    
    def onHit_projectionPreviousBtn(self,evt):
        ds = self.ds
        self.Form.prior(ds)
        
    def onHit_projectionNextBtn(self,evt):
        ds = self.ds
        self.Form.next(ds)
        
    def onHit_projectionLastBtn(self,evt):
        ds = self.ds
        self.Form.last(ds)
        
    def onHit_projectionNewBtn(self,evt):
        self.Form.new(self.ds)
        
    def onHit_projectionSaveBtn(self,evt):
        self.Form.save(self.ds)
        self.Form.requery(self.ds)
        self.update()
    
    def onHit_projectionDeleteBtn(self,evt):
        self.Form.delete(self.ds,message="Are you sure?")
        self.Form.requery(self.ds)
        self.Form.update()
        
        
class MainForm(dabo.ui.dForm):
    
    def initProperties(self):
        self.Caption = "Projection"
        
    
        
    def afterInit(self):
        #self.panel = pnl = dabo.ui.dPanel(self)
        #self.Sizer.append1x(pnl)
        self.pl_biz = self.getBizobj()
        tc = self.pl_biz.getTempCursor()
        tc.execute("select min(p_item_no) as min_pno from plant1")
        self.pno = tc.Record.min_pno
        self.pl_biz.setWhereClause("p_item_no=%s")
        self.pl_biz.setParams((self.pno,))
        self.requery()
        #pl_biz.setWhereClause("p_item_no <10")
        vs = self.Sizer  # = dabo.ui.dSizer("v")
        vs.append1x(PlantPanel(self))
        vs.appendSpacer(10)
        vs.append1x(ProjectionPanel(self))
        

    def beforePointerMove(self):
        biz = self.getBizobj()
        """if biz.isChanged() == True:
            rn = biz.RowNumber
            self.save()
        else:
            pass"""
        self.confirmChanges()
    
    def onFieldValidationFailed(self,ctrl,ds,df,val,err):
        msg = self.Application.str2Unicode(err) 
        self.notifyUser(msg,severe=True,exception=err)
        dabo.ui.callAfter(ctrl.setFocus)
        
    def createBizobjs(self):
        ci = dabo.db.dConnectInfo(Name="PgConn",DbType="PostgresQL",
            User="aklaver",Database="pgday",Host="localhost",Port=5434)
        self.Connection = dabo.db.dConnection(ci)
        
        class Publicplant1Bizobj(dabo.biz.dBizobj):
                def afterInit(self):
                    self.DataSource = "public.plant1"
                    self.AutoPopulatePK = True
                    self.KeyField = "p_item_no"
                    self.addFrom("public.plant1")
                    self.addOrderBy("p_item_no")
                    self.setLimit(None)
                    self.DataStructure = (
                        ("p_item_no","I",True,"public.plant1","p_item_no"),
                        ("plant_type","C",False,"public.plant1","plant_type"),
                        ("variety","C",False,"public.plant1","variety"),
                        ("color","C",False,"public.plant1","color"),
                        ("season","C",False,"public.plant1","season"),
                        ("category_type","C",False,"public.plant1","category_type"),
                        ("category_sub_type","C",False,"public.plant1",
                            "category_sub_type"),
                        ("common","C",False,"public.plant1","common"),
                        ("series","C",False,"public.plant1","series"),
                        ("genus","C",False,"public.plant1","genus"),
                        ("species","C",False,"public.plant1","species")
                    )
                    self.SaveNewUnchanged=True
                    self.RequeryChildOnSave=True
                    self.DefaultValues={"plant_type":"herb",
                    "season":"annual",
                    "category_type":"plant",
                    "category_sub_type":"normal",
                    "variety":None}
                
                def validateRecord(self):
                    """Returning anything other than an empty string from
                    this method will prevent the data from being saved.
                    """
                    ret = ""
                    # Add your business rules here. 
                    return ret
                    
                def validateField(self,fld,val):
                    ret = ""
                    if fld == "common" and val == "":
                        ret = "No empty strings"
                        self.Record.common = self.Record.common
                        self.Application.MainForm.update()
                    return ret
                    
        publicplant1Bizobj = Publicplant1Bizobj(self.Connection)
        self.addBizobj(publicplant1Bizobj)
        
        
        class PublicprojectionBizobj(dabo.biz.dBizobj):
                def afterInit(self):
                    self.DataSource = "public.projection"
                    self.AutoPopulatePK = True
                    self.KeyField = "line_id"
                    self.addFrom("public.projection")
                    self.addOrderBy("year desc")
                    self.addOrderBy("c_id")
                    self.addField("line_id")
                    self.addField("c_id")
                    self.addField("p_item_no")
                    self.addField("item_key")
                    self.addField("year")
                    self.addField("method")
                    self.addField("sub_method")
                    self.addField("qty")
                    self.addField("proj_note")
                    self.addField("trial")
                    self.addField("link_key")
                    self.setLimit(None)
                    self.DataStructure = (
                        ("line_id","I",True,"public.projection","line_id"),
                        ("c_id","C",False,"public.projection","c_id"),
                        ("p_item_no","I",False,"public.projection","p_item_no"),
                        ("item_key","C",False,"public.projection","item_key"),
                        ("year","C",False,"public.projection","year"),
                        ("method","C",False,"public.projection","method"),
                        ("sub_method","C",False,"public.projection","sub_method"),
                        ("qty","N",False,"public.projection","qty"),
                        ("proj_note","M",False,"public.projection","proj_note"),
                        #("pot_ct","I",False,"public.projection","pot_ct"),
                        ("trial","B",False,"public.projection","trial"),
                        ("link_key","C",False,"public.projection","link_key")
                    )
                    self.LinkField = "p_item_no"
                    self.ParentLinkField = "p_item_no"
                    self.FillLinkFromParent = True
                    self.SaveNewUnchanged= True
                    self.RestorePositionOnRequery = True
                    self.DefaultValues = None
                    self.VirtualFields = {"pot_ct":self.potCount}
                    
                def validateRecord(self):
                    """Returning anything other than an empty string from
                    this method will prevent the data from being saved.
                    """
                    ret = ""
                    # Add your business rules here. 
                    return ret
                    
                
                    
                def getCId(self):
                    tc = self.getTempCursor()
                    tc.execute("select c_id from container order by c_id")
                    ds = tc.getDataSet()
                    cid = [rec["c_id"] for rec in ds]
                    return cid
                
                
                def potCount(self):
                    cur_pCt = self.getTempCursor()
                    cur_pCt.execute("select cell_per from container where \
                        c_id=%(cid)s", {"cid":self.Record.c_id})
                    rs_pCt = cur_pCt.getDataSet()
                    return self.Record.qty * rs_pCt[0]["cell_per"]
                    
        publicprojectionBizobj = PublicprojectionBizobj(self.Connection)
        self.addBizobj(publicprojectionBizobj)
        publicplant1Bizobj.addChild(publicprojectionBizobj)
        
def main():
    app=dabo.dApp()
    app.MainFormClass = MainForm
    app.BasePrefKey = "projFrm"
    app.start()
    
if __name__ == "__main__":
    main()
