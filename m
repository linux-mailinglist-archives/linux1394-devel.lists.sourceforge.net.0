Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 648CEB481FE
	for <lists+linux1394-devel@lfdr.de>; Mon,  8 Sep 2025 03:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W8vDH+EHqvE+0dU0ogEMhiD7Z0pOMxVrVsJXH6RQYpQ=; b=WkrGSwEvLgddkvqARRZavArn+M
	GQQmIPc3gWixxKVyzAcdVR1RMKMKVZ35be9lgklZcBUOKF8PkICTVr2VEcB/jzDQrhj+ktooeLvf0
	5gH3Is6S/8NvhCzwSmTQgNLALbbenKU9hZ/n0TPsbp0Ner6DpoQpoCWqcK4udQkr3NPc=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uvQZV-0003oZ-VJ;
	Mon, 08 Sep 2025 01:21:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uvQZS-0003o0-V0
 for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VnQqzEe4MIZzE9rsM4hqaAJTPrsvj4NXRFbWU+fyj6g=; b=SoEggM+bI/Ial92g4riLw7p3NP
 5+7Z3zCLFCorbpgigUK9l/0brRTtKvbVK8nyeOWolCLXdKuM9QT0TkhTUdZtYNpkvfBttcVHI0XJD
 4UzxGtxI3BICvv2XNhAoF5ri1u5HiJXwMi6XEVXQ/P5IWdCosH0jKUHBhhecdS5IzgaQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VnQqzEe4MIZzE9rsM4hqaAJTPrsvj4NXRFbWU+fyj6g=; b=VUQYhu7PgOG36XIm81XZF7RfF2
 LFy+1JkZlySPKjd/6qXiRBZ0pr8TWqMZC4ru/EGKdGrAVT5zMs1xheqHdJKaTohPeIfWlHdaFtWWY
 rtzwWcu8Ubjs2FFt+L6UHCxXHv0dybp20bdH3+6orQ6s9ZBPR7oKAfo/bIeJRzAMuDTs=;
Received: from fout-a3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uvQZR-0001ig-0o for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:25 +0000
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
 by mailfout.phl.internal (Postfix) with ESMTP id 7A0E1EC007B;
 Sun,  7 Sep 2025 21:21:19 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-11.internal (MEProxy); Sun, 07 Sep 2025 21:21:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757294479; x=
 1757380879; bh=VnQqzEe4MIZzE9rsM4hqaAJTPrsvj4NXRFbWU+fyj6g=; b=L
 UbNN6nYXHbf8e8gxRWAsbkmQJhBC1+f/l21su8w4hWVoTfF88WMwgKFxHMiN+ns0
 LXcTq1/oOgR3YEBpZZ8Hquu/+XfL+l26EWV9rKSkOdM3ZZlMcUQvcG90z7B/ES2m
 AxEuFK+pZaVAIE1pL7+U2qGuDnSTQswUe01KbZcj1dWtqpJBVapxA5xh0IZCc5kM
 GNiANm/4ezkVLX7DXlAuqs5ZIlwXYbCd3z3RyISDJTjtmGi39TDoKGSeJQRDeSsn
 suyUgyzBmS6SR9DpWk7RMDvk4S9oQZKW2rzgZ/2gk4yIHdv5vkqR9iphghKkpalM
 p3P4QDb1ECrcrJKNW4mXA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757294479; x=1757380879; bh=V
 nQqzEe4MIZzE9rsM4hqaAJTPrsvj4NXRFbWU+fyj6g=; b=NrAEHOZGBrACcP2ji
 i/S/QWBzQrlw+Tbb5tlHvGeV4qTmovOSINBFqbo/4h+ubcDhoq/Pw4O9h9KocsGZ
 RqRor/VxLh6No6QOvmI47RO+QioxGeXGvnq9bHpJ6ZDrOI5NXonAi7jvL78S2VPD
 UHMUN65M4TAcBhsdTImCFpzoBuiTRzMDTRvAYczd6mGnGpdegxTr5xw0gzaOjbtd
 H9C81GrzLrCEnV45I3pDgRpMREQpBi+5xidt8cTAfIOHTtr32Y63FtdBHgPBSatx
 RCRzdv2nzLKQBpLO729JmWQZsAPXiK0ZuW2q2vdDOAD+W3OAdma9BX/KHgS4uwLU
 HsIWg==
X-ME-Sender: <xms:jy--aCya6PGMMwKLrbrLGJyQj2eIggqXdcVxtBsJOkYQ6uxaTtEHMA>
 <xme:jy--aHOq4yxWymP1ybzb5VzxC8AgnTfThXoGBMelV4By1ZKueUfHN3aTN5FEcI5NQ
 VbGe7-iMK8q05BvO10>
X-ME-Received: <xmr:jy--aGTQriEd4LweV8uribvlJSVXCnqebFzUuoJFB6oHVKeSj9uGkNRApJLxv6U2ZSOKN6K2EGW8YUB9hwUlQRB_b5EQLP-hnO-PB5kLtd8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduiedulecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:jy--aFZFbRYXy6xFLUcsLKE2QRLO5QoVAF1Nw1Y1ehu-Bo9oYZjt7Q>
 <xmx:jy--aD3B6-lBxCZ3PSMI5q04Ysehz5Sq-6IbhXIXXCy3GM6BR49Sfw>
 <xmx:jy--aFUduKdIX3pqogj-VIyNeH6JeqsbgHMtDSeQvKkmyDH6zqIoNw>
 <xmx:jy--aNVe5XxawolN7UqXJsWY113kVZ1m2VavWkNkXeExLBTDyj0k2w>
 <xmx:jy--aL1H-9PEEO24ySkQGXcCR87MByYgyhKMMWlzoUPpq46zMQxDoxnv>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 7 Sep 2025 21:21:18 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 04/11] firewire: core: add helper functions to access to
 fw_device data in fw_node structure
