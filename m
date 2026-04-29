Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKZzCOzQ8WlrkgEAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 11:35:40 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB4649204B
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 11:35:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8CuD7biiRNNnY9L0mYkCRIH9XatCn05XlmzBs2od5WM=; b=XFj2/gxsHQaZpxfdoQlckJJYBR
	QAugFmTryLCAkqraDXjjK2NlQsZyRWEFIKVBT58E9DvK6GBkuDLNrOtDXTECxi8IWG7Uyr7jWcRTL
	OupaNRMW8OQdd2x6Knt/XbAqP451NbHgfyNcZd9d2GzPxRFM/mPqpjFowGngzrg8sabo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wI1KP-0000t8-JH;
	Wed, 29 Apr 2026 09:35:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wI1K2-0000sV-Tu
 for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 09:35:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iuqm6Mto8XQ8IViIXoCEFeQcanTIs2wV6yPnAFt6EFk=; b=JXdagwT5ZI2CHyRE7DXC7Ry0nE
 jKgKeh3Uw51AFsb9tGvt3xmuPftDe6/b8i3K6UsVD3t3uCnbPoAugE6o6LtGmfeetBSdCBFaxUpHt
 tH9TMiTxGXVCj1aHHrVwIdbvsas2tISpzNhcTDHhyMxKfR94xrTPWcYPtVl2N7SC/dDM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iuqm6Mto8XQ8IViIXoCEFeQcanTIs2wV6yPnAFt6EFk=; b=f8LAI71OZz7rIFPfcIRqf5gV8c
 blW9DdVPOFzyCzsK6MCONLEhxI1rOnaqGkyAV77ZaFG/Iede2VHB+CDfzYLTOrl37BW88dmIa5Y+I
 h8amC2p8ZSDbfYPZeqm1VPlLkk8lcbf7L7Knsn9VBz/c+yJ6ZymJVA22bgVbNX4oJX2U=;
Received: from fout-a1-smtp.messagingengine.com ([103.168.172.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wI1K1-0008M6-T7 for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 09:35:10 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfout.phl.internal (Postfix) with ESMTP id 3E3EDEC0199;
 Wed, 29 Apr 2026 05:35:04 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Wed, 29 Apr 2026 05:35:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1777455304; x=
 1777541704; bh=iuqm6Mto8XQ8IViIXoCEFeQcanTIs2wV6yPnAFt6EFk=; b=W
 kfmlsJfYZ/l+JEWaP49YyFgnPrPe1PlaHmcSsVkoRmpMKdMlZaO/iwxH/xjdHD8k
 IcYQlKNXkzacygFur4YiQsNIz+yA7NhO0ADlMMWicOPkDZtgBIYV0HTQjQ1pCjGY
 khUHk2RzeNKW4YSs2Ba59v2vxdX6Ix/n3N8jV/QI2l9d2pXAmWCXDuoDyMsaXWxU
 pGcoCQz6j0l3dFg1WzLaNlNRVdPYRpjI2koF7Clm7GL+CdrrPsKkhsr2XIXes2Ma
 +QndP6COnFVaq4a6m1MgrdyG9Ps8A1EnbKSbq6OerV/F58lIp1eRJjBUEjrUF+hI
 /Fz8Qa27UPLWBfMPNStTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1777455304; x=1777541704; bh=i
 uqm6Mto8XQ8IViIXoCEFeQcanTIs2wV6yPnAFt6EFk=; b=bpLBLeSZxFUBzPDir
 MrXvdHVxWmiFy9jTpwaclxZO4tWmr1lR39IUPBlJRtnEHX2w/uRw0FpgenPUGg/b
 gnFs8/reWWecsFJpvJ9PlGi1K+9dgvvQUvKnu+ry7qUU7cvJvZ72+Ikh+fKii11S
 F6AMrVSiNTTeEnVmsrVR4S+wOuOoxHv/dXVwFO8wBKQILcK1Yjy3SquExyU3DFsz
 zCQ7YL+RcVQN9G2ZCHUMQ8w4ODaSETJ7JT8N/oIPCEnD6gfYHAEN1cA4iZ0Gj2YQ
 hp60qAM+Kgl5rxO4RUVGxe66A/0IcgzzNTFOMy5RGCANBeh++gj3k8zOSm0OWQgL
 49lgQ==
X-ME-Sender: <xms:yNDxabr_hfhB3KgB8U0rPmozXrDIWYHZL0RpNMdWEFkcxmwLmMEl1A>
 <xme:yNDxaTcMZxlQ4ELwROR-sX4CAHg-CPuK4kRQJeHXq-8dpiCXv3WJgJEICITzWbooh
 7na4fr_MwoxHSamPKs-1YAuoFzuWMAYtFfA0m95uv1Lh8XRg7SfsZg>
X-ME-Received: <xmr:yNDxaSrTzgd8BT4lPAyKi_UQ6sJUAhqHiAHTKCSqw-C_MJZN06NrI0Y3C079HB-F0iRQBIHbHOS_To2tyE33L36QrrdZegpwljETS1-IHULEog>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdekgedtlecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepgedpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehshhhurghnghhpvghnghdrkhgvrhhnvghl
 sehgmhgrihhlrdgtohhmpdhrtghpthhtohepughinhhgihhsohdrkhgvrhhnvghlsehgmh
 grihhlrdgtohhmpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgv
 rhhnvghlrdhorhhg
X-ME-Proxy: <xmx:yNDxacHyFYqVHzIkyLFv1CYTKUQ9-NJpMcS_WBsaUUNhJXTGLW2Kfw>
 <xmx:yNDxaavVSDNhNjxTJJZG_LDAhTjiSFLYQpoX_M5BIvedvSi6NPiUkg>
 <xmx:yNDxaWWCy6R6RGiBN29_UPlg05sXMzGTToFzAi-Z0eQYOT19cJcjZg>
 <xmx:yNDxaeHV-2_5gkXUrJtcwpGaRmoTgBuGbijYoAU4cEBD4LKYTSxl1g>
 <xmx:yNDxaeu0VXpKZl66x1uIqx5bY3qlaGiwwGtPXVVQ6JgvKY2Pmholo-L3>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Apr 2026 05:35:00 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 5/7] firewire: core: code cleanup to remove old
 implementations for once operation
Date: Wed, 29 Apr 2026 18:34:46 +0900
Message-ID: <20260429093449.160545-6-o-takashi@sakamocchi.jp>
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
 Content preview:  The helper functions for iso_resource allocation and work
 item still include codes for once operation. This commit refactors them to
 remove the old implementations. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/core-cdev.c | 37 +++++++++++++++ 1 file changed, 15
 insertions(+), 22 deletions(-) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.168.172.144 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1wI1K1-0008M6-T7
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
X-Rspamd-Queue-Id: 7BB4649204B
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
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sakamocchi.jp:mid,sakamocchi.jp:email,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns]

