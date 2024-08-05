Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F04C94779B
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Aug 2024 10:54:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1satUB-00068Q-NE;
	Mon, 05 Aug 2024 08:54:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1satU9-00068E-Kk
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CAposS/X5iD+uiuVXyMO8x9mAy4UkjQlQ0BVV7Nspq0=; b=WjXrpLod0Ft/Vs9ypawgPSKeLd
 MHqOWEvNtzQN5fkvlw95apD1lC3KxzJrNW+0q7Zy6xjypkTgkpEFELO29MLjJt54snbqjNwwuYFBb
 ea4FjN6j6cS6POISHqXwdHZ2BsavBlC6Ok13wgcYUYiadOJONuvv3Q0/97qltYtYRbJM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CAposS/X5iD+uiuVXyMO8x9mAy4UkjQlQ0BVV7Nspq0=; b=UOzrsXIHwHVR71FuA/mqYn6lVi
 M0cgSF4ublNJQu9RxIzzqKgehQuWkt15Kux3ZcytM0Pqkh9nb5+89YyFWg+LBsPNfaSgRApwmdZut
 KkePAgeLujM5zD2bkTvXNLjhIbvfPeP9ye4jsplAT5QXX/TNggHUPm7eiGT+Ad+YA+/4=;
Received: from fout7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1satU8-0002qd-9O for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:32 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfout.nyi.internal (Postfix) with ESMTP id B24A3138FCF9;
 Mon,  5 Aug 2024 04:54:26 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Mon, 05 Aug 2024 04:54:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722848066; x=
 1722934466; bh=CAposS/X5iD+uiuVXyMO8x9mAy4UkjQlQ0BVV7Nspq0=; b=i
 4C8WxQhDARDG+3LiYI4k8O/8nA9xmrjicpvWvTszzuH7q3VVQZQ7930fPHTN8Aaq
 JZh9sfxmMNtG/Ek6kS2Ig+l7hcf9VZ2yA5g8mtGiFV2UI+WMnr8mef4I0Ro/c3KP
 b6BnkfyuT2rGAlfbSheB0VOwK/ME5X4jWERfoFlDU8hTCsteCXnn8Y3YqWqpNzo7
 mM/zy3/VXpXyodQNBqRTHz92cxZI8FISjrRSf5gxG9A8NDRkS1l1/kndVhOSnWGW
 3WeapqNmtMmrtaXo4v4GmO8irzvIiOM9Qs09hnJYmR8yWo7mxHJpjku8cvXbyBWk
 4Rs7aA7ojLWBZ/LMX8jOw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722848066; x=
 1722934466; bh=CAposS/X5iD+uiuVXyMO8x9mAy4UkjQlQ0BVV7Nspq0=; b=n
 WfhaVPRGPMQEvJk48/CneWh/PRAuCf1zhXs+smnQhUGWUU5ZnLxk8Iez8jscf+ub
 Kh8g/CQyLfY03DqbhWRzCVSQA7VuHve+jCqnnhOcb2actrbwNN145rKab3hXG07c
 bCkv554Vl6IauRScGMjHSJbMqMr7ObxJOAMbnkvHRE0iSclL9ONsnpbXfipPbzmt
 dVomF2TsWIaW8K4p9Aq9XPEYcKj7EhteLKXBqURYfCbp9IC2hcgq0lRvYckwCvTD
 xCb36WCH88dh5oPrtWiAEcqCZ9OlEtnFZDnB6JT41s7Q78mG7KdbD0qpaFWAH74w
 3aHlOvSseLV0tWaMHZPMg==
X-ME-Sender: <xms:QpOwZtMxxfkoByKLNNW7zyeksrUGwIhKV4PmVNaNJwfVWjtFx2FQJw>
 <xme:QpOwZv_kM7TQwRRqbonQsCC2VvMM4Ksxo2D9FUwgz-cdQ-KpdOobNaiXUSGbj-dj_
 m63O3wi7GLR9xzBM9Q>
X-ME-Received: <xmr:QpOwZsTySY75ZZmVeVabCr8oZ1LMxz0tSbqoniAmoSVAVdqCPgsD2pVtxLICI4ub88nUSD-HX9vbr2UPhiVrfjpcT4LOsPq-e-L0U0g6Ghk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeigddutdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgepvdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:QpOwZpvhKw9xPmZc9T6E_49ehV4RyKeX3z4HTYfc1L_7WsxNVIHnRw>
 <xmx:QpOwZlcViINVR9iN9jLEqq-MxWnyzIiXD3O4fWxz8d0fmB82FUGgCg>
 <xmx:QpOwZl3cN-NWMERGVWqnfKdiLM0kBG3-vacXuRw5oSNa5TlNMj9uRw>
 <xmx:QpOwZh_zHS1F7MbLHy-64FsM8kV4r-8MS63iShJ_mfWieNKKr6gPaQ>
 <xmx:QpOwZmrWKVWJA6h2myXYk_iAozrOEOdaSe-ZUYG7y7s7vmsSs2yS3eK9>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Aug 2024 04:54:25 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 11/17] firewire: core: use guard macro to maintain
 isochronous context for userspace client
Date: Mon,  5 Aug 2024 17:54:02 +0900
Message-ID: <20240805085408.251763-12-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
References: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The core function allows one isochronous contexts per
 userspace
 client. The concurrent access to the context is protected by spinlock in
 the instance of client. This commit uses guard macro to maintain the spinlock.
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.150 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.150 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.150 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.150 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1satU8-0002qd-9O
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The core function allows one isochronous contexts per userspace client.
The concurrent access to the context is protected by spinlock in the
instance of client.

This commit uses guard macro to maintain the spinlock.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 25 +++++++++++--------------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index c2d24cc5c1f1..ac6f9ad9e88e 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1062,10 +1062,10 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 	if (client->version < FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW)
 		context->drop_overflow_headers = true;
 
-	/* We only support one context at this time. */
-	spin_lock_irq(&client->lock);
+	// We only support one context at this time.
+	guard(spinlock_irq)(&client->lock);
+
 	if (client->iso_context != NULL) {
-		spin_unlock_irq(&client->lock);
 		fw_iso_context_destroy(context);
 
 		return -EBUSY;
@@ -1075,7 +1075,6 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 					    client->device->card,
 					    iso_dma_direction(context));
 		if (ret < 0) {
-			spin_unlock_irq(&client->lock);
 			fw_iso_context_destroy(context);
 
 			return ret;
@@ -1084,7 +1083,6 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 	}
 	client->iso_closure = a->closure;
 	client->iso_context = context;
-	spin_unlock_irq(&client->lock);
 
 	a->handle = 0;
 
@@ -1806,16 +1804,15 @@ static int fw_device_op_mmap(struct file *file, struct vm_area_struct *vma)
 	if (ret < 0)
 		return ret;
 
-	spin_lock_irq(&client->lock);
-	if (client->iso_context) {
-		ret = fw_iso_buffer_map_dma(&client->buffer,
-				client->device->card,
-				iso_dma_direction(client->iso_context));
-		client->buffer_is_mapped = (ret == 0);
+	scoped_guard(spinlock_irq, &client->lock) {
+		if (client->iso_context) {
+			ret = fw_iso_buffer_map_dma(&client->buffer, client->device->card,
+						    iso_dma_direction(client->iso_context));
+			if (ret < 0)
+				goto fail;
+			client->buffer_is_mapped = true;
+		}
 	}
-	spin_unlock_irq(&client->lock);
-	if (ret < 0)
-		goto fail;
 
 	ret = vm_map_pages_zero(vma, client->buffer.pages,
 				client->buffer.page_count);
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
