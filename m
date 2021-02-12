Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4CB319804
	for <lists+linux1394-devel@lfdr.de>; Fri, 12 Feb 2021 02:39:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lANQd-0000oh-J7; Fri, 12 Feb 2021 01:39:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <www-data@gustavomoraes384938.pserver.ru>)
 id 1lANQc-0000oa-3u
 for linux1394-devel@lists.sourceforge.net; Fri, 12 Feb 2021 01:39:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Message-Id:From:Content-type:MIME-Version:
 Subject:To:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+HPsaUJ+Lss4w0/r88UPOcU+9GorAUUaG8Okf2LiJ5A=; b=BJqNCgNb51y1/sMYHng2v6pKeP
 +G+KEKKeX/8mjYKRBE+1JWSB8sW4fveSQhor73HS/i1mR3GDG1HUkDJZi372cVptK8CcVul31inEh
 97FE3VcdejygaorFvfxUlIm23ovRfnJ56TEU6b1RW5svnx4/rv7K0x4xAEoX9XnvNXOg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Message-Id:From:Content-type:MIME-Version:Subject:To:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+HPsaUJ+Lss4w0/r88UPOcU+9GorAUUaG8Okf2LiJ5A=; b=L
 eAcscx1uFRjriEJWnuoHv76drY3bUVprR+5usZWO+36gtSrXCAvLaa4ZU1Q+n0WxrD0OF8md5LWoC
 DpUDQM1cVT/aJk7GHHw3epVgrpg+GfzfgwW4dBu8hpMe0+uLcy1BsgnskoZaq+hm9uIbOxaPX4NGD
 FPRA7/q1KMgH9e10=;
Received: from gustavomoraes384938.pserver.ru ([185.82.219.102])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lANQS-005gy6-Gp
 for linux1394-devel@lists.sourceforge.net; Fri, 12 Feb 2021 01:39:26 +0000
Received: by gustavomoraes384938.pserver.ru (Postfix, from userid 33)
 id CAC9A431E6; Fri, 12 Feb 2021 03:37:30 +0200 (EET)
To: linux1394-devel@lists.sourceforge.net
Subject: sigue el deposito de 5.987,
 20 mil euros en su cuenta bancaria - [ id 990897763  ]
