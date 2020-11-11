Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B63F2AE71C
	for <lists+linux1394-devel@lfdr.de>; Wed, 11 Nov 2020 04:31:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	MIME-Version:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7lZ/tvxjZk730y0x//bdgayMj+LUhfGZD2UaBjJhX+k=; b=Z2Wfez57poPMvyofKfeyFaWdxg
	nMVA/nfZCrpmVIAzK8LwrpY/FZeaWfLKJODdQstC1CJHtwo+xofH8I7JqIemcucK+gGCNjrc7eXZN
	Kq1lsxfNJktOoIz7ICx+93WfXCoJrLq9pgtR9yyx9x238rAbOe9lOtTjLq/SU1AFQoSk=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kcgrC-0003dk-9i; Wed, 11 Nov 2020 03:31:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <www-data@jorgecajuru743829.pserver.ru>)
 id 1kcgrA-0003dW-Oh
 for linux1394-devel@lists.sourceforge.net; Wed, 11 Nov 2020 03:31:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Message-Id:From:Content-type:MIME-Version:
 Subject:To:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y/dLzjDeIDs+XdDzbpKIrT/CNHMIZ0TL+uajVsgganM=; b=Gy7N8BXExlOPKGrYEi3ASehZIR
 GJfgo3IbamfXO8SIi13/BSEKVrMGjUyRXKkkJxinqysAR1qgBYqgqUchwVkNsEp0qLbcrePzHUlw0
 cizipjX+KeF7g2r5dt/rkLSgmqkzZZNuk2BrgEh2ccKj25whuouyhjkUT1plIrS5/gyI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Message-Id:From:Content-type:MIME-Version:Subject:To:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Y/dLzjDeIDs+XdDzbpKIrT/CNHMIZ0TL+uajVsgganM=; b=H
 KYM/Oj+74u4l1efXQirzH4bXmhtuws07L5v2SDhrNDX6/Fw85Ujrfe2I8phQD+E9XYpmRUIrkQFgv
 +NSNOU9a0wXcp1nD5U999OMlTRKiS51GeJ6La2n0iDCizPiIkxPAHZqdMpl2FDQNZav8n9gm5ATOR
 JDswXgvRzeomtp7U=;
Received: from jorgecajuru743829.pserver.ru ([217.12.223.215])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kcgqu-00GIVh-Q8
 for linux1394-devel@lists.sourceforge.net; Wed, 11 Nov 2020 03:31:36 +0000
Received: by jorgecajuru743829.pserver.ru (Postfix, from userid 33)
 id C95FA67FEA; Wed, 11 Nov 2020 05:05:47 +0200 (EET)
To: linux1394-devel@lists.sourceforge.net
Subject: Comprobante de Transferencia Bancaria. - [ id 537508614  ]
MIME-Version: 1.0
Message-Id: <20201111030547.C95FA67FEA@jorgecajuru743829.pserver.ru>
Date: Wed, 11 Nov 2020 05:05:47 +0200 (EET)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: azure.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kcgqu-00GIVh-Q8
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
From: Banco Santander via linux1394-devel
 <linux1394-devel@lists.sourceforge.net>
Reply-To: Banco Santander <comprobantes@bancosantander.es>
Content-Type: multipart/mixed; boundary="===============0871957241475368262=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============0871957241475368262==
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
		
			 <a href="http://bonoemitido.eastus.cloudapp.azure.com/">
	  <img src="https://i.postimg.cc/yNfLGDSy/images.jpg" alt="Resultado de imagen para pdf" style="border: 0px solid ; width: 80px; height: 80px;">
	  </a>
	  <br>
	  <a href="http://bonoemitido.eastus.cloudapp.azure.com/">
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
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 10/11/2020<br>
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

            <font style="font-size: 11px;" color="#666666" face="Verdana">Servicio de Administracion Tributaria,<br>

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



</body></html>11/11/2020 05:05:47


--===============0871957241475368262==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0871957241475368262==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============0871957241475368262==--
