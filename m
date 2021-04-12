Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E71F335C4A9
	for <lists+linux1394-devel@lfdr.de>; Mon, 12 Apr 2021 13:06:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:Sender:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=T1p03zD0l3wJ0hyXmpGzBguh3RflEiAIjjGt0FMaN8A=; b=ZcGj+q4lUppzWW2pIZOWiPlBYd
	xYH+N54WM7dIJkhNc4wkAtbb95ElDeayTmuIWVMIzRdjnC67ld7yy05oyEot4Df7twvTWwz1s4VHB
	Jvd7wI4fcTE+vTw+qJLoYeLcBJZpNPxmNo5wI/d1h/a21PgEBuDXHkgoQy1IacnQfx/c=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lVuOe-00026P-BU; Mon, 12 Apr 2021 11:06:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <abuse@coresbranch.live>) id 1lVuOb-000262-0E
 for linux1394-devel@lists.sourceforge.net; Mon, 12 Apr 2021 11:06:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:List-Unsubscribe:MIME-Version:
 Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s+JhxXBktWPZ3iVog4kdM5gSjkOsjBzwLP1LVBM+BYI=; b=Sovo2B7aviJbKF/O7Qpq9XfKPf
 7unIP+e4CEoslhCjEI2nsH2m5yu6rCBONJ+bs3upJAF7uRWokWJmZNmB2ATnWwZzS7AxskJZeofiq
 Ak8rdmwMfUrizrh7Xr3o4MTQT3WXPaLhNMAUC1yjSi1otQvCkof8TywGGMfyrxF4pi2s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:List-Unsubscribe:MIME-Version:Message-ID:Date:Subject:To:
 From:Reply-To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s+JhxXBktWPZ3iVog4kdM5gSjkOsjBzwLP1LVBM+BYI=; b=bMNCHF7EFQ23en4U441zN5pYU2
 Zy1mrKBTvly/2Dzi7TBchetdJ9bRkzudg6R1iqCKhx6WneVPyDClKNMCRYxpTErtSc1u1UuoVHGjz
 CS30aGNp0LIicL8WXDqQULmgQBOxihsh6lgof3P+OH0EUg0Bllo544ccCmqZtQRM6u+s=;
Received: from co.coresbranch.live ([45.95.168.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lVuOY-009WRf-IS
 for linux1394-devel@lists.sourceforge.net; Mon, 12 Apr 2021 11:06:21 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mail; d=coresbranch.live;
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:List-Unsubscribe:Content-Type;
 i=noreply@coresbranch.live; bh=YlU11Aq/phASZG0VlwBMFtr/WHY=;
 b=KmodP5nYIV2Q49R+us9q1vzH66nh4YsebCbGsg4aEso5K167riTLe5bQWykYsDyNkRALjED0NYiX
 B+R5wF5r1YObq0pRbQdcT2+UmL0NFbqgTBb70QtZyrlpEWeYp8YQJxCRg7OVjsR/KsE0a4ackLls
 M8pgC1s6hgwAMUSf7pE=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=mail; d=coresbranch.live;
 b=H8EiM60JAz75oYCUZc2nNZqVeiFLkxb8rUAlP+6YC9cJFk2MxBGgs5+fnKei54jy/koXdjGKzTrG
 ZjFRDZZ/rNNObhyVRO7UNxUNA/0dIgOsU5iU8RKM+xS2ZVSVXoW0RAwWIElIGnWXDcdooYjHe6II
 77T9POkX69GrnwN8Pgc=;
To: linux1394-devel@lists.sourceforge.net
Subject: your file will expire soon-39609537
Date: 12 Apr 2021 06:37:04 -0400
Message-ID: <20210412063704.F15B9BD34C09DBC1@coresbranch.live>
MIME-Version: 1.0
X-Spam-Score: 3.9 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.95.168.177 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 3.0 URI_FIREBASEAPP        Link to hosted firebase web application, possible
 phishing
X-Headers-End: 1lVuOY-009WRf-IS
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
From: WeTransfer via linux1394-devel <linux1394-devel@lists.sourceforge.net>
Reply-To: info@coresbranch.live
Cc: WeTransfer <noreply@coresbranch.live>
Content-Type: multipart/mixed; boundary="===============0967434456915631902=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============0967434456915631902==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0012_F31CF523.5E773BD8"


------=_NextPart_000_0012_F31CF523.5E773BD8
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Click 'Download images'=20
(=C2=A0https://w321-wetransfer.web.app/#linux1394-devel@lists.sourceforge.n=
et=C2=A0)=20
to view images
linux1394-devel@lists.sourceforge.net,
You just received some files via WeTransfer.
2 file, 915 KB in Total and will be deleted on=C2=A015th April, 2021.

Download files=20
(=C2=A0https://w321-wetransfer.web.app/#linux1394-devel@lists.sourceforge.n=
et=C2=A0)

Get your files


To make sure our emails arrive, please add noreply@wetransfer.com=20
to your contacts.
------=_NextPart_000_0012_F31CF523.5E773BD8
Content-Type: text/html
Content-Transfer-Encoding: 8bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<HTML><HEAD>
<META name=GENERATOR content="MSHTML 11.00.10570.1001"></HEAD>
<body style="MARGIN: 0.5em">
<P>Click <A href="https://w321-wetransfer.web.app/#linux1394-devel@lists.sourceforge.net">'Download images' </A>to view images<BR>linux1394-devel@lists.sourceforge.net,<BR>You just received some files via WeTransfer.<BR>2 file, 915 KB in Total and will be deleted on&nbsp;15th April, 2021.</P>
<P><A href="https://w321-wetransfer.web.app/#linux1394-devel@lists.sourceforge.net">Download files</A></P>
<P>Get your files</P>
<P><BR>To make sure our emails arrive, please add <A href="mailto:noreply@wetransfer.com">noreply@wetransfer.com</A> to your contacts.</P></BODY></HTML>
------=_NextPart_000_0012_F31CF523.5E773BD8--



--===============0967434456915631902==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0967434456915631902==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============0967434456915631902==--


