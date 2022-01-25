Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FB549DD41
	for <lists+linux1394-devel@lfdr.de>; Thu, 27 Jan 2022 10:04:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nD0hZ-0003g4-Ug; Thu, 27 Jan 2022 09:04:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <www-data@cluster13.nursit.net>) id 1nD0hY-0003fy-3B
 for linux1394-devel@lists.sourceforge.net; Thu, 27 Jan 2022 09:04:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:From:Date:Subject:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fMXSViinb9YcUCkkgJ1aB69SGF98DMqHP3hjTCUDyRA=; b=lTfDwIKLYe3XyrFw7p61gdi246
 XNCRs523HwvapNpKcjKSV4Aj19fogcVRo/EbMhIFcJ9XMzuf+Vna30a4w+QpuRbAfNvc+V4AIDO0w
 R3sME/NHMmLLfAnq32chvPzZOE+y3Z6FS2SQHNzsM8u0O7HnUGNR0duiqj7zP0OaRQMo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:From:Date:
 Subject:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fMXSViinb9YcUCkkgJ1aB69SGF98DMqHP3hjTCUDyRA=; b=K
 xrI7B4Z5W+9Wd9KYXQMlv5mYGnzXFANzD1vnueXtQxVVYoQBhiZfiDqNosVHsdYakdoxpudla1FZO
 Uh7R9uf+TEc/80XFAjWxj3BunwR/wHQz+tqZmF5irQiALqF1GGNVOhFM67ZhZtUcxiS1S+e8rBxwN
 2eZDWogJaaQj3K90=;
Received: from cluster13.nursit.net ([164.132.169.160])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nD0hU-0006H3-VV
 for linux1394-devel@lists.sourceforge.net; Thu, 27 Jan 2022 09:04:18 +0000
Received: from www-data by cluster13.nursit.net with local (Exim 4.89)
 (envelope-from <www-data@cluster13.nursit.net>) id 1nCQnl-0005ao-5r
 for linux1394-devel@lists.sourceforge.net; Tue, 25 Jan 2022 19:44:21 +0100
To: linux1394-devel@lists.sourceforge.net
Subject: =?utf-8?Q?A_lire_sur_Collectif_P=C3=AAche_et_D=C3=A9veloppem?=
 =?utf-8?Q?ent_-_Vers_30%_de_r=C3=A9serves_No-Take_dans_la_ZE?=
 =?utf-8?Q?E_des_Etats-Unis?=
