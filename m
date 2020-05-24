Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F95B1DFF17
	for <lists+linux1394-devel@lfdr.de>; Sun, 24 May 2020 15:21:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jcqYt-0003Aq-Pz; Sun, 24 May 2020 13:21:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1jcqYs-0003Ah-8w
 for linux1394-devel@lists.sourceforge.net; Sun, 24 May 2020 13:21:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yEdv+H/O/2SpAACnPzhE79bqt66x66Jv2DzRgvNuqFE=; b=kL+BKAhTv2ucv50/AlDOZm7TsP
 umfloF9USC33WT30Up9rnVYrZvwXlKogg+DGofIbdlIBz4AIBJDgoID8dEBkuWqoahT9rnK0iQDAL
 /+QQ908jWlYyy9tXzOQSTlExp2gUA5axrvUwuLql91YjZVOB4ki4T8K7L30HGgr0k868=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yEdv+H/O/2SpAACnPzhE79bqt66x66Jv2DzRgvNuqFE=; b=X
 pxBIxqm7g+75kU+QKmdjZLZODf0zQ1cHcHa6uCS18TlFO9eKLryOkP80jlazZDYRvsIC3ToEbiIJF
 qNGU0I+gotajY5DJRgd1AtQWRkKJsxfQ+HyZq7xfU7QRqMzU9EEH5c1euNsDdDg7IWU++YOayYahk
 TL2xahWbbLTxjfNw=;
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jcqYp-000jSS-8L
 for linux1394-devel@lists.sourceforge.net; Sun, 24 May 2020 13:21:06 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id A68176D8;
 Sun, 24 May 2020 09:20:54 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sun, 24 May 2020 09:20:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=yEdv+H/O/2SpAACnPzhE79bqt6
 6x66Jv2DzRgvNuqFE=; b=gr4FhdZT9B2d8PL1hXXtX31pGKZ+s2bspeBROp3yGA
 4ZOIUaU5+qAl6mM3OL4QIFuIUHpwdfS+/kznq1bntrC6OZae5NmsKIhSiJ4957QL
 OJUGEHk1BrEvp7OFQupBaXUoOor8XsM075aL9BTDK4syBfgUkRzQRvnhYjvDK90q
 KkNujPNi+oCVx/OYm1yvQaQ7n4K7gx3MyqnTQxbnd5Rw1UtfTFIa8no7CjCtM70B
 s3pFi/rcpN3zV9ONiWylcg/qT8cQwNb2BryHysBgTh2g0i9BS5f1RGvSWPSfHjRT
 hVfL/UvpRXDzRBZoldKooV8+YaPWGWIoHh+rh6XWI/Og==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=yEdv+H/O/2SpAACnP
 zhE79bqt66x66Jv2DzRgvNuqFE=; b=j5FslOyoKitukg2O5+nqXbs4c2J1OriNp
 6z9+P6bN1C6pRIP5xypck0/yVbKGvbdLg8IyhCxWz5+QSShTnYNNCxDOQq5vFIvx
 tx7YcVuU2GhYwu+s6GkWCkKDtqCy32wxWexxYMvPVcofy+ERdxelb9MFJCHj+7/O
 YU856/JdWB/rbuF5Amjm4GyrQ7+i7SIPsBEfibujrzfDWqSjJYF6SjCDTjrX/j06
 3AFSQ+9/Re3mVPhgEBjiTPXiAyosUCI0Vn/KrpqJgjR0+H4QuPG6H3/xvDRcYc8G
 7bqrG+zDgowYev1a9uewB+/PUXvWOud/vWYXyTGS8bo7g53gwUgIQ==
X-ME-Sender: <xms:tHTKXooXFSArvjV9bqpiDAkd_1QcUbUEatRmSslPKBN7jFPSk76vpQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddukedgiedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepteeiuefhjeekke
 efheetieekvdegfefhgffgvdeiheehhfehiedvhffgjeejuddunecuffhomhgrihhnpehk
 vghrnhgvlhdrohhrghenucfkphepudektddrvdefhedrfedrheegnecuvehluhhsthgvrh
 fuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgr
 khgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:tHTKXuodT0MBd3S5MHEf0lSJNoCPLiRV2Y6WpAUOJ_dnXO4-48khdA>
 <xmx:tHTKXtNQqDQTAnA7hK-r5Y-cMZZp-6zt4bCx7TLLMUO1OxLZyoipXg>
 <xmx:tHTKXv5nr2Ul_PYH-J0jmGkKhpCZnwsbm72BjrwYvZy_6nHQuZVA8w>
 <xmx:tnTKXq1XDYRbvGSCwk7J8p1RGjc9ICxDdi5skoxJ48Zk9RD1osY5bQ>
Received: from workstation.flets-east.jp (ad003054.dynamic.ppp.asahi-net.or.jp
 [180.235.3.54])
 by mail.messagingengine.com (Postfix) with ESMTPA id AC25E306651A;
 Sun, 24 May 2020 09:20:50 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: oscar.carter@gmx.com, keescook@chromium.org, greg@kroah.com,
 stefanr@s5r6.in-berlin.de
