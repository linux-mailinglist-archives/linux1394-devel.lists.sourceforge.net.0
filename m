Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E94969477A9
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Aug 2024 10:54:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1satUO-0006A4-Hd;
	Mon, 05 Aug 2024 08:54:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1satUD-00068x-Kw
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z5mX0VvBucVVAQ3hVsBzbK3EagpAINO+dbqWRzZbXyg=; b=E+zuGvE4V6BPVxfO8ijeltlBW+
 FRwwRjPg6m7xLsUpxrLDhjcETQZdCLrFPE9t6ZT83zvQZTMI4lhtGKYaM/hbY+t3VNVW9lhlmIvjN
 4v1qX5qCrVKo+qpTk7wewVW6Zuh6+qEscdJ6n9oCGoM3UQgG4EXQUGFpqyAhkP+Lrxgs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z5mX0VvBucVVAQ3hVsBzbK3EagpAINO+dbqWRzZbXyg=; b=WgvmukZzPTj2ADK1n8ICI3ZnmH
 WAanuIK3BlYXJzzgFm31+d1JSbi9R7+jUIo5YGa+PpJ0l2UPKdluebHuAtW6AsAHkox70G8th3bf4
 YsY0jGD6FGpfLWmaumiGg4H6WdGDjUVo1SwlDMRAHwPRTznzx9918pmRVcZMJ49WaS44=;
Received: from fout7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1satUB-0002rg-Uw for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:36 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfout.nyi.internal (Postfix) with ESMTP id 62370138FDB9;
 Mon,  5 Aug 2024 04:54:25 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Mon, 05 Aug 2024 04:54:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722848065; x=
 1722934465; bh=z5mX0VvBucVVAQ3hVsBzbK3EagpAINO+dbqWRzZbXyg=; b=X
 h6g7ejxo2MhzpEfm9xxoolJvrRH8FOjMP0H4ElIzP1rq/ei13Rqcl1sfdUvB7O59
 yiXIlPwT698FehcvZ5+k+RWdu4mDz1w6Ler5EwNbjRypOq6OGcSnknqRXU8FwgdG
 LON8sIZxgB1Xj1ymh51+pi45DoNwL11esSfZOuDNJZsO69ucSIeUq70yM3iFPfvg
 k2/goSiMqKHE8pJfscwbThbpd+fZf7YVwpox8Yg5C6wigj0rjDi4PpTWSTeQ0XH2
 Cm3AYjiwAeODAqzyqnW1gwWZmrhWmDXn3mXWeHsS1SRUi5NuPwpFaqpN7LAStkMT
 TzMl/7xc9psNXwXX68UpA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722848065; x=
 1722934465; bh=z5mX0VvBucVVAQ3hVsBzbK3EagpAINO+dbqWRzZbXyg=; b=E
 IMnte++qSGMUsH4kPyDQq6ah0C1GhMeOYpergolJKTwyBsfdb9UpCOipm0Ltu6LX
 pbutu1cgMdg/pTRHqTPMGJ2jTYJvj6tYr4Lb45r6vBMCKRNqX5DNfrjdtOzRA8Dd
 Z3a5+xBfbMvdj4midD7XYYtCzdrdYUK8PFzLCmHVXfolpTPfKOgZSad1OhlGBcfR
 fbEVy/cX+tnsuk+kLeX/g6M8eRbPCQpihAkEpxCMIrsdnqqBwqGRWDIXOxhst3k4
 KEE96wbR5/PyvZ4TqYkB+x+KHOg9WG2TyHItUsUe25NBivwqRiyMUGClFk5p8zHJ
 LPQOCra2NCmrgFFfu4Dpg==
X-ME-Sender: <xms:QZOwZpFzlANOeG2L3-Ta7TVVBjYt9gsVxKaYFeE1d3GfTnlq4E-MhQ>
 <xme:QZOwZuWWq3UCVZXmbQ-ELVaLouoPDhlITfP-6gL71xoyaV8p_Ryz0okYKvzUFH1UX
 GhffEKHyfU1ayec1gY>
X-ME-Received: <xmr:QZOwZrJVHey3iFrnDiJruis5HWm_d8RbGvHA5EBJTm06UQIVVlYnUw5_HbiqgItXaje87iJ7GpSZ2rxyKEkgCUBMILiizOZgoxaiHj-nWsk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeigddutdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgepvdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:QZOwZvHUdoR3381lKctwcA7sjGaqQHRsLi_TwPmZLnkRNeXyDJi6vQ>
 <xmx:QZOwZvX0WLKJSQ9OmfaEgfBu2BaT5EMsHb98kkF3L6SVoWGSKc7K9Q>
 <xmx:QZOwZqMGt6T-zMo5wlKMWllGMHhI_-wYunQNcbJuuoEcHsi3D79oxA>
 <xmx:QZOwZu3WxXxH4AbEHE5OU-pNbNvVyCugHpJPOxJKXt_N-K3A2pMSEQ>
 <xmx:QZOwZsjLz4wdaaJ815LGZjWGj2XOoFq3Y1xd-TD9nnWCIeKDosTHdmml>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Aug 2024 04:54:24 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 10/17] firewire: core: use guard macro to maintain IDR of
 isochronous resources for userspace clients
