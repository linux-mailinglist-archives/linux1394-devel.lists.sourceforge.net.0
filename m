Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9B7159D33
	for <lists+linux1394-devel@lfdr.de>; Wed, 12 Feb 2020 00:30:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1j1eyh-0006s2-QK; Tue, 11 Feb 2020 23:30:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gustavo@embeddedor.com>) id 1j1eyf-0006ru-V0
 for linux1394-devel@lists.sourceforge.net; Tue, 11 Feb 2020 23:30:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r6W7e99wqSxpJufs0pmZ8FH4EPi49mq2sFzO815awQ4=; b=OiYBHIrtqHXYntM+qqym+9FLPb
 guUZU72hjLe4BSLsEJRmpPgxYYogY3IpQZ74GCvlkjHLL/rsoi9Fi19BF3v/t/YZK93ZC9iNCLthg
 fiQUlevkJbffcpoMC0MP7QCl7yC9DC5+8SB5CCfmII0y9IPfMhYXcg6tk0pxudq+mf3o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=r6W7e99wqSxpJufs0pmZ8FH4EPi49mq2sFzO815awQ4=; b=c
 rB4VMkdtwHWZULDf/CM7zkxY6nz3VHcgl10i3ahv4VQb1xOizmq+NqhsI/sUQsAB9JMVA574cXwzV
 K+vBH9/0idjTeD90p8tfJp6pPtPz60LdM5VBG4K1MzVNDp7RB/X68IGfoFm7Kv8a0SdU55g2ZXMyQ
 eBFAsCqpoSsp8kNM=;
Received: from gateway22.websitewelcome.com ([192.185.46.225])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j1eyc-0091aO-TE
 for linux1394-devel@lists.sourceforge.net; Tue, 11 Feb 2020 23:30:01 +0000
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
 by gateway22.websitewelcome.com (Postfix) with ESMTP id 67E093CBE
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 11 Feb 2020 17:05:37 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 1eb3jeQp9RP4z1eb3j6Fwn; Tue, 11 Feb 2020 17:05:37 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r6W7e99wqSxpJufs0pmZ8FH4EPi49mq2sFzO815awQ4=; b=z9aOCVC2uJ4Xr1XmZn01NiP+GV
 Q0R2flt6t9U23h95xgj7Yombr8L7FIcJ5DtOXkFjaY0/5hj6eRIrqdq4UznkQWE0q5BJNS7HLGkTG
 lVP2GLTZ+BlvyIbP5N6McBQajtsnX5axvz+uEoHHibx353ZCCDvailIDtb3HcgM7xxZv45CKCsbsV
 2V3/dMK+Vh/Twg0NPJ7MLFA2UqLsqRDoAAN+pf6qRI7spN549Bl5Fdq16mT1THe/fzWa/sh+sAu9e
 sipPrHp8E3REOjkFAjvh2dw6rikqKEyZOlw2hFSG3mHhesKJhtiJAdZ3QF17g8L/CuHQ88Baxwjks
 c7uaWtsA==;
Received: from [200.68.140.36] (port=4449 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1j1eb1-003SYa-Ll; Tue, 11 Feb 2020 17:05:35 -0600
Date: Tue, 11 Feb 2020 17:08:10 -0600
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: [PATCH] firewire: ohci: Replace zero-length array with
 flexible-array member
Message-ID: <20200211230810.GA12211@embeddedor>
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
X-Source-IP: 200.68.140.36
X-Source-L: No
X-Exim-ID: 1j1eb1-003SYa-Ll
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [200.68.140.36]:4449
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 5
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: embeddedor.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [192.185.46.225 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j1eyc-0091aO-TE
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
inadvertenly introduced[3] to the codebase from now on.

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/firewire/ohci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 45c048751f3b..afc022b4246f 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -124,7 +124,7 @@ struct descriptor_buffer {
 	dma_addr_t buffer_bus;
 	size_t buffer_size;
 	size_t used;
-	struct descriptor buffer[0];
+	struct descriptor buffer[];
 };
 
 struct context {
-- 
2.25.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