Subject: [PATCH v2] firewire-core: remove cast of function callback
Date: Sun, 24 May 2020 22:20:48 +0900
Message-Id: <20200524132048.243223-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [64.147.123.25 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jcqYp-000jSS-8L
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
 kernel-hardening@lists.openwall.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In 1394 OHCI specification, Isochronous Receive DMA context has several
modes. One of mode is 'BufferFill' and Linux FireWire stack uses it to
receive isochronous packets for multiple isochronous channel as
FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL.

The mode is not used by in-kernel driver, while it's available for
userspace. The character device driver in firewire-core includes
cast of function callback for the mode since the type of callback
function is different from the other modes. The case is inconvenient
to effort of Control Flow Integrity builds due to
-Wcast-function-type warning.

This commit removes the cast. A inline helper function is newly added
to initialize isochronous context for the mode. The helper function
arranges isochronous context to assign specific callback function
after call of existent kernel API. It's noticeable that the number of
isochronous channel, speed, the size of header are not required for the
mode. The helper function is used for the mode by character device
driver instead of direct call of existent kernel API.

Changes in v2:
 - unexport helper function
 - use inline for helper function
 - arrange arguments for helper function
 - tested by libhinoko

Reported-by: Oscar Carter <oscar.carter@gmx.com>
Reference: https://lore.kernel.org/lkml/20200519173425.4724-1-oscar.carter@gmx.com/
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 40 +++++++++++++++---------------------
 include/linux/firewire.h     | 16 +++++++++++++++
 2 files changed, 33 insertions(+), 23 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 6e291d8f3a27..7cbf6df34b43 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -957,7 +957,6 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 {
 	struct fw_cdev_create_iso_context *a = &arg->create_iso_context;
 	struct fw_iso_context *context;
-	fw_iso_callback_t cb;
 	int ret;
 
 	BUILD_BUG_ON(FW_CDEV_ISO_CONTEXT_TRANSMIT != FW_ISO_CONTEXT_TRANSMIT ||
@@ -965,32 +964,27 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 		     FW_CDEV_ISO_CONTEXT_RECEIVE_MULTICHANNEL !=
 					FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL);
 
-	switch (a->type) {
-	case FW_ISO_CONTEXT_TRANSMIT:
-		if (a->speed > SCODE_3200 || a->channel > 63)
-			return -EINVAL;
-
-		cb = iso_callback;
-		break;
-
-	case FW_ISO_CONTEXT_RECEIVE:
-		if (a->header_size < 4 || (a->header_size & 3) ||
-		    a->channel > 63)
-			return -EINVAL;
-
-		cb = iso_callback;
-		break;
-
-	case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
-		cb = (fw_iso_callback_t)iso_mc_callback;
-		break;
+	if (a->type == FW_ISO_CONTEXT_TRANSMIT ||
+	    a->type == FW_ISO_CONTEXT_RECEIVE) {
+		if (a->type == FW_ISO_CONTEXT_TRANSMIT) {
+			if (a->speed > SCODE_3200 || a->channel > 63)
+				return -EINVAL;
+		} else {
+			if (a->header_size < 4 || (a->header_size & 3) ||
+			    a->channel > 63)
+				return -EINVAL;
+		}
 
-	default:
+		context = fw_iso_context_create(client->device->card, a->type,
+					a->channel, a->speed, a->header_size,
+					iso_callback, client);
+	} else if (a->type == FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL) {
+		context = fw_iso_mc_context_create(client->device->card,
+						   iso_mc_callback, client);
+	} else {
 		return -EINVAL;
 	}
 
-	context = fw_iso_context_create(client->device->card, a->type,
-			a->channel, a->speed, a->header_size, cb, client);
 	if (IS_ERR(context))
 		return PTR_ERR(context);
 	if (client->version < FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW)
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index aec8f30ab200..bff08118baaf 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -453,6 +453,22 @@ struct fw_iso_context {
 struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
 		int type, int channel, int speed, size_t header_size,
 		fw_iso_callback_t callback, void *callback_data);
+
+static inline struct fw_iso_context *fw_iso_mc_context_create(
+						struct fw_card *card,
+						fw_iso_mc_callback_t callback,
+						void *callback_data)
+{
+	struct fw_iso_context *ctx;
+
+	ctx = fw_iso_context_create(card, FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL,
+				    0, 0, 0, NULL, callback_data);
+	if (!IS_ERR(ctx))
+		ctx->callback.mc = callback;
+
+	return ctx;
+}
+
 int fw_iso_context_set_channels(struct fw_iso_context *ctx, u64 *channels);
 int fw_iso_context_queue(struct fw_iso_context *ctx,
 			 struct fw_iso_packet *packet,
-- 
2.25.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
