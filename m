Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 620C2E6216
	for <lists+linux1394-devel@lfdr.de>; Sun, 27 Oct 2019 12:04:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1iOgL2-0007uO-Sh; Sun, 27 Oct 2019 11:04:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <notificaciones2@creg.gov.co>) id 1iOgL0-0007uH-VI
 for linux1394-devel@lists.sourceforge.net; Sun, 27 Oct 2019 11:03:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:Message-ID:To:Reply-To:From:Date:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=esoqY5x8hplY1MqhQfAnuPOTK+zp0YYCfyRJAGw/Rj8=; b=CamoL2QEMsLIP68FaX1m1Te5HH
 OIlsCWgZOZk9FzPC2TEBwVaWx5qaX7cn4WH2CTk3itS8EjVM+uXKf7tJNGilR1stb/OZrRyzc+cI/
 EaFLWKhi3Lg9XRBPIZnlKsRfi5zxIPK1D7pI6zrj0G/mj9WdRhZeaHDIm8KW7VUBdScw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Message-ID:To
 :Reply-To:From:Date:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=esoqY5x8hplY1MqhQfAnuPOTK+zp0YYCfyRJAGw/Rj8=; b=h
 4m6kT0pvIocW1vxeHn9WX7fn8rmY5rcU4Gf4maeInxcKnA68uHTpfAoAoWW7MiqihEJuJlF2fnZwc
 z/+km6nTsD3ghcLGhVawuCzsNir320V45Ph1la3/CDpRBsssmGN8ElrNqdvcNEwZIczGo4iqf4DNL
 gXi9aJeMIL3GEQig=;
Received: from mailserver.firstsoftwareprojects.nl ([79.99.25.138])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1iOgKw-004vqp-OX
 for linux1394-devel@lists.sourceforge.net; Sun, 27 Oct 2019 11:03:58 +0000
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on FIRSTSOFTWARE02
X-Spam-Flag: YES
X-Spam-Level: ******
X-Spam-Status: Yes, score=6.2 required=6.0 tests=FREEMAIL_FORGED_REPLYTO,
 FSL_HELO_BARE_IP_1,RDNS_NONE,TVD_RCVD_IP,TVD_RCVD_IP4 autolearn=no
 autolearn_force=no version=3.4.1
X-Spam-Report: *  0.0 TVD_RCVD_IP4 Message was received from an IPv4 address
 *  0.0 TVD_RCVD_IP Message was received from an IP address
 *  2.4 RDNS_NONE Delivered to internal network by a host with no rDNS
 *  2.6 FSL_HELO_BARE_IP_1 No description available.
 *  1.2 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
Received: from 192.168.1.88 ([217.217.179.17]) by
 mailserver.firstsoftwareprojects.nl with
 MailEnable ESMTPA; Sat, 26 Oct 2019 21:44:08 +0200
Date: Sat, 26 Oct 2019 21:44:07 +0200 (CEST)
From: Peter Wong <notificaciones2@creg.gov.co>
To: linux1394-devel@lists.sourceforge.net
Message-ID: <14984801.387895.1572119049819.JavaMail.javamailuser@localhost>
Subject: Ihre Gelegenheit
MIME-Version: 1.0
X-Spam-Score: 4.7 (++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?79.99.25.138>]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.net/Why?s=mfrom;
 id=notificaciones2%40creg.gov.co; ip=79.99.25.138;
 r=util-malware-1.v13.lw.sourceforge.com]
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iOgKw-004vqp-OX
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
Reply-To: Peter Wong <peterwongpwhk@gmail.com>
Content-Type: text/plain; charset="cp1252"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

U2No9m5lIEdy/N9lLAoKRmluZGUgZGllc2UgTWFpbCBzZWhyIHZlcnRyYXVsaWNoLiBhbnR3b3J0
ZW4gU2llIGb8ciB3ZWl0ZXJlIERldGFpbHMKClZpZWxlbiBEYW5rLgpQZXRlciBXb25nCgoKCgot
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tClRoaXMg
ZW1haWwgd2FzIHNlbnQgYnkgdGhlIHNoYXJld2FyZSB2ZXJzaW9uIG9mIFBvc3RtYW4gUHJvZmVz
c2lvbmFsLgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwptYWlsaW5nIGxpc3QgbGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRw
czovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51eDEzOTQtZGV2ZWwK
