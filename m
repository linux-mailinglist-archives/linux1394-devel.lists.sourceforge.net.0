Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6F4KIvTQ8WlrkgEAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 11:35:48 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD8D492085
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 11:35:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vGqX7l+pgGpUshrPyqd/Iny09AiuS56aZ+GByyQkb1o=; b=Dn33ABxNnTeCLbF7JA84j4+f6O
	BOgSMAhZmlBLWddYfwM+6LGl7eb2D/vQbe+sq9TyC1QlBPtfn6rNCa+1vcWuADA5RGmTIHduGlXwW
	Qwzdw4cTgwDOWUTo0KfNzf36HDZJYee3cgPU1t9pC0zbZxrofE5kQloPR/DOqvGQdpXY=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wI1KT-0003mI-D4;
	Wed, 29 Apr 2026 09:35:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wI1K4-0003kZ-LF
 for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 09:35:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u9dutGyrxvpl/+wEZGAjAiJE8FtOcf5iL19WV67sTIQ=; b=amOx6u3ec7Eae1jYhrXda52SqF
 ur+tL3Hc/rSYn5CiJA3xE6L/JOKMlKAXT95T00oWBfg+Tw4g3CN/DEFeRSsgJTE29RwtP3cQyk12s
 bH7eUsy4RxsY0OeDg4xJ7wNk7oR3vaJ786qHkDvSxzK/Yv3woKG1rTS/p3OH15KsteUI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u9dutGyrxvpl/+wEZGAjAiJE8FtOcf5iL19WV67sTIQ=; b=V+vu7uNKhwEkVoTP8Uv7UbEaxK
 ti2D8y8Wd/eVzMMxTOCN0+t0ZVjNGoIOlL2EerXZQCuS08M2OPW0dBg5f+GFXCzM2WpAf9/j4j36m
 8L8aIyUqpMQEk21qM0vRk1i861ncvHGxPyDyxEFZkpi8O6GROaf1K75guJv/kgJB0wWs=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wI1K4-0008M9-IC for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 09:35:13 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
 by mailfhigh.phl.internal (Postfix) with ESMTP id E168A1400095;
 Wed, 29 Apr 2026 05:35:05 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-02.internal (MEProxy); Wed, 29 Apr 2026 05:35:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1777455305; x=
 1777541705; bh=u9dutGyrxvpl/+wEZGAjAiJE8FtOcf5iL19WV67sTIQ=; b=w
 fxeENO0KlmA7jGkspdSQwqB9q3eXYYmV8rSjip5yCnTixv3g0s2PEbspC0D3KRl3
 SPgqvd/vCe9sKN0BZypQnq94MEaakaCdIV8kQqisPeK6xFyGZSEzgad5JJfM20pF
 F5s5wEZVBId1Xu8Fu+eaVS2omW58d87uiyBmKBMljBN8wWNxnzD7BDIQnligY4mY
 gn9LX4r2OSnbgnstKHDXJJRch6M8n1lMGzubm3FK1o04Z+zxnD/MHrt9QjRHqf4H
 151RSVvTC8fAaE97rcEHubZpQRUDBc7HrMbPbBR5EcdfjXPLOd3Jh1lonyrOWMjf
 GI8rsmS0sozWKnJORukTg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1777455305; x=1777541705; bh=u
 9dutGyrxvpl/+wEZGAjAiJE8FtOcf5iL19WV67sTIQ=; b=empm6ATeY1hI3M5kM
 x2A0XB3p5TENk5mmXUKPEGwPNijVXRi+84/59ASX+mqJQCNIFv8ZEr/5GhOD4Fix
 Geim3gJPXX6aRDs8gE/pKcHlPJpVL6lBlYGRa9gxFqdff0qQeN6JImlMkcTp30i/
 ZC0x/osIa2RgrUCR1vQ3JjIS4L2uLyboyJk7NM/GtlaqvhObp57Vrog/qq0hxHmf
 /ltg3P7BINYtOGSFNmCEShcE7A8xHPYaxVEZvoRMtIz0ScI77DQGlRY3G+HM6sre
 anGgPEMc14C7MdU8Aj6yn5M+NO9gcC4gFIDsfk46zkQTor59RUCo69GpaLgJC93m
 rZv4g==
