Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E74D8304C2B
	for <lists+linux1394-devel@lfdr.de>; Tue, 26 Jan 2021 23:33:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1l4WtK-00074d-3j; Tue, 26 Jan 2021 22:32:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <uwe@kleine-koenig.org>) id 1l4WtJ-00074I-3G
 for linux1394-devel@lists.sourceforge.net; Tue, 26 Jan 2021 22:32:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UTTRtrY99GxpPOAnrmHV0n7/qRXR6et/Wihkh6cTguc=; b=XU3j4tJv49whk+6GccTXDQCueI
 zTKKY0Drt7Q5/PoOONn4zlAAPQNkIWfpCShiMQeOckNe6PQTezw67NWiFPv3HcR7X+09mE1b89LA4
 cZmz7mp0xyYk54j3WJgG/3ssAuPaAY9kGwp2YY5aDrsMeaANlXeR6/ps7RmbgfSlCA6Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=UTTRtrY99GxpPOAnrmHV0n7/qRXR6et/Wihkh6cTguc=; b=c
 m1K9j4DDlJJZIF0td+q5uTPbTrJQ+Y70oJG0PWjAG+Y/ayXmPhye5S/rvRs39ccgzdCtyEoz7oe/T
 Qiuvd3NqaFChn/fSbWxjf44CVfR5+h7eT/tPAsMfhMVvcmp+UuGQX1dzlvEdPdDBRl28+uC4vr3no
 K0Yr/cpXHzw+3t2I=;
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l4Wt7-00Bl4o-T7
 for linux1394-devel@lists.sourceforge.net; Tue, 26 Jan 2021 22:32:53 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 4D8F1ADF39B; Tue, 26 Jan 2021 23:14:46 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: [PATCH] firewire: replace tricky statement by two simple ones
Date: Tue, 26 Jan 2021 23:14:44 +0100
Message-Id: <20210126221444.713837-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: kleine-koenig.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1l4Wt7-00Bl4o-T7
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

c3RydWN0IGZ3X2RyaXZlcjo6cmVtb3ZlIHJldHVybnMgdm9pZCwgc3RpbGwgdGhlIGNvbW1hIGV4
cHJlc3Npb24ncyB2YWx1ZQppcyB6ZXJvLiBUaGlzIGlzIGhhcmRlciB0byBwYXJzZSB0aGFuIG5l
Y2Vzc2FyeSwgc28gcmVwbGFjZSB0aGUgc2luZ2xlCmV4cHJlc3Npb24gYnkgdHdvIGVhc2llciBv
bmVzLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmln
Lm9yZz4KLS0tCiBkcml2ZXJzL2ZpcmV3aXJlL2NvcmUtZGV2aWNlLmMgfCA0ICsrKy0KIDEgZmls
ZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2ZpcmV3aXJlL2NvcmUtZGV2aWNlLmMgYi9kcml2ZXJzL2ZpcmV3aXJlL2NvcmUtZGV2
aWNlLmMKaW5kZXggODBkYjQzYTIyMDY5Li42ODIxNjk4ODM5MWYgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZmlyZXdpcmUvY29yZS1kZXZpY2UuYworKysgYi9kcml2ZXJzL2ZpcmV3aXJlL2NvcmUtZGV2
aWNlLmMKQEAgLTE5Miw3ICsxOTIsOSBAQCBzdGF0aWMgaW50IGZ3X3VuaXRfcmVtb3ZlKHN0cnVj
dCBkZXZpY2UgKmRldikKIAlzdHJ1Y3QgZndfZHJpdmVyICpkcml2ZXIgPQogCQkJY29udGFpbmVy
X29mKGRldi0+ZHJpdmVyLCBzdHJ1Y3QgZndfZHJpdmVyLCBkcml2ZXIpOwogCi0JcmV0dXJuIGRy
aXZlci0+cmVtb3ZlKGZ3X3VuaXQoZGV2KSksIDA7CisJZHJpdmVyLT5yZW1vdmUoZndfdW5pdChk
ZXYpKTsKKworCXJldHVybiAwOwogfQogCiBzdGF0aWMgaW50IGdldF9tb2RhbGlhcyhzdHJ1Y3Qg
ZndfdW5pdCAqdW5pdCwgY2hhciAqYnVmZmVyLCBzaXplX3QgYnVmZmVyX3NpemUpCi0tIAoyLjI5
LjIKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbWFp
bGluZyBsaXN0IGxpbnV4MTM5NC1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgxMzk0LWRldmVsCg==
