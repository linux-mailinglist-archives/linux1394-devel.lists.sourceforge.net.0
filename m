Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F56E94FA71
	for <lists+linux1394-devel@lfdr.de>; Tue, 13 Aug 2024 01:52:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sdepz-0005Wh-29;
	Mon, 12 Aug 2024 23:52:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sdepx-0005WY-TE
 for linux1394-devel@lists.sourceforge.net;
 Mon, 12 Aug 2024 23:52:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5bXNDaC24651cPJeU5X4QWrCWjWlUV0d17UsuhjZ27U=; b=nPKcaf47n5qjG6uXd9+rFLxDA8
 ac+8vphNZdjgLqWZXgEk7uVBgcEOfpUpChTn11/vVABYiLoun2Mmap6SeS0YBiXli/I0piq/xEfN2
 W1+NNoUca8z0C+pWVM7usaigWi5bRxzXdOZ5aaZn3jZef+GXpmFcG2UkNo1sDPeYRre4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5bXNDaC24651cPJeU5X4QWrCWjWlUV0d17UsuhjZ27U=; b=U9TaiJIlUZ0UJJh8H3cKxSAqfl
 B2SBzxOlk2CkEczYrnFCL8VPmNTqX8kfJD98tWw9Gv9HPg5oNVXY0uL8iUg49rdd4hzNVwX4jlEZd
 MaGNgIzpKEdZKMDazTqjhYajrUtOXagegb3XhAj9wWH5QM4YcujWbux9WRTXQ4h59fLQ=;