X-ME-Sender: <xms:ydDxaf7_tNOgCyVTXHGU9sOuudYaoYo2wZi0pmLzRgbwW8srz0I8zg>
 <xme:ydDxaStBV93jCRwNqQ4SVgg3y57FlG5yEQjlhnL1AWX3u7BHe3y52fvulV_SJkGba
 xie88XXO234po8mscB8P_Wrr6RTWDIRKeTRTherIu59pI8Riq9Rr6M>
X-ME-Received: <xmr:ydDxaQ6XmK0r8f7ADmZBuIxbC8NgoHbcv0_lUAOk2fB8975O-6HO3FO3-w0aOUkE0C3ulLlO15wLngEJs6cc6MpDWJdGn2j3JaJaChVq-iXIDQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdekgedtlecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepgedpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehshhhurghnghhpvghnghdrkhgvrhhnvghl
 sehgmhgrihhlrdgtohhmpdhrtghpthhtohepughinhhgihhsohdrkhgvrhhnvghlsehgmh
 grihhlrdgtohhmpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgv
 rhhnvghlrdhorhhg
X-ME-Proxy: <xmx:ydDxadUyLbWrwzXM7ryTBKZFG7JlTtSoE8IhzrC1LTBy5t1n9_v7xQ>
 <xmx:ydDxaS8WMdoAWyGN65V45l-pjPMwvl7Yiox5pZfYiHHhIhdiIhYbKw>
 <xmx:ydDxaZmSVVFo7dNFujFPuMlklKXzGQ1CgvZTR9xS4o9dW44SZSPJuw>
 <xmx:ydDxaQV0Q_nkLny-7KZenVBp5pexvJc2ipKtno2mmOUqTL4do8EuyA>
 <xmx:ydDxae-l-sqSZtoUQ1JSIIR1IKSl4fUZFjAbf_cBACUl1uH-8ccV2g3A>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Apr 2026 05:35:04 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 6/7] firewire: core: append _auto suffix for non-once iso
 resource operations
Date: Wed, 29 Apr 2026 18:34:47 +0900
Message-ID: <20260429093449.160545-7-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260429093449.160545-1-o-takashi@sakamocchi.jp>
References: <20260429093449.160545-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The functions for iso_resource once operations are carefully
 split from another type of operation. This commit adds _auto suffix to
 functions
 for the another type so that it is easily to distinguish them. 
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
X-Headers-End: 1wI1K4-0008M9-IC
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
Cc: dingiso.kernel@gmail.com, linux-kernel@vger.kernel.org,
 shuangpeng.kernel@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 9FD8D492085
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm2,messagingengine.com:s=fm2];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sakamocchi.jp:mid,sakamocchi.jp:email,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns]

The functions for iso_resource once operations are carefully split from
another type of operation.

This commit adds _auto suffix to functions for the another type so that
it is easily to distinguish them.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 75 ++++++++++++++++++------------------
 1 file changed, 37 insertions(+), 38 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index f81a8aa4bcbc..b3ce34d777c3 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -134,15 +134,15 @@ struct iso_resource_params {
 	s32 bandwidth;
 };
 
