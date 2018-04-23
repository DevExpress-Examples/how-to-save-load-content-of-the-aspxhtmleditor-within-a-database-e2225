Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.ASPxSpellChecker
Imports DevExpress.Web.ASPxEditors
Imports DevExpress.Web.ASPxSpellChecker.Localization

Partial Public Class SpellCheckForm
	Inherits SpellCheckerUserControl
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		PrepareCheckedDiv()
		PrepareAddToDictionaryButton()
		Localize()
	End Sub
	Protected Overrides Function GetChildDxEdits() As ASPxEditBase()
		Return New ASPxEditBase() { txtChangeTo, SCSuggestionsListBox }
	End Function

	Protected Overrides Function GetChildDxButtons() As ASPxButton()
		Return New ASPxButton() { btnAddToDictionary, btnChange, btnChangeAll, btnClose, btnIgnore, btnIgnoreAll, btnOptions }
	End Function

	Protected Sub PrepareAddToDictionaryButton()
		btnAddToDictionary.Enabled = SpellChecker.GetCustomDictionary() IsNot Nothing
	End Sub
	Protected Sub PrepareCheckedDiv()
		Dim style As CheckedTextContainerStyle = SpellChecker.GetCheckedTextContainerStyle()
		SCCheckedDiv.Attributes.Add("class", style.CssClass)
		Dim styles As CssStyleCollection = style.GetStyleAttributes(Page)
		For Each key As String In styles.Keys
			SCCheckedDiv.Style.Add(key, styles(key))
		Next key
	End Sub
	Protected Sub Localize()
		btnIgnore.Text = ASPxSpellCheckerLocalizer.GetString(ASPxSpellCheckerStringId.IgnoreOnceButton)
		btnIgnoreAll.Text = ASPxSpellCheckerLocalizer.GetString(ASPxSpellCheckerStringId.IgnoreAllButton)
		btnAddToDictionary.Text = ASPxSpellCheckerLocalizer.GetString(ASPxSpellCheckerStringId.AddToDictionaryButton)
		btnChange.Text = ASPxSpellCheckerLocalizer.GetString(ASPxSpellCheckerStringId.ChangeButton)
		btnChangeAll.Text = ASPxSpellCheckerLocalizer.GetString(ASPxSpellCheckerStringId.ChangeAllButton)
		btnOptions.Text = ASPxSpellCheckerLocalizer.GetString(ASPxSpellCheckerStringId.OptionsButton)
		btnClose.Text = ASPxSpellCheckerLocalizer.GetString(ASPxSpellCheckerStringId.CloseButton)
	End Sub
End Class