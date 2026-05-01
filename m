Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 7bCxKZqx9GnTDgIAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Fri, 01 May 2026 15:58:50 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA534ACF30
	for <lists+linux1394-devel@lfdr.de>; Fri, 01 May 2026 15:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RENLIalEUkFywjo8O3r17BWFpsUdeUSuuExlzNWUr3I=; b=BCFEhXk5fykzC8A+2DxDmniJTX
	mebuIDkFDYLwZUOwJAKFYLN7tGKMudXTXQ2JyW2CJN8M3Ba76NjSDKOz45YyQmC37blQ7tvydRzVU
	Mjeluzu5l6VYqqQtmz3Cane1SzKt/WVB4CthoDhlxpyDb8ok43pvJaIMIdJAEVwmuSBg=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wIoO8-0001D2-GJ;
	Fri, 01 May 2026 13:58:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wIoO7-0001Ct-PK
 for linux1394-devel@lists.sourceforge.net;
 Fri, 01 May 2026 13:58:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yP4/WkwoDV7wTaYoVfglgXjwLcswPBb2/EQ8z+42nuc=; b=R9lHyWIUBR4AeOXTQNeOfTPaxB
 ALQpG6Zd5qdNl7quXQ21TQjHu3X0TCqoeAaVMxcNMquScvsPcWxQp8Shj1TP/dkALAa2vvU6v+qhn
 Z4f8MUsmq1f2ZGGQu05eBrCRsOh0JYcNhm2YuW96DfnFQCRGtaq9nbgCFU5b10e1Vrs4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yP4/WkwoDV7wTaYoVfglgXjwLcswPBb2/EQ8z+42nuc=; b=WmDEj4L8WAVe9zWxhB8U47/CaT
 cNRQ0qZoCCqAnsROT2XHP+8dnbctuNuHEKaZLWltaaS+UG7REkEdmLFsO2oWWCf5fdc27tKljFWBX
 QQ6P09CxA3lyHe9/dIGew/POi1zY9mIYeVxhf9ZtBBYv/RCuLTXzGBpQoSDjrf1/3V+w=;
Received: from fhigh-b2-smtp.messagingengine.com ([202.12.124.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wIoO7-0005ic-9t for linux1394-devel@lists.sourceforge.net;
 Fri, 01 May 2026 13:58:39 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfhigh.stl.internal (Postfix) with ESMTP id C69A77A00CB;
 Fri,  1 May 2026 09:58:28 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Fri, 01 May 2026 09:58:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1777643908; x=
 1777730308; bh=yP4/WkwoDV7wTaYoVfglgXjwLcswPBb2/EQ8z+42nuc=; b=Z
 s7K6Trgq87LhrLN6Frsp/XD30qCALJQSzeAgUUXYJkHHzNVbAf66mw80aqNbyYiF
 CqvfVfJm7M95QeldnVpQ8GJVDqvhYnYpD8tzjIlkKBuIIypt0FIpynIKjIa7U/U5
 VA4+XeT9CP3voQCQgMtWP4a7u2C/MJVJNbEtcDJ2ABJQtiAMOs7+ITirYrvZJg4a
 CSfuzoFDzqJdeqUd4raxbH0TwvUe4eSaYlIsERMJjL9RT5AFlwtrC57NUNzF15yz
 nCTz3iUlWIX561nrYmIFqfoLKHim8jM6205ydoFLEVQBbgx0Yw/Vyju96+Rtafdg
 nULyK2/zskT0teJpZprhQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1777643908; x=1777730308; bh=y
 P4/WkwoDV7wTaYoVfglgXjwLcswPBb2/EQ8z+42nuc=; b=cCykyI5NFx5cUtfRi
 ak/gzFrWh8EY70lbg/QTkPzNI1ec3kblZkzGcQ/r64h0Fy4C6fvUP54zqZkikCSn
 SgKBiUcXFk8fRAEnt/hsxsthF6Znb/iaqminaRP8l1wq4EhxKqPY94FOU4W50Q1q
 ncKIPPW3OGpa5DflReig0hBFMrBuEkGXVNmowcVMVCMIVLlHVbEftSOiRBsc8jNh
 TB7iJ3lCAM+FxTO/Am7Jt9sqcaV0IjVt4xoznScwd7AhTtuPL3HH53USQllaimKh
 Fuic6u56/93d3p1krjDGplpmGUlIdbjIfGjADaorpvZTf6IDBg3/MQm913Rbb27K
 0rS0g==
X-ME-Sender: <xms:hLH0aT02vJqrzLryZJTDs0IvaAAGPYRYtLAYKKCPJQb805o1hiP0CQ>
 <xme:hLH0aQAv9AiDxNao9ST878mL4IARd0x3IVj_Rii4uoip8vEhVFv-Kr3bTN6hS9Vp8
 dedNZHngAlHNS-NNFWwCaa7IslXzc6KFW3NbuXzXVL5FwsTF_uhJxQ>
X-ME-Received: <xmr:hLH0abeA-G-zCyj1P3hTPv8oz6l6Gh3ThTSd_52SlIiu4bft_KPud7QECZSKMqNi-xw6XQ7gHcdKdAKE5mJfsnSaLDvfJoMrSFUh9HDeQ42RUg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdeltdefkecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:hLH0aVgjv-iijbVixi5PhdU6IQJHtWQY6Jn6PkwldrzvtUznbw7yJA>
 <xmx:hLH0aTrP15NqPLxDuowc34jPFlgbcP8sq4peE-tjoq65DwkaoLirYQ>
 <xmx:hLH0aVFPW95O3su08JcEDK_skOuCt_xYqgLYkUKsenZqgknnBitD6g>
 <xmx:hLH0admTTUeKo6JxGvslLkBYq5bgw_Ho5yAzS_StpbnmSIsHiJshuw>
 <xmx:hLH0aYJIpqnqnF_DCsql2jGnH5xL5cXAfL-j3GC_Hfmgvo3fF8n6BAw7>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 1 May 2026 09:58:27 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/4] firewire: core: reduce critical section duration in
 pre-processing of isoc resource management in cdev
Date: Fri,  1 May 2026 22:58:20 +0900
Message-ID: <20260501135823.241940-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260501135823.241940-1-o-takashi@sakamocchi.jp>
References: <20260501135823.241940-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: It is preferable for the critical section to be as small as
 possible. Current implementation of iso_resource_auto_work() function uses
 a spinlock to control concurrent access to members of fw_card, fw [...] 
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
X-Headers-End: 1wIoO7-0005ic-9t
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
X-Rspamd-Queue-Id: BFA534ACF30
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm3,messagingengine.com:s=fm3];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sakamocchi.jp:mid,sakamocchi.jp:email,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,work.work:url]

