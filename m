Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0A618C263
	for <lists+linux1394-devel@lfdr.de>; Thu, 19 Mar 2020 22:39:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jF2tF-0000UC-1M; Thu, 19 Mar 2020 21:39:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gustavo@embeddedor.com>) id 1jF2tC-0000Ts-Qy
 for linux1394-devel@lists.sourceforge.net; Thu, 19 Mar 2020 21:39:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r5HlPDuxrsVXq6VYWoARvW6vv4oS/EL6J5+Kn6lcldI=; b=b03OIMvjpuCT5WjjAPoCx8gD04
 9oSaeVMSAfJGKnZwqTHqlRV7TuosIF9fRdE7GtyPVH64HnzNvywrH80qiQ6B/+BiLDMmJow4IznwI
 jaeVIsxRjQx8tGK76xbxQ4NMf9N6d8aySC4l9Mf8/Sp1kLA16VPyIQISA/Bd5HAQUnH0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=r5HlPDuxrsVXq6VYWoARvW6vv4oS/EL6J5+Kn6lcldI=; b=V
 eV0Q67Z9aFBj28bX0BC3E3RDsmulA3gYg5EfE2oKojYElfO2eZuEZi0iwXgNk32dTPQWF3uF54ej4
 pduOXdFK+hiMlxeI+bNRVwSfWY8ZnLonC/eyelS0xUMOfHOjz5mSVCVdNHvzjaKTg+EbjAwkUpT+a
 vEX3Jz0nLC6bb6yA=;
Received: from gateway21.websitewelcome.com ([192.185.46.113])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jF2t9-009LTE-2W
 for linux1394-devel@lists.sourceforge.net; Thu, 19 Mar 2020 21:39:42 +0000
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
 by gateway21.websitewelcome.com (Postfix) with ESMTP id 97EB9400DDB7E
 for <linux1394-devel@lists.sourceforge.net>;
 Thu, 19 Mar 2020 16:18:50 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id F2Z0jysnC1s2xF2Z0jhGU8; Thu, 19 Mar 2020 16:18:50 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r5HlPDuxrsVXq6VYWoARvW6vv4oS/EL6J5+Kn6lcldI=; b=HmiGlcHJOCXxibJhbEpBYCZuOU
 XlmDMFfA65klqMKVDFyjbugbNhR+LkFJIBiv9nAR5jmgF+AW4B9mjlm8IsSjY8mJqRtZ+Xwcq9qpR
 1pnFo4Z1OfDpn+Y/bLE3qK973IBB/Qtt48XN+m7TuEZwAo0M+0xnhR7+nlOL67v5QRCaNCkFrQHUG
 fCOi6L8wTPWNfOsL/ez/w/IGUXKpVop+QlbCRn1adx0PFEOyshriSTmkob9bOc1Rwkj7bhO/gKUdG
 TCcxieHeM9Fgh65ZJd0bx1dSDapvBONs3TWDq8fSi6xXFVb1KGW5IlL6jpiUQcr2IdKCFFIx3fUbz
 +W2x95tg==;
Received: from cablelink-189-218-116-241.hosts.intercable.net
 ([189.218.116.241]:53240 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1jF2Yz-001WoO-2M; Thu, 19 Mar 2020 16:18:49 -0500
Date: Thu, 19 Mar 2020 16:18:48 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: [PATCH][next] firewire: core-transaction: Replace zero-length array
 with flexible-array member
Message-ID: <20200319211848.GA3252@embeddedor.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 189.218.116.241
X-Source-L: No
X-Exim-ID: 1jF2Yz-001WoO-2M
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: cablelink-189-218-116-241.hosts.intercable.net (embeddedor)
 [189.218.116.241]:53240
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 7
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [192.185.46.113 listed in bl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [192.185.46.113 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
X-Headers-End: 1jF2t9-009LTE-2W
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on.

Also, notice that, dynamic memory allocations won't be affected by
this change:

"Flexible array members have incomplete type, and so the sizeof operator
may not be applied. As a quirk of the original implementation of
zero-length arrays, sizeof evaluates to zero."[1]

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/firewire/core-transaction.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 404a035f104d..439d918bbaaf 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -620,7 +620,7 @@ struct fw_request {
 	u32 request_header[4];
 	int ack;
 	u32 length;
-	u32 data[0];
+	u32 data[];
 };
 
 static void free_response_callback(struct fw_packet *packet,
-- 
2.23.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
