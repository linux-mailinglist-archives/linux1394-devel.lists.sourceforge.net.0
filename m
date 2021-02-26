Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BE66D326667
	for <lists+linux1394-devel@lfdr.de>; Fri, 26 Feb 2021 18:43:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lFh8c-00027h-4p; Fri, 26 Feb 2021 17:42:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hsamseysonmoi@mmafightland.com>) id 1lFh8a-00027S-NF
 for linux1394-devel@lists.sourceforge.net; Fri, 26 Feb 2021 17:42:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Reply-To:From:Date:Message-ID:Subject:To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KnVO2a825DPooBCOryg6jj0hfk9zZpjMVfkCaJbuwJ8=; b=dR7ox8rB3ZLHcBKHlLbKiZtzED
 ndEB9pBqQkguC4V9y0ZuODl1NHzJfPK21SjK2lHHgWxLlasxR4cKi/yZLNiK4iiZnzXpmAOM4baxo
 o6aEt5yCU4tgfXpwv1iMd1KvA9521uE43rJojy3kC28kLZUM2C97/hNbJWPLLuAdP/MY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:From:Date:
 Message-ID:Subject:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=KnVO2a825DPooBCOryg6jj0hfk9zZpjMVfkCaJbuwJ8=; b=L
 9kSNcWuIh+aKFTfxoe++2xiLLMqoCOgPscd30+cMiCxy7fkN8thy/D2GwEwzQC+IJWrP8vE97JHmj
 0fefO2F5CkuTR6EkH+G8ahomHJQ2mgyN5kuY/WMOh6r5tq/qVUWd8IOeVD0WgOePI8zwE+h8cglgg
 2xL3OmWKIKb79/zM=;
Received: from [173.254.228.69] (helo=mmawarfare.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1lFh8Q-000146-FG
 for linux1394-devel@lists.sourceforge.net; Fri, 26 Feb 2021 17:42:47 +0000
To: linux1394-devel@lists.sourceforge.net
Subject: check again this smart drone
Message-ID: <6588b9a1adae5fadb6fb8dbef8217e69@dronesgator.com>
Date: Fri, 26 Feb 2021 16:31:19 +0100
From: "Jan Wilson" <hsameaysonmoi@mmafightland.com>
MIME-Version: 1.0
X-Mailer-Sent-By: 1
X-Spam-Score: 6.9 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?173.254.228.69>]
 1.5 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [173.254.228.69 listed in psbl.surriel.com]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NEUTRAL       SPF: HELO does not match SPF record (neutral)
 0.0 RCVD_IN_MSPIKE_L4      RBL: Bad reputation (-4)
 [173.254.228.69 listed in bl.mailspike.net]
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1lFh8Q-000146-FG
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
Reply-To: jindongshper@aliyun.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

SGksCgpIb3BlIGFsbCBpcyB3ZWxsLgpJIGFtIHJlYWNoaW5nIHlvdSBhYm91dCBvdXIgZHJvbmUg
cHJvZHVjdCBJIGhhZCBzZW50IGFib3V0IGEgd2VlayBhZ28uCgpJbiBvdXIgc3RvY2sgd2UgaGF2
ZSB0aGlzIHNtYXJ0IGRyb25lIHJpZ2h0IG5vdywgcmVhZHkgdG8gc2hpcC4KCkZyZXF1ZW5jeTog
NUcKRlBWIGltYWdlIHRyYW5zbWlzc2lvbjogNUcgV2lGaSwgMTAwMG0KU3RhYmxlIHR3by1heGlz
IG1lY2hhbmljYWwgdW5pdmVyc2FsIGpvaW50CjRLIDExMMKwIHdpZGUtYW5nbGUgYWRqdXN0YWJs
ZSBjYW1lcmEuIEVTQyBjYW1lcmEKQ2hhbm5lbDogNkNICkJhdHRlcnk6IDExLjFWIDIzNTBtQWgg
bGl0aGl1bSBpb24gYmF0dGVyeSAoaW5jbHVkZWQpClRyYW5zbWl0dGVyIGJhdHRlcnk6IEFBKjMK
RmxpZ2h0IHRpbWU6IDMwIG1pbnV0ZXMKUmVtb3RlIGNvbnRyb2wgZGlzdGFuY2U6IGFib3V0IDEw
MDBtCkNvbG91cjogQmxhY2sKRmllbGQgb2YgdmlldzogMTEwwrAgd2lkZSBhbmdsZQo0SyBwaXhl
bHM6ClBpY3R1cmU6IDU3MDAqNDI3NQpWaWRlbzogMzg0MCAqIDEwODAKUXVhZHJpbGF0ZXJhbCBz
aXplOgpQcm9kdWN0IGZvbGRpbmcgc2l6ZSAoQ00pOiAxNyoxMS41KjYuN0NNClByb2R1Y3QgZGV2
ZWxvcG1lbnQgc2l6ZSAoQ00pOiAyNioyNio2LjdDTQoKUHJpY2VzOiAoc2hpcHBpbmcgaW5jbHVk
ZWQpCjI4OS41MCBlYWNoICgxLTIwIHVuaXRzKQoyNzkuNTAgZWFjaCAoMjEtNTAgdW5pdHMpCjI2
OS41MCBlYWNoICg1MS0xMDAgdW5pdHMpCmluIHUgcyBkCgpJZiB5b3Ugd2FudCB0byBvcmRlciBp
dCB0b2RheSwgcmVwbHkgb3VyIGVtYWlsIHdpdGggeW91ciBzaGlwcGluZyBhZGRyZXNzCmRldGFp
bHMsIHdlIHdpbGwgbWFrZSB0aGUgc2hpcG1lbnQgZm9yIHlvdS4KV2UgZG8gd29ybGR3aWRlIHNo
aXBwaW5nLCAxMC0xNSBkYXlzLgoKVGhhbmtzIGFuZCBSZWdhcmRzLApKYW4gV2lsc29uCgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm1haWxpbmcgbGlz
dCBsaW51eDEzOTQtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4MTM5NC1kZXZlbAo=