The helper functions for iso_resource allocation and work item still
include codes for once operation.

This commit refactors them to remove the old implementations.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 37 +++++++++++++++---------------------
 1 file changed, 15 insertions(+), 22 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 478e8f6400f0..f81a8aa4bcbc 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -139,8 +139,11 @@ struct iso_resource {
 	struct client *client;
 	/* Schedule work and access todo only with client->lock held. */
 	struct delayed_work work;
-	enum {ISO_RES_ALLOC, ISO_RES_REALLOC, ISO_RES_DEALLOC,
-	      ISO_RES_ALLOC_ONCE, ISO_RES_DEALLOC_ONCE,} todo;
+	enum {
+		ISO_RES_ALLOC,
+		ISO_RES_REALLOC,
+		ISO_RES_DEALLOC,
+	} todo;
 	struct iso_resource_params params;
 	struct iso_resource_event *e_alloc, *e_dealloc;
 };
@@ -1342,9 +1345,7 @@ static void iso_resource_work(struct work_struct *work)
 			skip = todo == ISO_RES_REALLOC &&
 			       r->params.generation == generation;
 		}
-		free = todo == ISO_RES_DEALLOC ||
-		       todo == ISO_RES_ALLOC_ONCE ||
-		       todo == ISO_RES_DEALLOC_ONCE;
+		free = todo == ISO_RES_DEALLOC;
 		r->params.generation = generation;
 	}
 
@@ -1356,8 +1357,7 @@ static void iso_resource_work(struct work_struct *work)
 	fw_iso_resource_manage(client->device->card, generation,
 			r->params.channels, &channel, &bandwidth,
 			todo == ISO_RES_ALLOC ||
-			todo == ISO_RES_REALLOC ||
-			todo == ISO_RES_ALLOC_ONCE);
+			todo == ISO_RES_REALLOC);
 	/*
 	 * Is this generation outdated already?  As long as this resource sticks
 	 * in the xarray, it will be scheduled again for a newer generation or at
@@ -1390,7 +1390,7 @@ static void iso_resource_work(struct work_struct *work)
 	if (todo == ISO_RES_REALLOC && success)
 		goto out;
 
-	if (todo == ISO_RES_ALLOC || todo == ISO_RES_ALLOC_ONCE) {
+	if (todo == ISO_RES_ALLOC) {
 		e = r->e_alloc;
 		r->e_alloc = NULL;
 	} else {
@@ -1425,8 +1425,7 @@ static void release_iso_resource(struct client *client,
 	schedule_iso_resource(r, 0);
 }
 
-static int init_iso_resource(struct client *client,
-		struct fw_cdev_allocate_iso_resource *request, int todo)
+static int init_iso_resource(struct client *client, struct fw_cdev_allocate_iso_resource *request)
 {
 	struct iso_resource_event *e1, *e2;
 	struct iso_resource *r;
@@ -1446,7 +1445,7 @@ static int init_iso_resource(struct client *client,
 
 	INIT_DELAYED_WORK(&r->work, iso_resource_work);
 	r->client	= client;
-	r->todo		= todo;
+	r->todo		= ISO_RES_ALLOC;
 	r->e_alloc	= e1;
 	r->e_dealloc	= e2;
 
@@ -1455,15 +1454,10 @@ static int init_iso_resource(struct client *client,
 	e2->iso_resource.closure = request->closure;
 	e2->iso_resource.type    = FW_CDEV_EVENT_ISO_RESOURCE_DEALLOCATED;
 
-	if (todo == ISO_RES_ALLOC) {
-		r->resource.release = release_iso_resource;
-		ret = add_client_resource(client, &r->resource, GFP_KERNEL);
-		if (ret < 0)
-			goto fail;
-	} else {
-		r->resource.release = NULL;
-		r->resource.handle = -1;
-	}
+	r->resource.release = release_iso_resource;
+	ret = add_client_resource(client, &r->resource, GFP_KERNEL);
+	if (ret < 0)
+		goto fail;
 	schedule_iso_resource(r, 0);
 
 	request->handle = r->resource.handle;
@@ -1480,8 +1474,7 @@ static int init_iso_resource(struct client *client,
 static int ioctl_allocate_iso_resource(struct client *client,
 				       union ioctl_arg *arg)
 {
-	return init_iso_resource(client,
-			&arg->allocate_iso_resource, ISO_RES_ALLOC);
+	return init_iso_resource(client, &arg->allocate_iso_resource);
 }
 
 static int ioctl_deallocate_iso_resource(struct client *client,
-- 
2.53.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