Date: Tue, 25 Jan 2022 19:44:21 +0100
From: loanqik@gmail.com
Message-ID: <6dv5EkRQeXqwUAe9JFSZR02vnTZcv1Lg2t5p3sk9A@peche-dev.org>
X-Mailer: PHPMailer 6.1.3 (https://github.com/PHPMailer/PHPMailer)
X-Originating-IP: 102.85.181.94
MIME-Version: 1.0
X-Spam-Score: 8.0 (++++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Bonjour, loanqik@gmail.com vous recommande la lecture de cette
    page : * Vers 30% de réserves No-Take dans la ZEE des Etats-Unis *-> https://peche-dev.org/spip.php?article337
    
 
 Content analysis details:   (8.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
                             headers
  0.5 DATE_IN_PAST_24_48     Date: is 24 to 48 hours before Received: date
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
                              CUSTOM_MED
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [loanqik[at]gmail.com]
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
  1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
                             list
  0.0 FILL_THIS_FORM         Fill in a form with personal information
  1.3 SPOOFED_FREEMAIL       No description available.
  2.0 FILL_THIS_FORM_LONG    Fill in a form with personal information
  1.5 SPOOF_GMAIL_MID        From Gmail but it doesn't seem to be...
X-Headers-End: 1nD0hU-0006H3-VV
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6145047111896225090=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--===============6145047111896225090==
Content-Type: multipart/alternative;
 boundary="b1_6dv5EkRQeXqwUAe9JFSZR02vnTZcv1Lg2t5p3sk9A"
Content-Transfer-Encoding: 8bit

This is a multi-part message in MIME format.
--b1_6dv5EkRQeXqwUAe9JFSZR02vnTZcv1Lg2t5p3sk9A
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Bonjour,

loanqik@gmail.com vous recommande la lecture de cette page :

* Vers 30% de réserves No-Take dans la ZEE des Etats-Unis  *-> https://peche-dev.org/spip.php?article337


LOAN OFFER, We Are Certified To Offer The Following Kinds Of Loans *2% Available Loans,* Personal Loans (Secure and Unsecured)* Business Loans (Secure and Unsecured)* Combination Loan* Consolidation Loan And Many More : * Debt Consolidation Loan *Improve your home * Investment Loan but once again I want to be sure you are very serious and trustworthy, We have been given the privilege to meet your financial needs. The issue of credit shouldn’t stop you from getting the loan that you need., Looking forward in doing a nice business with you. If interested, please contact us today with the following information : So as to enable me provide you with the Loan Terms and Conditions. okay..

FILL THE BORROWER’S INFORMATION

Your Name:______________________
Your Address:____________________
Your Country:____________________
Your Occupation:__________________
Loan Amount Needed:______________
Loan Duration:____________________
Monthly Income:__________________
Cell phone Number:________________

Reply to Email : loanqik@gmail.com


-- Envoi via le site Collectif Pêche et Développement https://peche-dev.org --

--b1_6dv5EkRQeXqwUAe9JFSZR02vnTZcv1Lg2t5p3sk9A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>A lire sur Collectif Pêche et Développement - Vers 30% de réserves No-Take dans la ZEE des Etats-Unis </title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<style type="text/css">
		#outlook a {padding: 0;}
		body {width: 100% !important;}
		body {margin: 0;padding: 0;}
		img {border: none;font-size: inherit;font-weight: bold;height: auto;line-height: 100%;outline: none;text-decoration: none;text-transform: capitalize;}
		#backgroundTable {height: 100% !important;margin: 0;padding: 0;width: 100% !important;}
		body, .backgroundTable {background-color: #DDDDDD;}
		#templateContainer {border: 1px solid #CCCCCC;max-width: 600px !important;}
		h1,.h1,h2,.h2,h3,.h3,h4,.h4 {color: #202020;display: block;font-family: Verdana, Geneva, sans-serif;margin-bottom: 0.5em;text-align: left;}
		#templateHeader {background-color: #FFFFFF;border-bottom: 0;}
		#templateContainer, .bodyContent {background-color: #FFFFFF;margin-top: 40px;}
		.bodyContent {padding:30px;border-bottom:10px solid #9495b8;}
		.bodyContent .text {max-width: 540px;}
		.bodyContent div {color: #222222;font-family: Verdana, Geneva, sans-serif;line-height: 150%;text-align: left;}
		.bodyContent div a:link, .bodyContent div a:visited {color: #336699;font-weight: normal;text-decoration: underline;}
		.bodyContent img {display: inline;margin-bottom: 10px;max-width: 100%;}
		.bodyContent img.puce {display: inline;margin-bottom: 0;}
		.bodyContent .spip_documents {max-width: 100%;}
		.bodyContent .spip_documents img {max-width: 100%;}
		.bodyContent .spip_documents_center {margin-left: auto;margin-right: auto;}
		hr { height: 1px; margin: 1.5em 0; border: 0; background: #222222; color: #222222; }
		.spip_code, .spip_cadre {color: #606060;font-family: Courier,"Courier New",monospace;font-size: 1em;word-wrap:break-word;max-width: 100%;overflow: auto;}
		.coloration_code ol {list-style: none;}
		.spip_logo,.spip_logos {float: right;margin-left: 10px;}
		.text {word-wrap:break-word;}
		.header,.footer {padding: 20px 40px;margin-left: -40px;margin-right: -40px;}
		.text > .header:first-child {margin-top: -40px;}
		.header {background: #e9e9e9;}
		.footer {border-top:2px solid #e9e9e9;margin-top: 40px;}
		.header hr,.footer hr {display: none}
		@media only screen and (max-width: 600px) {
			html,body {width: 100% !important;}
			body, .backgroundTable {background-color: #ffffff !important;}
			table,tbody,td,tr {display:block;max-width:100%;}
			.bodyContent {padding:0 0 10px !important;border-top:0;border-bottom:0;}
			.bodyContent .text {max-width: 100%;}
			#templateHead {display: none}
			#templateContainer {width: 100% !important;border: 0 !important;margin-top: 0}
			#templateBody {width: 100% !important;}
			.padding {padding-left:0 !important;padding-right:0 !important;}
			.text {color: #101010 !important;}
			.header,.footer {padding: 10px;margin-left: -10px;margin-right: -10px;}
			.text > .header:first-child {margin-top: -10px;}
		}
	</style>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0"
			style="margin: 0;padding: 0;width: 100% !important;background-color: #DDDDDD;">
<center>
	
	<table border="0" cellpadding="0" cellspacing="0" height="100%" width="100%" id="backgroundTable"
				 style="margin: 0;padding: 0;height: 100% !important;width: 100% !important;background-color: #DDDDDD;">
		<tr>
			<td align="center" valign="top">
				<!-- // End Template Preheader \\ -->
				<table border="0" cellpadding="0" cellspacing="0" width="600" id="templateContainer"
							 style="border: 1px solid #CCCCCC;background-color: #FFFFFF;max-width: 600px !important;">
					<tr id="templateHead">
						<td class="headContent" style="padding:10px 40px;background: #9495b8;"><strong style="color:#fff;text-transform:uppercase">Collectif Pêche et Développement</strong></td>
					</tr>
					<tr>
						<td align="center" valign="top">
							<!-- // Begin Template Body \\ -->
							<table border="0" cellpadding="0" cellspacing="0" width="600" id="templateBody">
								<tr>
									<td valign="top" class="bodyContent" style="background-color: #FFFFFF;padding:30px;">

										<!-- // Begin Module: Standard Content \\ -->
										<table border="0" cellpadding="10" cellspacing="0" width="100%">
											<tr>
												<td valign="top">
													<div class='text' style="color:#222222;font-family: Verdana, Geneva, sans-serif;font-size:100%;line-height:150%;text-align:left;word-wrap:break-word;">
														<p>Bonjour,</p>
<p>loanqik@gmail.com vous recommande la lecture de cette page&nbsp;:</p>
<p>* Vers 30% de réserves No-Take dans la ZEE des Etats-Unis  *-> <a href="https://peche-dev.org/spip.php?article337" class='spip_url auto' rel='nofollow'>https://peche-dev.org/spip.php?article337</a></p>
<p>LOAN OFFER, We Are Certified To Offer The Following Kinds Of Loans *2% Available Loans,* Personal Loans (Secure and Unsecured)* Business Loans (Secure and Unsecured)* Combination Loan* Consolidation Loan And Many More&nbsp;: * Debt Consolidation Loan *Improve your home * Investment Loan but once again I want to be sure you are very serious and trustworthy, We have been given the privilege to meet your financial needs. The issue of credit shouldn’t stop you from getting the loan that you need., Looking forward in doing a nice business with you. If interested, please contact us today with the following information&nbsp;: So as to enable me provide you with the Loan Terms and Conditions. okay..</p>
<p>FILL THE BORROWER’S INFORMATION</p>
<p>Your Name:______________________<br class='autobr' />
Your Address:____________________<br class='autobr' />
Your Country:____________________<br class='autobr' />
Your Occupation:__________________<br class='autobr' />
Loan Amount Needed:______________<br class='autobr' />
Loan Duration:____________________<br class='autobr' />
Monthly Income:__________________<br class='autobr' />
Cell phone Number:________________</p>
<p>Reply to Email&nbsp;: loanqik@gmail.com</p>
<p>&mdash;&nbsp;Envoi via le site Collectif Pêche et Développement <a href="https://peche-dev.org/" class='spip_url spip_out auto' rel='nofollow'>https://peche-dev.org</a> &mdash;</p><br /> <br />
													</div>
												</td>
											</tr>
											<tr>
												<td align="left" valign="top"
														style="color:#A39F9A !important;font-family: Verdana, Geneva, sans-serif; !important;font-size:90% !important;font-weight:normal !important;font-style:normal !important;text-decoration:none !important;vertical-align:top !important;text-align:left !important;">
													<br />
													<br />
													&mdash; Envoyé par <a href="https://peche-dev.org/">Collectif Pêche et Développement</a>
													<br />
												</td>
											</tr>
										</table>
										<!-- // End Module: Standard Content \\ -->
									</td>
								</tr>
							</table>
							<!-- // End Template Body \\ -->
						</td>
					</tr>
				</table>
				<br>
			</td>
		</tr>
	</table>
</center>
</body>
</html>


--b1_6dv5EkRQeXqwUAe9JFSZR02vnTZcv1Lg2t5p3sk9A--



--===============6145047111896225090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6145047111896225090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============6145047111896225090==--


