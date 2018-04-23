Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web.ASPxHtmlEditor
Imports DevExpress.Web.ASPxEditors
Imports DevExpress.Web.ASPxHtmlEditor.Localization

Partial Public Class TableColumnPropertiesForm
	Inherits HtmlEditorUserControl
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		Localize()
	End Sub
	Private Sub Localize()
		btnChange.Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.ButtonOk)
		btnCancel.Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.ButtonCancel)

		lblSize.Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.ChangeTableColumn_Size) & ":"
		lblWidth.Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_Width) & ":"
		lblHeight.Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_Height) & ":"
		cmbWidth.Items(0).Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_FullWidth)
		cmbWidth.Items(1).Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_AutoFitToContent)
		cmbWidth.Items(2).Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_Custom)

		cmbHeight.Items(0).Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_AutoFitToContent)
		cmbHeight.Items(1).Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_Custom)

		lblAlign.Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_Alignment) & ":"
		lblHorizontalAlign.Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_HorzAlignment) & ":"
		lblVerticalAlign.Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_VertAlignment) & ":"
		cmbAlign.Items(0).Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_None)
		cmbAlign.Items(1).Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_Alignment_Left)
		cmbAlign.Items(2).Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_Alignment_Center)
		cmbAlign.Items(3).Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_Alignment_Right)

		cmbVAlign.Items(0).Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_None)
		cmbVAlign.Items(1).Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_VAlignment_Top)
		cmbVAlign.Items(2).Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_VAlignment_Middle)
		cmbVAlign.Items(3).Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_VAlignment_Bottom)

		lblAppearance.Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_Appearance) & ":"
		lblBackgroundColor.Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_BgColor) & ":"

		ckbApplyForAllElements.Text = ASPxHtmlEditorLocalizer.GetString(ASPxHtmlEditorStringId.InsertTable_ApplyToAllCell)
		' Text="Apply to all cells in the table"
	End Sub
	Protected Overrides Function GetChildDxEdits() As ASPxEditBase()
		Return New ASPxEditBase() { lblAlign, lblHorizontalAlign, lblSize, lblWidth, cmbWidth, txbWidth, lblHeight, cmbHeight, txbHeight, cmbAlign, lblAppearance, txbBackgroundColor, lblVerticalAlign, cmbVAlign, ckbApplyForAllElements, cmbWidthType, cmbHeightType }
	End Function
	Protected Overrides Function GetChildDxButtons() As ASPxButton()
		Return New ASPxButton() { btnCancel, btnChange }
	End Function
	Protected Overrides Function GetChildDxHtmlEditorRoundPanels() As ASPxHtmlEditorRoundPanel()
		Return New ASPxHtmlEditorRoundPanel() { rpSize, rpLayout, rpAppearance }
	End Function
End Class