Date: Mon,  5 Aug 2024 17:54:01 +0900
Message-ID: <20240805085408.251763-11-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
References: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The core function provides UAPI to maintain isochronous
 resources
 allocated by userspace clients across bus resets automatically. The resources
 are maintained by IDR and the concurrent access to it is [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.150 listed in wl.mailspike.net]
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
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1satUB-0002rg-Uw
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

The core function provides UAPI to maintain isochronous resources allocated
by userspace clients across bus resets automatically. The resources are
maintained by IDR and the concurrent access to it is protected by spinlock
in the instance of client.

This commit uses guard macro to maintain the spinlock.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 131 ++++++++++++++++-------------------
 1 file changed, 59 insertions(+), 72 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 2e2199eaa05b..c2d24cc5c1f1 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -399,9 +399,9 @@ static void queue_bus_reset_event(struct client *client)
 	queue_event(client, &e->event,
 		    &e->reset, sizeof(e->reset), NULL, 0);
 
-	spin_lock_irq(&client->lock);
+	guard(spinlock_irq)(&client->lock);
+
 	idr_for_each(&client->resource_idr, schedule_reallocations, client);
-	spin_unlock_irq(&client->lock);
 }
 
 void fw_device_cdev_update(struct fw_device *device)
@@ -483,25 +483,23 @@ static int add_client_resource(struct client *client,
 			       struct client_resource *resource, gfp_t gfp_mask)
 {
 	bool preload = gfpflags_allow_blocking(gfp_mask);
-	unsigned long flags;
 	int ret;
 
 	if (preload)
 		idr_preload(gfp_mask);
-	spin_lock_irqsave(&client->lock, flags);
 
-	if (client->in_shutdown)
-		ret = -ECANCELED;
-	else
-		ret = idr_alloc(&client->resource_idr, resource, 0, 0,
-				GFP_NOWAIT);
-	if (ret >= 0) {
-		resource->handle = ret;
-		client_get(client);
-		schedule_if_iso_resource(resource);
+	scoped_guard(spinlock_irqsave, &client->lock) {
+		if (client->in_shutdown)
+			ret = -ECANCELED;
+		else
+			ret = idr_alloc(&client->resource_idr, resource, 0, 0, GFP_NOWAIT);
+		if (ret >= 0) {
+			resource->handle = ret;
+			client_get(client);
+			schedule_if_iso_resource(resource);
+		}
 	}
 
-	spin_unlock_irqrestore(&client->lock, flags);
 	if (preload)
 		idr_preload_end();
 
@@ -514,14 +512,14 @@ static int release_client_resource(struct client *client, u32 handle,
 {
 	struct client_resource *resource;
 
-	spin_lock_irq(&client->lock);
-	if (client->in_shutdown)
-		resource = NULL;
-	else
-		resource = idr_find(&client->resource_idr, handle);
-	if (resource && resource->release == release)
-		idr_remove(&client->resource_idr, handle);
-	spin_unlock_irq(&client->lock);
+	scoped_guard(spinlock_irq, &client->lock) {
+		if (client->in_shutdown)
+			resource = NULL;
+		else
+			resource = idr_find(&client->resource_idr, handle);
+		if (resource && resource->release == release)
+			idr_remove(&client->resource_idr, handle);
+	}
 
 	if (!(resource && resource->release == release))
 		return -EINVAL;
@@ -546,13 +544,12 @@ static void complete_transaction(struct fw_card *card, int rcode, u32 request_ts
 {
 	struct outbound_transaction_event *e = data;
 	struct client *client = e->client;
-	unsigned long flags;
 
-	spin_lock_irqsave(&client->lock, flags);
-	idr_remove(&client->resource_idr, e->r.resource.handle);
-	if (client->in_shutdown)
-		wake_up(&client->tx_flush_wait);
-	spin_unlock_irqrestore(&client->lock, flags);
+	scoped_guard(spinlock_irqsave, &client->lock) {
+		idr_remove(&client->resource_idr, e->r.resource.handle);
+		if (client->in_shutdown)
+			wake_up(&client->tx_flush_wait);
+	}
 
 	switch (e->rsp.without_tstamp.type) {
 	case FW_CDEV_EVENT_RESPONSE:
@@ -1307,25 +1304,24 @@ static void iso_resource_work(struct work_struct *work)
 	int generation, channel, bandwidth, todo;
 	bool skip, free, success;
 
-	spin_lock_irq(&client->lock);
-	generation = client->device->generation;
-	todo = r->todo;
-	/* Allow 1000ms grace period for other reallocations. */
-	if (todo == ISO_RES_ALLOC &&
-	    time_before64(get_jiffies_64(),
-			  client->device->card->reset_jiffies + HZ)) {
-		schedule_iso_resource(r, DIV_ROUND_UP(HZ, 3));
-		skip = true;
-	} else {
-		/* We could be called twice within the same generation. */
-		skip = todo == ISO_RES_REALLOC &&
-		       r->generation == generation;
+	scoped_guard(spinlock_irq, &client->lock) {
+		generation = client->device->generation;
+		todo = r->todo;
+		// Allow 1000ms grace period for other reallocations.
+		if (todo == ISO_RES_ALLOC &&
+		    time_before64(get_jiffies_64(), client->device->card->reset_jiffies + HZ)) {
+			schedule_iso_resource(r, DIV_ROUND_UP(HZ, 3));
+			skip = true;
+		} else {
+			// We could be called twice within the same generation.
+			skip = todo == ISO_RES_REALLOC &&
+			       r->generation == generation;
+		}
+		free = todo == ISO_RES_DEALLOC ||
+		       todo == ISO_RES_ALLOC_ONCE ||
+		       todo == ISO_RES_DEALLOC_ONCE;
+		r->generation = generation;
 	}
-	free = todo == ISO_RES_DEALLOC ||
-	       todo == ISO_RES_ALLOC_ONCE ||
-	       todo == ISO_RES_DEALLOC_ONCE;
-	r->generation = generation;
-	spin_unlock_irq(&client->lock);
 
 	if (skip)
 		goto out;
@@ -1348,24 +1344,20 @@ static void iso_resource_work(struct work_struct *work)
 
 	success = channel >= 0 || bandwidth > 0;
 
-	spin_lock_irq(&client->lock);
-	/*
-	 * Transit from allocation to reallocation, except if the client
-	 * requested deallocation in the meantime.
-	 */
-	if (r->todo == ISO_RES_ALLOC)
-		r->todo = ISO_RES_REALLOC;
-	/*
-	 * Allocation or reallocation failure?  Pull this resource out of the
-	 * idr and prepare for deletion, unless the client is shutting down.
-	 */
-	if (r->todo == ISO_RES_REALLOC && !success &&
-	    !client->in_shutdown &&
-	    idr_remove(&client->resource_idr, r->resource.handle)) {
-		client_put(client);
-		free = true;
+	scoped_guard(spinlock_irq, &client->lock) {
+		// Transit from allocation to reallocation, except if the client
+		// requested deallocation in the meantime.
+		if (r->todo == ISO_RES_ALLOC)
+			r->todo = ISO_RES_REALLOC;
+		// Allocation or reallocation failure?  Pull this resource out of the
+		// idr and prepare for deletion, unless the client is shutting down.
+		if (r->todo == ISO_RES_REALLOC && !success &&
+		    !client->in_shutdown &&
+		    idr_remove(&client->resource_idr, r->resource.handle)) {
+			client_put(client);
+			free = true;
+		}
 	}
-	spin_unlock_irq(&client->lock);
 
 	if (todo == ISO_RES_ALLOC && channel >= 0)
 		r->channels = 1ULL << channel;
@@ -1403,10 +1395,10 @@ static void release_iso_resource(struct client *client,
 	struct iso_resource *r =
 		container_of(resource, struct iso_resource, resource);
 
-	spin_lock_irq(&client->lock);
+	guard(spinlock_irq)(&client->lock);
+
 	r->todo = ISO_RES_DEALLOC;
 	schedule_iso_resource(r, 0);
-	spin_unlock_irq(&client->lock);
 }
 
 static int init_iso_resource(struct client *client,
@@ -1845,14 +1837,9 @@ static int is_outbound_transaction_resource(int id, void *p, void *data)
 
 static int has_outbound_transactions(struct client *client)
 {
-	int ret;
+	guard(spinlock_irq)(&client->lock);
 
-	spin_lock_irq(&client->lock);
-	ret = idr_for_each(&client->resource_idr,
-			   is_outbound_transaction_resource, NULL);
-	spin_unlock_irq(&client->lock);
-
-	return ret;
+	return idr_for_each(&client->resource_idr, is_outbound_transaction_resource, NULL);
 }
 
 static int shutdown_resource(int id, void *p, void *data)
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
