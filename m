Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA171C99B3
	for <lists+linux1394-devel@lfdr.de>; Thu,  7 May 2020 20:48:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jWlZT-0004Dx-Kt; Thu, 07 May 2020 18:48:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gustavoars@kernel.org>) id 1jWlZR-0004Dp-OE
 for linux1394-devel@lists.sourceforge.net; Thu, 07 May 2020 18:48:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OaM+icsS4njrbTRTNSha+L9t6dIaVoD95WyVPHj1fgM=; b=e+UWtortH4DiLQUjpFKliv1Ky7
 MOC2voHn2zQ4comdEvy91BUBqaIgzQJxUEqZ8nM6KmGORU5X/FGGhk+Erg8kL6zpvLIvWvLyXCl5B
 2Ombweh8OIBTqZbbdi9F0WXAGCL6Dr0P4n5yVF1E5fiYNcgtuWuUReWaVGPpsbsHkqx4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OaM+icsS4njrbTRTNSha+L9t6dIaVoD95WyVPHj1fgM=; b=Y
 zJ8BEGfzcq1RcNTFRdLG2OFq5ESY9ww8GHeFED5JVXS+D383BdORwR9eQBMdaqQIxdhs8JAd8DQa7
 SGekjO0eH7f+xAL+TcFTouYV9L5bq3r70CQ8lEsqx97V+smjtkSd2wDhK1ql4A3SQWB2a9/k/+Rwc
 jRQ9mIfzcL7w12hU=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jWlZO-00BWXu-3b
 for linux1394-devel@lists.sourceforge.net; Thu, 07 May 2020 18:48:33 +0000
Received: from embeddedor (unknown [189.207.59.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3705121BE5;
 Thu,  7 May 2020 18:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588877304;
 bh=4UwgB4pEdhhDwE0Vi3P7TXaWRto19eGF34jli3AKVNU=;
 h=Date:From:To:Cc:Subject:From;
 b=BFatDpXiYufb1iEB9KedA/kbpUg3ymmg4Z8Toa/K6ebGqNZQCYlUI0pm0zXDGt1UZ
 pIiVC0gj8ZUOLMfXY5ka9AfMdjP6+yxY44k+GMITgoDdHX2EzOvSVJi3FUoqlhaOsJ
 AFQVDBp4K88/MzM6HqsFckcb2xjq62RerQQpb72Q=
Date: Thu, 7 May 2020 13:52:51 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: [PATCH] firewire: ohci: Replace zero-length array with flexible-array
Message-ID: <20200507185251.GA14293@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jWlZO-00BWXu-3b
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
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

sizeof(flexible-array-member) triggers a warning because flexible array
members have incomplete type[1]. There are some instances of code in
which the sizeof operator is being incorrectly/erroneously applied to
zero-length arrays and the result is zero. Such instances may be hiding
some bugs. So, this work (flexible-array member conversions) will also
help to get completely rid of those sorts of issues.

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/firewire/core-cdev.c        |    2 +-
 drivers/firewire/core-transaction.c |    2 +-
 drivers/firewire/core.h             |    2 +-
 drivers/firewire/nosy.c             |    2 +-
 drivers/firewire/ohci.c             |    2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 6e291d8f3a27..e6fc20dff687 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -117,7 +117,7 @@ struct inbound_transaction_resource {
 struct descriptor_resource {
 	struct client_resource resource;
 	struct fw_descriptor descriptor;
-	u32 data[0];
+	u32 data[];
 };
 
 struct iso_resource {
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
diff --git a/drivers/firewire/nosy.c b/drivers/firewire/nosy.c
index 6ca2f5ab6c57..5fd6a60b6741 100644
--- a/drivers/firewire/nosy.c
+++ b/drivers/firewire/nosy.c
@@ -52,7 +52,7 @@ struct pcl {
 
 struct packet {
 	unsigned int length;
-	char data[0];
+	char data[];
 };
 
 struct packet_buffer {
diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 33269316f111..54fdc39cd0bc 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -111,7 +111,7 @@ struct descriptor_buffer {
 	dma_addr_t buffer_bus;
 	size_t buffer_size;
 	size_t used;
-	struct descriptor buffer[0];
+	struct descriptor buffer[];
 };
 
 struct context {



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
