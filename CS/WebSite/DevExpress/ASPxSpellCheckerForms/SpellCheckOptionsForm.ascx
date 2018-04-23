<%@ Register Assembly="DevExpress.Web.ASPxEditors.v9.3, Version=9.3.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v9.3, Version=9.3.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTabControl" TagPrefix="dxtc" %>
<%@ Register Assembly="DevExpress.Web.v9.3, Version=9.3.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxRoundPanel" TagPrefix="dxrp" %>
<%@ Register Assembly="DevExpress.Web.v9.3, Version=9.3.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxClasses" TagPrefix="dxw" %>
<%@ Register Assembly="DevExpress.Web.v9.3, Version=9.3.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dxp" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SpellCheckOptionsForm.ascx.cs" Inherits="SpellCheckOptionsForm" %>
<table id="dxMainSpellCheckOptionsFormTable" cellpadding="0" cellspacing="0" class="mainSpellCheckOptionsFormTable">
    <tr>
        <td class="contentSCOptionsFormContainer">
            <table id="dxOptionsForm" cellpadding="0px" cellspacing="0px" style="width:100%">
                <tr>
                    <td>
                        <dxrp:ASPxRoundPanel ID="pnlOptions" runat="server" Width="100%">
                            <PanelCollection>
                                <dxp:PanelContent runat="server">
                                    <table>
                                        <tr>
                                            <td>
                                                <dxe:ASPxCheckBox id="chkbUpperCase" ClientInstanceName="chkbUpperCase" runat="server"></dxe:ASPxCheckBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <dxe:ASPxCheckBox id="chkbMixedCase" ClientInstanceName="chkbMixedCase" runat="server"></dxe:ASPxCheckBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <dxe:ASPxCheckBox id="chkbNumbers" ClientInstanceName="chkbNumbers" runat="server"></dxe:ASPxCheckBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <dxe:ASPxCheckBox id="chkbEmails" ClientInstanceName="chkbEmails" runat="server"></dxe:ASPxCheckBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <dxe:ASPxCheckBox id="chkbUrls" ClientInstanceName="chkbUrls" runat="server"></dxe:ASPxCheckBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                               <dxe:ASPxCheckBox id="chkbTags" ClientInstanceName="chkbTags" runat="server"></dxe:ASPxCheckBox>
                                            </td>
                                        </tr>
                                    </table>
                                </dxp:PanelContent>
                            </PanelCollection>
                        </dxrp:ASPxRoundPanel>
                    </td>
                </tr>
                <tr>
                    <td class="languagePanel">
                        <dxrp:ASPxRoundPanel ID="pnlLanguageSelection" runat="server" Width="100%">
                            <PanelCollection>
                                <dxp:PanelContent runat="server">
                                    <table style="width:100%;">
                                        <tr>
                                            <td colspan="2">
                                                <% =DevExpress.Web.ASPxSpellChecker.Localization.ASPxSpellCheckerLocalizer.GetString(DevExpress.Web.ASPxSpellChecker.Localization.ASPxSpellCheckerStringId.ChooseDictionary)%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <% =DevExpress.Web.ASPxSpellChecker.Localization.ASPxSpellCheckerLocalizer.GetString(DevExpress.Web.ASPxSpellChecker.Localization.ASPxSpellCheckerStringId.Language)%>
                                            </td>
                                            <td align="left" style="width:70%;">
                                                <dxe:ASPxComboBox ID="comboLanguage" ClientInstanceName="comboLanguage" runat="server" Width="100%"></dxe:ASPxComboBox>
                                            </td>
                                        </tr>
                                    </table>
                                </dxp:PanelContent>
                            </PanelCollection>
                        </dxrp:ASPxRoundPanel>
                    </td>
                </tr>  
            </table>        
        </td>
    </tr>
    <tr class="footerBackground">
        <td>
            <table width="100%" cellpadding="0px" cellspacing="0px">
                <tr>
                    <td class="leftBottomButton" align="right">
                        <dxe:ASPxButton id="btnOK" runat="server" AutoPostBack="false" Width="100px" UseSubmitBehavior="false">
                        <ClientSideEvents Click="function(s, e) {aspxSCDialogComplete(true)}"/>
                        </dxe:ASPxButton>
                    </td>
                    <td class="rightBottomButton">
                        <dxe:ASPxButton id="btnCancel" runat="server" AutoPostBack="false" Width="100px" UseSubmitBehavior="false">
                        <ClientSideEvents Click="function(s, e) {aspxSCDialogComplete(false)}"/>                        
                        </dxe:ASPxButton>
                    </td>
                </tr>
            </table>                
        </td>
    </tr>
</table>