It is preferable for the critical section to be as small as possible.
Current implementation of iso_resource_auto_work() function uses a
spinlock to control concurrent access to members of fw_card, fw_device,
iso_resource_auto structures, however the locking duration could be
reduced.

This commit refactors to shorten that duration.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 34 +++++++++++++++++++---------------
 1 file changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index bcfb20b770df..887783e4bd52 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1329,32 +1329,36 @@ static void iso_resource_auto_work(struct work_struct *work)
 	struct iso_resource_auto *r = from_work(r, work, work.work);
 	struct client *client = r->client;
 	unsigned long index = r->resource.handle;
-	int generation, channel, bandwidth, todo;
+	int current_generation, resource_generation, channel, bandwidth, todo;
+	u64 reset_jiffies;
 	bool skip, free, success;
 
 	scoped_guard(spinlock_irq, &client->lock) {
-		generation = client->device->generation;
+		reset_jiffies = client->device->card->reset_jiffies;
+		current_generation = client->device->generation;
+		resource_generation = r->params.generation;
+		r->params.generation = current_generation;
 		todo = r->todo;
-		// Allow 1000ms grace period for other reallocations.
-		if (todo == ISO_RES_AUTO_ALLOC &&
-		    time_is_after_jiffies64(client->device->card->reset_jiffies + secs_to_jiffies(1))) {
-			schedule_iso_resource_auto(r, msecs_to_jiffies(333));
-			skip = true;
-		} else {
-			// We could be called twice within the same generation.
-			skip = todo == ISO_RES_AUTO_REALLOC &&
-			       r->params.generation == generation;
-		}
-		free = todo == ISO_RES_AUTO_DEALLOC;
-		r->params.generation = generation;
 	}
 
+	// Allow 1000ms grace period for other reallocations.
+	if (todo == ISO_RES_AUTO_ALLOC &&
+	    time_is_after_jiffies64(reset_jiffies + secs_to_jiffies(1))) {
+		schedule_iso_resource_auto(r, msecs_to_jiffies(333));
+		skip = true;
+	} else {
+		// We could be called twice within the same generation.
+		skip = todo == ISO_RES_AUTO_REALLOC &&
+		       resource_generation == current_generation;
+	}
+	free = todo == ISO_RES_AUTO_DEALLOC;
+
 	if (skip)
 		goto out;
 
 	bandwidth = r->params.bandwidth;
 
-	fw_iso_resource_manage(client->device->card, generation,
+	fw_iso_resource_manage(client->device->card, current_generation,
 			r->params.channels, &channel, &bandwidth,
 			todo == ISO_RES_AUTO_ALLOC ||
 			todo == ISO_RES_AUTO_REALLOC);
-- 
2.53.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
