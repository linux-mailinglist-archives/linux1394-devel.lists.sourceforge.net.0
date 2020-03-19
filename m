Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F018918C276
	for <lists+linux1394-devel@lfdr.de>; Thu, 19 Mar 2020 22:45:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jF2yX-0001Lh-8v; Thu, 19 Mar 2020 21:45:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gustavo@embeddedor.com>) id 1jF2yW-0001LZ-7V
 for linux1394-devel@lists.sourceforge.net; Thu, 19 Mar 2020 21:45:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ajq7OTNyMIVgTunyQt5eTItrR7T7jWAA7SICM0tM8GY=; b=Txj4W15/+pqu5cVlcdnTQA/d4o
 2uLuM7n9caarcNhI/CrwiaNqXRKHLqeo2xawFfNscaIeSbZlrFJKnDq+fWnJwdBu8HJMiCwhVfsQX
 Ax2IzX+uDg5aYtoFe/5qpTn0RLUPBzu0vDLBYy8ICT/Bz8lF8pKtPw83AamdSEMt6NBI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ajq7OTNyMIVgTunyQt5eTItrR7T7jWAA7SICM0tM8GY=; b=c
 9hpjY6cv6dW/VKdx9Amp/QP/bYyXFuFObf3ztGXckqD0qC0grZTfvb8ombT9QU3Hqmp1BtUKKNoHm
 iYtP8cJS+RuYs6m25xQjVLsVOEDHlrY9F7vlL1Y4S6OMvgHLNJBtShafdiTR8AXLbWwJlrCi9L1II
 KpIY1bHkjRJErge0=;
Received: from gateway31.websitewelcome.com ([192.185.144.95])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jF2yT-000f0D-Hc
 for linux1394-devel@lists.sourceforge.net; Thu, 19 Mar 2020 21:45:12 +0000
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
 by gateway31.websitewelcome.com (Postfix) with ESMTP id A6F835EB1A
 for <linux1394-devel@lists.sourceforge.net>;
 Thu, 19 Mar 2020 16:19:58 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id F2a6jXvP38vkBF2a6jOxd8; Thu, 19 Mar 2020 16:19:58 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ajq7OTNyMIVgTunyQt5eTItrR7T7jWAA7SICM0tM8GY=; b=XX0jWltHCRRmn/Ez/vLbd2cqBP
 VhHtKdcE1xu413uGkKQYEaCnZW4fA1/uArq2Rt97YRXVe7KIYOAUkcOUV4IDtXzR1VqQPi4hD9VQB
 GJKsm0XBD5wwtgNSoivsxW75Yjaznn/BMYBGBD46K6UeTEaSrdF/tUBClRVUQz/9yrKHmUrY+7hLy
 jSHHLdf4uzzkgtJpHwiTZTwVmJrzZaiF3ssrF/3pIB4yN+EFq0ySsdV4UcDyfEJcOa35e6hE33jrI
 QdZRSRPQUSZhfN884Aoo4UjFD4jxG/mSRRztdIRDrMJqjlbF46vKPD1h3yBjOenGZa9X4oioSHVZz
 gwCCWyIg==;
Received: from cablelink-189-218-116-241.hosts.intercable.net
 ([189.218.116.241]:53246 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1jF2a5-001XEf-8r; Thu, 19 Mar 2020 16:19:57 -0500
Date: Thu, 19 Mar 2020 16:19:56 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: [PATCH][next] firewire: core.h: Replace zero-length array with
 flexible-array member
Message-ID: <20200319211956.GA3448@embeddedor.com>
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
X-Exim-ID: 1jF2a5-001XEf-8r
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: cablelink-189-218-116-241.hosts.intercable.net (embeddedor)
 [189.218.116.241]:53246
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 10
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [192.185.144.95 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jF2yT-000f0D-Hc
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
 drivers/firewire/core.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index 4b0e4ee655a1..71d5f16f311c 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -191,7 +191,7 @@ struct fw_node {
 	/* Upper layer specific data. */
 	void *data;
 
-	struct fw_node *ports[0];
+	struct fw_node *ports[];
 };
 
 static inline struct fw_node *fw_node_get(struct fw_node *node)
-- 
2.23.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