Received: from fout5-smtp.messagingengine.com ([103.168.172.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sdepx-0002Dw-9l for linux1394-devel@lists.sourceforge.net;
 Mon, 12 Aug 2024 23:52:30 +0000
Received: from phl-compute-04.internal (phl-compute-04.nyi.internal
 [10.202.2.44])
 by mailfout.nyi.internal (Postfix) with ESMTP id B6970138FA1B;
 Mon, 12 Aug 2024 19:52:18 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Mon, 12 Aug 2024 19:52:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1723506738; x=
 1723593138; bh=5bXNDaC24651cPJeU5X4QWrCWjWlUV0d17UsuhjZ27U=; b=M
 X0qAGEszJA45C513C85LPWSVOb/amHFFVOPVTdQnSib5WEISJnq1EqHVMS8bTBAJ
 g9/2/plpvuUXod28nnd/b+XU79F3NuNi8+hbksR3X+5JH4aUo+g8vWsJqIcoQm3X
 CoL4+yGsj3FLDLmH0EzLMCTL7++WWmUxSWezi4a7xQkuZBVUJwLRFnPBTSTWxsYX
 NVGatZYeiqKzng3XyfI/gqbHVLgEKFnzkM8DsJc43OFi6i1y+f431oMFXod8+vEr
 lxPMY4QOnztT6Vvjg8KHhVMWQv9CbJxA4QhMQVGZrLgE6ciDnovGR+WVl0QzIACt
 BYrOwJvMEwCLStedd452w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1723506738; x=
 1723593138; bh=5bXNDaC24651cPJeU5X4QWrCWjWlUV0d17UsuhjZ27U=; b=A
 n3p7uOS1iNgyqjIyhUBTzcgWgYK9+1VSpqWtt7XAhqY+0sCIDNolNjW9bzXge71X
 5ZzswPwHEiB16S8d5uDt2IdmoBsgkYHLGgDxv/nrQXjguwnhRLWdelN0WlOfA1Br
 MhCBDKsUrjidHB3bQ3Ot8338TWQV9FqPJ21tu7CDdGcbbWFCG96UuiQCY0zX7+qf
 +CLYPMSkNMH6F6QexeuJS41+3SFx8PQOUs6DLaJIm29WAkrLQHDINJlh2F2mmvkX
 6u4JkuKHYq+4hBR2aBw4M7E/mWJ4WChRcZ0/MGGB2mvCrOEghZOi1A9OV0OeUWDM
 IBNmDa0VkAlCbDkvOYB6w==
X-ME-Sender: <xms:MqC6ZnODSUqiPFMbgg_wAwHNNmOwwaH7RDyxVf9e5Nbvlctuj9QlDw>
 <xme:MqC6Zh9mYN0Feyn_vj3RliK_kQXC-iIwzCwU_ygzM5K06wb2kF9yfohcvor8X1ndw
 YL07ps4EXFoV6ZsViY>
X-ME-Received: <xmr:MqC6ZmStv9uxoFqRnZl8f9syxlqIW0IlpUv_aprsm_OvhZ4L640DAvb2M_ZzwGVqfx95OOAmGgxjkmelZEIdLwULTY8gKpWny5RPVbTAZordXQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddtuddgvdekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpedvjefgjeeuvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdff
 kedvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedv
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:MqC6ZrsXeJuClqDhWFFxvWnoDo95aye81JRoZlkmIRBidQMd-NCRkQ>
 <xmx:MqC6ZvfgG15gMtOornSb3Ji4dbNVd3kaqO7OTIltfOdbFs8Dsx7e9g>
 <xmx:MqC6Zn1PlzSqTArlp11fVpjbFUrwGQHARdaDLxeYSSV_rkrOZOkk-Q>
 <xmx:MqC6Zr-3sHXJSLAjyz6CfmT-eyp2tB7jnY0bdzFmjTVNDZozC4Coaw>
 <xmx:MqC6Zgp2zxs2-FAvK3cKgmYGrMRyELB7LkL5DXsHggC5fFzZ2zkTW-Ze>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 12 Aug 2024 19:52:17 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 4/5] firewire: core: code refactoring to use
 idr_for_each_entry() macro instead of idr_for_each() function
Date: Tue, 13 Aug 2024 08:52:09 +0900
Message-ID: <20240812235210.28458-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240812235210.28458-1-o-takashi@sakamocchi.jp>
References: <20240812235210.28458-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This commit is a preparation to use xa_for_each() macro.
 Current
 implementation uses idr_for_each() function and has a disadvantage to replace
 with the macro. The IDR framework has idr_for_each_entry( [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.148 listed in wl.mailspike.net]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.148 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sdepx-0002Dw-9l
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

This commit is a preparation to use xa_for_each() macro. Current
implementation uses idr_for_each() function and has a disadvantage to
replace with the macro. The IDR framework has idr_for_each_entry() macro
for the similar purpose. This commit replace the function with the
macro with minor code refactoring.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 64 +++++++++++++++++-------------------
 1 file changed, 30 insertions(+), 34 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 6fe2a2ea9869..83d25327c1d3 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -166,6 +166,14 @@ static int is_iso_resource(const struct client_resource *resource)
 	return resource->release == release_iso_resource;
 }
 
+static void release_transaction(struct client *client,
+				struct client_resource *resource);
+
+static int is_outbound_transaction_resource(const struct client_resource *resource)
+{
+	return resource->release == release_transaction;
+}
+
 static void schedule_iso_resource(struct iso_resource *r, unsigned long delay)
 {
 	client_get(r->client);
@@ -173,12 +181,6 @@ static void schedule_iso_resource(struct iso_resource *r, unsigned long delay)
 		client_put(r->client);
 }
 
-static void schedule_if_iso_resource(struct client_resource *resource)
-{
-	if (is_iso_resource(resource))
-		schedule_iso_resource(to_iso_resource(resource), 0);
-}
-
 /*
  * dequeue_event() just kfree()'s the event, so the event has to be
  * the first field in a struct XYZ_event.
@@ -401,16 +403,11 @@ static void for_each_client(struct fw_device *device,
 		callback(c);
 }
 
-static int schedule_reallocations(int id, void *p, void *data)
-{
-	schedule_if_iso_resource(p);
-
-	return 0;
-}
-
 static void queue_bus_reset_event(struct client *client)
 {
 	struct bus_reset_event *e;
+	struct client_resource *resource;
+	int id;
 
 	e = kzalloc(sizeof(*e), GFP_KERNEL);
 	if (e == NULL)
@@ -423,7 +420,10 @@ static void queue_bus_reset_event(struct client *client)
 
 	guard(spinlock_irq)(&client->lock);
 
-	idr_for_each(&client->resource_idr, schedule_reallocations, client);
+	idr_for_each_entry(&client->resource_idr, resource, id) {
+		if (is_iso_resource(resource))
+			schedule_iso_resource(to_iso_resource(resource), 0);
+	}
 }
 
 void fw_device_cdev_update(struct fw_device *device)
@@ -518,7 +518,8 @@ static int add_client_resource(struct client *client,
 		if (ret >= 0) {
 			resource->handle = ret;
 			client_get(client);
-			schedule_if_iso_resource(resource);
+			if (is_iso_resource(resource))
+				schedule_iso_resource(to_iso_resource(resource), 0);
 		}
 	}
 
@@ -1835,35 +1836,27 @@ static int fw_device_op_mmap(struct file *file, struct vm_area_struct *vma)
 	return ret;
 }
 
-static int is_outbound_transaction_resource(int id, void *p, void *data)
+static bool has_outbound_transactions(struct client *client)
 {
-	struct client_resource *resource = p;
-
-	return resource->release == release_transaction;
-}
+	struct client_resource *resource;
+	int id;
 
-static int has_outbound_transactions(struct client *client)
-{
 	guard(spinlock_irq)(&client->lock);
 
-	return idr_for_each(&client->resource_idr, is_outbound_transaction_resource, NULL);
-}
-
-static int shutdown_resource(int id, void *p, void *data)
-{
-	struct client_resource *resource = p;
-	struct client *client = data;
-
-	resource->release(client, resource);
-	client_put(client);
+	idr_for_each_entry(&client->resource_idr, resource, id) {
+		if (is_outbound_transaction_resource(resource))
+			return true;
+	}
 
-	return 0;
+	return false;
 }
 
 static int fw_device_op_release(struct inode *inode, struct file *file)
 {
 	struct client *client = file->private_data;
 	struct event *event, *next_event;
+	struct client_resource *resource;
+	int id;
 
 	scoped_guard(spinlock_irq, &client->device->card->lock)
 		list_del(&client->phy_receiver_link);
@@ -1883,7 +1876,10 @@ static int fw_device_op_release(struct inode *inode, struct file *file)
 
 	wait_event(client->tx_flush_wait, !has_outbound_transactions(client));
 
-	idr_for_each(&client->resource_idr, shutdown_resource, client);
+	idr_for_each_entry(&client->resource_idr, resource, id) {
+		resource->release(client, resource);
+		client_put(client);
+	}
 	idr_destroy(&client->resource_idr);
 
 	list_for_each_entry_safe(event, next_event, &client->event_list, link)
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
