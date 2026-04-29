Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id U5evIj2s8WmwjgEAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 08:59:09 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70520490139
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 08:59:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8CuD7biiRNNnY9L0mYkCRIH9XatCn05XlmzBs2od5WM=; b=fKOKgNwcJGH18/ssuXqDa4IML8
	5LlqAAQZqMfN1mK7pACr3JQazATII3ehTW5KRZ8QAE2kZf9SEOEqvKYJ1CXUU7sgg6/3eji6nn6Tq
	pSLs9WP2QgktMgY+oXKEHmA/hJ8lisLl0pWbDgUFTzvBco8dK/l9xHs4O3axhIS6K4CA=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wHysx-0000uA-Pn;
	Wed, 29 Apr 2026 06:59:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wHysv-0000tm-Ee
 for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 06:58:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iuqm6Mto8XQ8IViIXoCEFeQcanTIs2wV6yPnAFt6EFk=; b=QkFLBe0Bo5aBC3BzW7mv9rIozn
 n39mrEHpUBeMd0HUsLvWY0c6qW9k63smKJnYgs0eGZ8FzlWMe6dohn9sbFyTvMtGp2A6Z4pvaEVrU
 kxCo1F9cZm5h/b3K2adUiAtflvtsnhpthIOAHeIzj4r6FMQ+pDl0L65jCDT4Li+m3hEs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iuqm6Mto8XQ8IViIXoCEFeQcanTIs2wV6yPnAFt6EFk=; b=S7wkNqgtugooQMMRCtt+htVOsB
 bQhPwIooM7OMZMdhsTOSZTRPE2Ep5WcCTY5CgM7FkTWdfjeBeEXKOnxkquTnZ9uZa0psefs9LAQVV
 giv5Kc+AoJCyOhnsOsrWegfu6p/bRfAAUdj53cyWTTXCbMMvzMWM1RFMO7MRWW+VEhUQ=;
Received: from fhigh-a5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wHyss-0004Xk-CM for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 06:58:58 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
 by mailfhigh.phl.internal (Postfix) with ESMTP id BA0B914000EA;
 Wed, 29 Apr 2026 02:58:47 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-03.internal (MEProxy); Wed, 29 Apr 2026 02:58:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1777445927; x=
 1777532327; bh=iuqm6Mto8XQ8IViIXoCEFeQcanTIs2wV6yPnAFt6EFk=; b=k
 pVCoY+RhxF9e78mhJXLHl7+pGlWCbPhMUiPhVYeoDEDYW6SBBD4zKuma8+zbq+bn
 RmD2/PtI/cQX70zMjU0CUq6zzB9LUaZzRkjceS1DAv4YttAvZF6wcLd4VkzVmOmM
 ODol9jU1hdSszcuv3l1QdGZCoolMdv/falx30hGNAE22zYdoOmVc1JS4GKeqfUUW
 HLUel9+s0GUzP2hoHU+7RPbHRxEKOw9gd1BdXHNZCd+2kOGmDs0GyonAG7gDTsUX
 PpGhGwDJ8o09ftEVyaVLjxjc38xz6b0x1bKlfUpOypBXOYix2RCoI/dcwIG6ujEn
 bGcru2BGKx9WQBUda+YEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1777445927; x=1777532327; bh=i
 uqm6Mto8XQ8IViIXoCEFeQcanTIs2wV6yPnAFt6EFk=; b=KTOqWntP7QxXq8uMo
 r1324aW5kay9T3fubvNqYeZNkN5l2NaPEYxGBQvxtLFi4DuUlJBo/lPo+H2vW9FL
 +Ye6Rg1Wm/w59wQ9r1VQsDw+srdU40JXU7n/E0IDGfsEKrb83JqHExTV1qDaXTsy
 JrT2sfA63p7s/kfnZqWlt+5bNzbjzkp9KAB/OVSkNKEfBp703VKMxRt4bRV2GVoP
 k3gHwYknaGcYL7LKlTCYGGpSMxdIuigGZCJhQxycPQtBQAQyblu5YuDZrR4qZ4Wp
 NcAMtEqYTIXWtWqsJZ5OAM4Bm9afORzKY0Q2UZRBInW+TAbZsaBOGLSluP68nDIj
 N8Yjw==
X-ME-Sender: <xms:J6zxac6z559kS1vtGKKDhNqr5uz19Otdeqna3cv7sRqKnFrvUnuc0Q>
 <xme:J6zxaVWa7FhSlOg4BUjZfaCP6IpEbh1Wr16M8vzxe-GV3_DnRmHosvMwdjrBKSyr7
 rzWij3sIJ-wmBPmn_m5XukL9dZzJiaauox9n5qWVO6cnLV_4u0E-1g>
X-ME-Received: <xmr:J6zxaY0cQKDtLWxo8OrRpMb8w5zMZAAC9bph6_G95uFiPRgkQLAoejnWoYL5nQJnZbe74v1sSF_QeymyS6lNvUAhzzNK3b-xUgtF3N1itg8mXA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdekfeejkecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehshhhurghnghhpvghnghdrkhgvrhhnvghl
 sehgmhgrihhlrdgtohhmpdhrtghpthhtohepughinhhgihhsohdrkhgvrhhnvghlsehgmh
 grihhlrdgtohhm
X-ME-Proxy: <xmx:J6zxaa1ZuVUxFJIYVMfkmRK52d6ha2yJHp2cKR9tKO2d3IXpR35A3w>
 <xmx:J6zxaT8YWiK3I3_GMfH_pcZmelysIjxJp8cF46GWhiS5pDH5U9N5vw>
 <xmx:J6zxaf1typiCU52nkEnj8zBuNKKLF_bQQ2SrEY9J6IzLnAnIwwxFtA>
 <xmx:J6zxaY8sESbHVOQrkaiwB9HOyierZOyhZL0OE5NcltDATVLpZ9ulBQ>
 <xmx:J6zxaT1KQM8LgJUdou6W0uUabNsOXOsUXcOupODhgJqvspPq4m7RRGh0>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Apr 2026 02:58:46 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 5/7] firewire: core: code cleanup to remove old
 implementations for once operation
Date: Wed, 29 Apr 2026 15:58:34 +0900
Message-ID: <20260429065836.155820-6-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260429065836.155820-1-o-takashi@sakamocchi.jp>
References: <20260429065836.155820-1-o-takashi@sakamocchi.jp>
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1wHyss-0004Xk-CM
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
Cc: dingiso.kernel@gmail.com, shuangpeng.kernel@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 70520490139
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm2,messagingengine.com:s=fm2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns]

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