-struct iso_resource {
+struct iso_resource_auto {
 	struct client_resource resource;
 	struct client *client;
 	/* Schedule work and access todo only with client->lock held. */
 	struct delayed_work work;
 	enum {
-		ISO_RES_ALLOC,
-		ISO_RES_REALLOC,
-		ISO_RES_DEALLOC,
+		ISO_RES_AUTO_ALLOC,
+		ISO_RES_AUTO_REALLOC,
+		ISO_RES_AUTO_DEALLOC,
 	} todo;
 	struct iso_resource_params params;
 	struct iso_resource_event *e_alloc, *e_dealloc;
@@ -175,16 +175,16 @@ static struct descriptor_resource *to_descriptor_resource(struct client_resource
 	return container_of(resource, struct descriptor_resource, resource);
 }
 
-static struct iso_resource *to_iso_resource(struct client_resource *resource)
+static struct iso_resource_auto *to_iso_resource_auto(struct client_resource *resource)
 {
-	return container_of(resource, struct iso_resource, resource);
+	return container_of(resource, struct iso_resource_auto, resource);
 }
 
-static void release_iso_resource(struct client *, struct client_resource *);
+static void release_iso_resource_auto(struct client *, struct client_resource *);
 
-static int is_iso_resource(const struct client_resource *resource)
+static int is_iso_resource_auto(const struct client_resource *resource)
 {
-	return resource->release == release_iso_resource;
+	return resource->release == release_iso_resource_auto;
 }
 
 static void release_transaction(struct client *client,
@@ -195,7 +195,7 @@ static int is_outbound_transaction_resource(const struct client_resource *resour
 	return resource->release == release_transaction;
 }
 
-static void schedule_iso_resource(struct iso_resource *r, unsigned long delay)
+static void schedule_iso_resource_auto(struct iso_resource_auto *r, unsigned long delay)
 {
 	client_get(r->client);
 	if (!queue_delayed_work(fw_workqueue, &r->work, delay))
@@ -443,8 +443,8 @@ static void queue_bus_reset_event(struct client *client)
 	guard(spinlock_irq)(&client->lock);
 
 	xa_for_each(&client->resource_xa, index, resource) {
-		if (is_iso_resource(resource))
-			schedule_iso_resource(to_iso_resource(resource), 0);
+		if (is_iso_resource_auto(resource))
+			schedule_iso_resource_auto(to_iso_resource_auto(resource), 0);
 	}
 }
 
@@ -1323,10 +1323,10 @@ static int fill_iso_resource_params(struct iso_resource_params *params,
 	return 0;
 }
 
-static void iso_resource_work(struct work_struct *work)
+static void iso_resource_auto_work(struct work_struct *work)
 {
 	struct iso_resource_event *e;
-	struct iso_resource *r = from_work(r, work, work.work);
+	struct iso_resource_auto *r = from_work(r, work, work.work);
 	struct client *client = r->client;
 	unsigned long index = r->resource.handle;
 	int generation, channel, bandwidth, todo;
@@ -1336,16 +1336,16 @@ static void iso_resource_work(struct work_struct *work)
 		generation = client->device->generation;
 		todo = r->todo;
 		// Allow 1000ms grace period for other reallocations.
-		if (todo == ISO_RES_ALLOC &&
+		if (todo == ISO_RES_AUTO_ALLOC &&
 		    time_is_after_jiffies64(client->device->card->reset_jiffies + secs_to_jiffies(1))) {
-			schedule_iso_resource(r, msecs_to_jiffies(333));
+			schedule_iso_resource_auto(r, msecs_to_jiffies(333));
 			skip = true;
 		} else {
 			// We could be called twice within the same generation.
-			skip = todo == ISO_RES_REALLOC &&
+			skip = todo == ISO_RES_AUTO_REALLOC &&
 			       r->params.generation == generation;
 		}
-		free = todo == ISO_RES_DEALLOC;
+		free = todo == ISO_RES_AUTO_DEALLOC;
 		r->params.generation = generation;
 	}
 
@@ -1356,15 +1356,15 @@ static void iso_resource_work(struct work_struct *work)
 
 	fw_iso_resource_manage(client->device->card, generation,
 			r->params.channels, &channel, &bandwidth,
-			todo == ISO_RES_ALLOC ||
-			todo == ISO_RES_REALLOC);
+			todo == ISO_RES_AUTO_ALLOC ||
+			todo == ISO_RES_AUTO_REALLOC);
 	/*
 	 * Is this generation outdated already?  As long as this resource sticks
 	 * in the xarray, it will be scheduled again for a newer generation or at
 	 * shutdown.
 	 */
 	if (channel == -EAGAIN &&
-	    (todo == ISO_RES_ALLOC || todo == ISO_RES_REALLOC))
+	    (todo == ISO_RES_AUTO_ALLOC || todo == ISO_RES_AUTO_REALLOC))
 		goto out;
 
 	success = channel >= 0 || bandwidth > 0;
@@ -1372,11 +1372,11 @@ static void iso_resource_work(struct work_struct *work)
 	scoped_guard(spinlock_irq, &client->lock) {
 		// Transit from allocation to reallocation, except if the client
 		// requested deallocation in the meantime.
-		if (r->todo == ISO_RES_ALLOC)
-			r->todo = ISO_RES_REALLOC;
+		if (r->todo == ISO_RES_AUTO_ALLOC)
+			r->todo = ISO_RES_AUTO_REALLOC;
 		// Allocation or reallocation failure?  Pull this resource out of the
 		// xarray and prepare for deletion, unless the client is shutting down.
-		if (r->todo == ISO_RES_REALLOC && !success &&
+		if (r->todo == ISO_RES_AUTO_REALLOC && !success &&
 		    !client->in_shutdown &&
 		    xa_erase(&client->resource_xa, index)) {
 			client_put(client);
@@ -1384,13 +1384,13 @@ static void iso_resource_work(struct work_struct *work)
 		}
 	}
 
-	if (todo == ISO_RES_ALLOC && channel >= 0)
+	if (todo == ISO_RES_AUTO_ALLOC && channel >= 0)
 		r->params.channels = 1ULL << channel;
 
-	if (todo == ISO_RES_REALLOC && success)
+	if (todo == ISO_RES_AUTO_REALLOC && success)
 		goto out;
 
-	if (todo == ISO_RES_ALLOC) {
+	if (todo == ISO_RES_AUTO_ALLOC) {
 		e = r->e_alloc;
 		r->e_alloc = NULL;
 	} else {
@@ -1414,21 +1414,20 @@ static void iso_resource_work(struct work_struct *work)
 	client_put(client);
 }
 
-static void release_iso_resource(struct client *client,
-				 struct client_resource *resource)
+static void release_iso_resource_auto(struct client *client, struct client_resource *resource)
 {
-	struct iso_resource *r = to_iso_resource(resource);
+	struct iso_resource_auto *r = to_iso_resource_auto(resource);
 
 	guard(spinlock_irq)(&client->lock);
 
-	r->todo = ISO_RES_DEALLOC;
-	schedule_iso_resource(r, 0);
+	r->todo = ISO_RES_AUTO_DEALLOC;
+	schedule_iso_resource_auto(r, 0);
 }
 
 static int init_iso_resource(struct client *client, struct fw_cdev_allocate_iso_resource *request)
 {
 	struct iso_resource_event *e1, *e2;
-	struct iso_resource *r;
+	struct iso_resource_auto *r;
 	int ret;
 
 	r = kmalloc_obj(*r);
@@ -1443,9 +1442,9 @@ static int init_iso_resource(struct client *client, struct fw_cdev_allocate_iso_
 	if (ret < 0)
 		goto fail;
 
-	INIT_DELAYED_WORK(&r->work, iso_resource_work);
+	INIT_DELAYED_WORK(&r->work, iso_resource_auto_work);
 	r->client	= client;
-	r->todo		= ISO_RES_ALLOC;
+	r->todo		= ISO_RES_AUTO_ALLOC;
 	r->e_alloc	= e1;
 	r->e_dealloc	= e2;
 
@@ -1454,11 +1453,11 @@ static int init_iso_resource(struct client *client, struct fw_cdev_allocate_iso_
 	e2->iso_resource.closure = request->closure;
 	e2->iso_resource.type    = FW_CDEV_EVENT_ISO_RESOURCE_DEALLOCATED;
 
-	r->resource.release = release_iso_resource;
+	r->resource.release = release_iso_resource_auto;
 	ret = add_client_resource(client, &r->resource, GFP_KERNEL);
 	if (ret < 0)
 		goto fail;
-	schedule_iso_resource(r, 0);
+	schedule_iso_resource_auto(r, 0);
 
 	request->handle = r->resource.handle;
 
@@ -1481,7 +1480,7 @@ static int ioctl_deallocate_iso_resource(struct client *client,
 					 union ioctl_arg *arg)
 {
 	return release_client_resource(client,
-			arg->deallocate.handle, release_iso_resource, NULL);
+			arg->deallocate.handle, release_iso_resource_auto, NULL);
 }
 
 #define UNAVAILABLE_HANDLE	-1
-- 
2.53.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