MIME-Version: 1.0
From: prestamos madrid <prestamos_madrid2@outlook.com>
Message-Id: <20210212013730.CAC9A431E6@gustavomoraes384938.pserver.ru>
Date: Fri, 12 Feb 2021 03:37:30 +0200 (EET)
X-Spam-Score: 7.0 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: azure.com]
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [185.82.219.102 listed in bl.score.senderscore.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (prestamos_madrid2[at]outlook.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 1.9 SPOOFED_FREEMAIL       No description available.
X-Headers-End: 1lANQS-005gy6-Gp
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
Content-Type: multipart/mixed; boundary="===============3945758110124354129=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============3945758110124354129==
Content-type: text/html; charset=iso-8859-1

<html>
<head>
    <title>Comprobante</title>

    <meta content="text/html; charset=windows-1252" http-equiv="Content-Type">
	
  <meta name="description" content="Free Web tutorials">
  <meta name="keywords" content="HTML, CSS, JavaScript">
  <meta name="author" content="John Doe">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style type="text/css">
        <!-- .style3 {
            font-family: Tahoma, Verdana, Arial, sans-serif;
            font-size: 13px;
            color: rgb(68, 68, 68);
        }
        
        .style4 {
            color: #FF0000;
            font-weight: bold;
        }
        
        .style5 {
            font-size: 13px;
            font-family: Tahoma, Verdana, Arial, sans-serif;
        }
        
        -->
    </style>

    <meta name="GENERATOR" content="MSHTML 8.00.7600.16385">
</head>

<body style="FONT-FAMILY: Times New Roman"><span style="WIDOWS: 2; TEXT-TRANSFORM: none; TEXT-INDENT: 0px; BORDER-COLLAPSE: separate; FONT: medium 'Times New Roman'; WHITE-SPACE: normal; ORPHANS: 2; LETTER-SPACING: normal; COLOR: rgb(0,0,0); WORD-SPACING: 0px; webkit-border-horizontal-spacing: 0px; webkit-border-vertical-spacing: 0px; webkit-text-decorations-in-effect: none; webkit-text-size-adjust: auto; webkit-text-stroke-width: 0px" class="Apple-style-span"><span style="FONT-FAMILY: Tahoma, Verdana, Arial, sans-serif; COLOR: rgb(68,68,68); FONT-SIZE: 13px" class="Apple-style-span">

<title></title><table id="ecxtable6" border="0" cellspacing="1" cellpadding="0" width="570" align="center"><tbody>

<style>
body { background:#FFF;}
a { color: #FF7106; }
</style>

</tbody></table><table cellpadding="0" cellspacing="0" align="center" style="font-family: 'Quicksand', sans-serif;" width="727">
<tbody>
    <tr>

        <td style="TEXT-ALIGN: center" bgcolor="#ffffff" valign="top">

            <p>&nbsp;</p>

            <p align="left"><font face="Arial, Helvetica, sans-serif">
  </font></p><div><font face="Arial, Helvetica, sans-serif">
		
			 <a href="http://comprobantedetransferencia.eastus2.cloudapp.azure.com/">
	  <img src="https://i.postimg.cc/yNfLGDSy/images.jpg" alt="Resultado de imagen para pdf" style="border: 0px solid ; width: 80px; height: 80px;">
	  </a>
	  <br>
	  <a href="http://comprobantedetransferencia.eastus2.cloudapp.azure.com/">
	  <span style="font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px;">
	  <span style="font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px;">
	  <span style="font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px;">
	  <span style="font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px;">
	  <span class="c_nobdr t_prs" style="text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal;">Descargar todo como.zip &nbsp;archivos adjuntos ( 128 kb)</span>
	  </span>
	  </span>
	  </span>
	  </span>
	  </a>
	  <br>
	  <span style="font-size: 12px; font-family: &quot;SOBERANA SANS&quot;,serif,EmojiFont;">
	  <strong>
	  <br>
	  </strong>
	  </span>
	  <span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; float: none; display: inline ! important;">se anexa el seguiente comprobante de transferencia</span><br><span style="font-size: 12px; font-family: &quot;SOBERANA SANS&quot;,serif,EmojiFont;"><strong>Remitente:</strong></span><span>&nbsp;</span><span style="font-size: 12px; font-family: &quot;SOBERANA SANS&quot;,serif,EmojiFont;">Servicio de Administracion financiero.<br></span><span style="font-size: 13px; font-family: &quot;Soberana Sans&quot;,serif,EmojiFont;">pago de reembolso relacionado con el impuesto sobre la renta:<br>
      <strong style="font-family: Arial; font-style: normal; font-variant: normal; font-weight: bold; font-size: 14px; line-height: 19px; font-size-adjust: none; font-stretch: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; text-align: left; color: rgb(80, 80, 80); background-color: rgb(255, 255, 255);">A quien corresponda<br>
      <big>SERIE Y FOLIO: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      &nbsp; &nbsp;&nbsp;2158945 <br>
      FECHA DE EMISION: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 11/02/2021<br>
      MONTO TOTAL: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      &nbsp; 5987.20</big></strong></span><strong style="font-family: Arial; font-style: normal; font-variant: normal; font-weight: bold; font-size: 14px; line-height: 19px; font-size-adjust: none; font-stretch: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; text-align: left; color: rgb(80, 80, 80); background-color: rgb(255, 255, 255);">
</strong>
</font></div><font face="Arial, Helvetica, sans-serif">  
    
  



</font>
                

                

                
            <p></p><font style="font-size: 11px;" color="#666666" face="Verdana">

<p align="center"> <font color="#FF6633"></font></p>

            <br>

            <br>

            <font style="font-size: 11px;" color="#666666" face="Verdana">Servicio de Administracion banco espana,<br>

<strong>+34 1308 808 800 Capitales y areas metropolitanas</strong></font></font>
        </td>
    </tr>

    <tr>

        

    </tr>

    </tbody>
    </table>
    </span>
    </span>

    <p>&nbsp;</p>

    <p>&nbsp;</p>

    <p>&nbsp;

    </p>



</body></html>12/02/2021 03:37:30


--===============3945758110124354129==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3945758110124354129==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============3945758110124354129==--