Date: Mon,  8 Sep 2025 10:21:01 +0900
Message-ID: <20250908012108.514698-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250908012108.514698-1-o-takashi@sakamocchi.jp>
References: <20250908012108.514698-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The data mbmer in fw_node structure is an opaque pointer,
 while nowadays it is just used to refer to fw_device associated with the
 fw_node.
 This commit redefines the opaque pointer to a pointer to fw_device structure, 
 and adds some helper functions to set/get it. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uvQZR-0001ig-0o
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

The data mbmer in fw_node structure is an opaque pointer, while nowadays
it is just used to refer to fw_device associated with the fw_node.

This commit redefines the opaque pointer to a pointer to fw_device
structure, and adds some helper functions to set/get it.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c   |  4 ++--
 drivers/firewire/core-device.c | 18 +++++++++---------
 drivers/firewire/core.h        | 14 ++++++++++++--
 3 files changed, 23 insertions(+), 13 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 41902dcc10a0..4a4210cda571 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -307,12 +307,12 @@ static void bm_work(struct work_struct *work)
 	generation = card->generation;
 
 	root_node = fw_node_get(card->root_node);
-	root_device = root_node->data;
+	root_device = fw_node_get_device(root_node);
 	root_device_is_running = root_device &&
 			atomic_read(&root_device->state) == FW_DEVICE_RUNNING;
 	root_device_is_cmc = root_device && root_device->cmc;
 
-	irm_device = card->irm_node->data;
+	irm_device = fw_node_get_device(card->irm_node);
 	irm_is_1394_1995_only = irm_device && irm_device->config_rom &&
 			(irm_device->config_rom[2] & 0x000000f0) == 0;
 
diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index aeacd4cfd694..6a04a0014694 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -887,7 +887,7 @@ static void fw_device_release(struct device *dev)
 	 * bus manager work looks at this node.
 	 */
 	scoped_guard(spinlock_irqsave, &card->lock)
-		device->node->data = NULL;
+		fw_node_set_device(device->node, NULL);
 
 	fw_node_put(device->node);
 	kfree(device->config_rom);
@@ -1007,7 +1007,7 @@ static void fw_device_init(struct work_struct *work)
 	int ret;
 
 	/*
-	 * All failure paths here set node->data to NULL, so that we
+	 * All failure paths here call fw_node_set_device(node, NULL), so that we
 	 * don't try to do device_for_each_child() on a kfree()'d
 	 * device.
 	 */
@@ -1051,9 +1051,9 @@ static void fw_device_init(struct work_struct *work)
 				struct fw_node *obsolete_node = reused->node;
 
 				device->node = obsolete_node;
-				device->node->data = device;
+				fw_node_set_device(device->node, device);
 				reused->node = current_node;
-				reused->node->data = reused;
+				fw_node_set_device(reused->node, reused);
 
 				reused->max_speed = device->max_speed;
 				reused->node_id = current_node->node_id;
@@ -1292,7 +1292,7 @@ void fw_node_event(struct fw_card *card, struct fw_node *node, int event)
 		 * FW_NODE_UPDATED callbacks can update the node_id
 		 * and generation for the device.
 		 */
-		node->data = device;
+		fw_node_set_device(node, device);
 
 		/*
 		 * Many devices are slow to respond after bus resets,
@@ -1307,7 +1307,7 @@ void fw_node_event(struct fw_card *card, struct fw_node *node, int event)
 
 	case FW_NODE_INITIATED_RESET:
 	case FW_NODE_LINK_ON:
-		device = node->data;
+		device = fw_node_get_device(node);
 		if (device == NULL)
 			goto create;
 
@@ -1324,7 +1324,7 @@ void fw_node_event(struct fw_card *card, struct fw_node *node, int event)
 		break;
 
 	case FW_NODE_UPDATED:
-		device = node->data;
+		device = fw_node_get_device(node);
 		if (device == NULL)
 			break;
 
@@ -1339,7 +1339,7 @@ void fw_node_event(struct fw_card *card, struct fw_node *node, int event)
 
 	case FW_NODE_DESTROYED:
 	case FW_NODE_LINK_OFF:
-		if (!node->data)
+		if (!fw_node_get_device(node))
 			break;
 
 		/*
@@ -1354,7 +1354,7 @@ void fw_node_event(struct fw_card *card, struct fw_node *node, int event)
 		 * the device in shutdown state to have that code fail
 		 * to create the device.
 		 */
-		device = node->data;
+		device = fw_node_get_device(node);
 		if (atomic_xchg(&device->state,
 				FW_DEVICE_GONE) == FW_DEVICE_RUNNING) {
 			device->workfn = fw_device_shutdown;
diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index 9b298af1cac0..083e39034c37 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -194,8 +194,8 @@ struct fw_node {
 	/* For serializing node topology into a list. */
 	struct list_head link;
 
-	/* Upper layer specific data. */
-	void *data;
+	// The device when already associated, else NULL.
+	struct fw_device *device;
 
 	struct fw_node *ports[] __counted_by(port_count);
 };
@@ -219,6 +219,16 @@ static inline void fw_node_put(struct fw_node *node)
 	kref_put(&node->kref, release_node);
 }
 
+static inline struct fw_device *fw_node_get_device(struct fw_node *node)
+{
+	return node->device;
+}
+
+static inline void fw_node_set_device(struct fw_node *node, struct fw_device *device)
+{
+	node->device = device;
+}
+
 void fw_core_handle_bus_reset(struct fw_card *card, int node_id,
 	int generation, int self_id_count, u32 *self_ids, bool bm_abdicate);
 void fw_destroy_nodes(struct fw_card *card);
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
