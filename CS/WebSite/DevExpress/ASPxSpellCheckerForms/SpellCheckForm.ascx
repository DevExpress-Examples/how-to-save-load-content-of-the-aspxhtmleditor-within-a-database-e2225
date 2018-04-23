<%@ Register Assembly="DevExpress.Web.ASPxEditors.v9.3, Version=9.3.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxSpellChecker.v9.3, Version=9.3.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxSpellChecker" TagPrefix="dxwsc" %>
<%@ Register Assembly="DevExpress.Web.v9.3, Version=9.3.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dxp" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SpellCheckForm.ascx.cs" Inherits="SpellCheckForm" %>
<table id="dxMainSpellCheckFormTable" cellpadding="0" cellspacing="0" class="mainSpellCheckFormTable"> 
    <tr>
        <td class="contentSCFormContainer">
            <table id="dxSpellCheckForm" cellpadding="0" cellspacing="0">
                <tr>
                    <td colspan="2">
						<% =DevExpress.Web.ASPxSpellChecker.Localization.ASPxSpellCheckerLocalizer.GetString(DevExpress.Web.ASPxSpellChecker.Localization.ASPxSpellCheckerStringId.NotInDictionary)%>
                    </td>
                </tr>
                <tr>
                    <td valign="top" class="checkedDivContainer">
                        <div id="SCCheckedDiv" runat="server">
                        </div>
                    </td>
                    <td valign="top" class="buttonTableContainer">
                        <table id="topButtonsTable" class="buttonsTable" cellpadding="0" cellspacing="0">
                            <tr>
                                <td>
                                    <dxe:ASPxButton ID="btnIgnore" runat="server" Width="100%" AutoPostback="false" UseSubmitBehavior="false">
                                    <ClientSideEvents Click="function(s, e) {aspxSCIgnore();}"/>
                                    </dxe:ASPxButton>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" class="verticalSeparator">
                                    <dxe:ASPxButton ID="btnIgnoreAll" runat="server" Width="100%" AutoPostback="false" UseSubmitBehavior="false">
                                        <ClientSideEvents Click="function(s, e) {aspxSCIgnoreAll();}"/>
                                    </dxe:ASPxButton>                    
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" class="verticalSeparator">
                                    <dxe:ASPxButton ID="btnAddToDictionary" runat="server" Width="100%" AutoPostback="false" UseSubmitBehavior="false">
                                        <ClientSideEvents Click="function(s, e) {aspxSCAddToDictionary();}"/>
                                    </dxe:ASPxButton>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="changeToText">
                        <% =DevExpress.Web.ASPxSpellChecker.Localization.ASPxSpellCheckerLocalizer.GetString(DevExpress.Web.ASPxSpellChecker.Localization.ASPxSpellCheckerStringId.ChangeTo)%>
                    </td>
                </tr>
                <tr>
                    <td valign="top" style="width:380px;">
                        <dxp:ASPxPanel ID="ChangeToPanel" runat="server" Width="100%" DefaultButton="btnChange">
                            <PanelCollection>
                                <dxp:PanelContent ID="PanelContent1" runat="server">
                                    <table style="width:100%" cellpadding="0" cellspacing="0px">
                                        <tr>
                                            <td valign="top" style="width:100%" class="verticalSeparator">
                                                <dxe:ASPxTextBox ID="txtChangeTo" runat="server" Width="100%" ClientInstanceName="_dxeSCTxtChangeTo">
                                                    <ClientSideEvents 
                                                        KeyPress="function(s, e) {aspxSCTextBoxKeyPress(s, e);}"
                                                        KeyDown="function(s, e) {aspxSCTextBoxKeyDown(s,e);}"
                                                    />
                                                </dxe:ASPxTextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="listBoxContainer">
                                                <dxe:ASPxListBox runat="server" ID="SCSuggestionsListBox" ClientInstanceName="_dxeSCSuggestionsListBox" width="100%" Height="100px">
                                                    <ClientSideEvents 
                                                    ItemDoubleClick="function(s, e) {aspxSCListBoxItemDoubleClick(s, e);}"
                                                    SelectedIndexChanged="function(s, e) {aspxSCListBoxItemChanged(s, e);}"
                                                    />
                                                </dxe:ASPxListBox> 
                                            </td>
                                        </tr>
                                    </table>                                
                                </dxp:PanelContent>
                            </PanelCollection>
                        </dxp:ASPxPanel>
                    </td>
                    <td valign="top" class="buttonTableContainer">
                        <table id="bottomButtonsTable" class="buttonsTable" cellpadding="0px" cellspacing="0">
                            <tr>
                                <td valign="top">
                                    <dxe:ASPxButton ID="btnChange" runat="server" Width="100%" ClientInstanceName="_dxeSCBtnChange" AutoPostback="false" UseSubmitBehavior="false">
                                        <ClientSideEvents Click="function(s, e) { aspxSCChange();}"/>
                                    </dxe:ASPxButton>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" class="verticalSeparator">
                                    <dxe:ASPxButton ID="btnChangeAll" runat="server" Width="100%" ClientInstanceName="_dxeSCBtnChangeAll" AutoPostback="false" UseSubmitBehavior="false">
                                        <ClientSideEvents Click="function(s, e) { aspxSCChangeAll();}"/>
                                    </dxe:ASPxButton>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            </td>
        </tr>
        <tr class="footerBackground">
            <td>
                <table cellpadding="0" cellspacing="0" style="width:100%;">
                    <tr>
                        <td align="right" class="leftBottomButton">
                            <dxe:ASPxButton ID="btnOptions" runat="server" Width="100px" AutoPostback="false" UseSubmitBehavior="false">
                                <ClientSideEvents Click="function(s, e) {aspxSCShowOptionsForm(true);}"/>
                            </dxe:ASPxButton>
                        </td>
                        <td align="left" class="rightBottomButton">
                            <dxe:ASPxButton ID="btnClose" runat="server" Width="100%" AutoPostback="false" UseSubmitBehavior="false">
                                <ClientSideEvents Click="function(s, e) {aspxSCDialogComplete(false);}"/>
                            </dxe:ASPxButton>
                        </td>                
                    </tr>
                </table>
            </td>
        </tr>
</table>
