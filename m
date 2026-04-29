Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sBqRNUCs8WmwjgEAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 08:59:12 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBE5490137
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 08:59:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=geQpwTIlCe4BkWZBbK/va1CCHX2ddT5O0AnVV24Mm4M=; b=Z8pW5jdX4owBhLoAX4K6DwIbPW
	IkWJdONIlJbGRC9c3kXwM8XQKfw4LrTGvUrshNupWZvKNrR6frVl2cjlXEXrGoB/7ic6lw7r2S0Cs
	v2Nu6qoH8JjDeQwMC6DQ8l5tmkd5QInOsF1NNKgygwNYAjCuTWLjqFRMngR37/m1D9bk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wHyss-0005kP-BX;
	Wed, 29 Apr 2026 06:58:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wHysr-0005kG-MO
 for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 06:58:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xctR9ZNAUKqbPu11yo5cMMsj9hUwz8Ko5NoLApkNrto=; b=BR9c8+vzDwezzOEhPBuKBD1yAX
 qFQHqv0TgaQoY8xNKSOhRo8RI5y3ku3EXUwJy568X4qtRb2LNijkn/z52iOuJ2xfRShFQI4z4h9OS
 ezXMdBYL3UrpDJa+xRNteCoXNe1E9XVoFOEEC5ojYe2s413SSbxtIb0zVD3cczGUS7ms=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xctR9ZNAUKqbPu11yo5cMMsj9hUwz8Ko5NoLApkNrto=; b=Mb8Pc/T92zGGQtNd/i6CgKpft1
 2W+b5GuWvwrzh8pm3hxk2oRMj0W18eGnNvDK8v4PnCyxIegEDQ2Pxb1i8PnoWXsm3vGkG0RokaTTy
 g9Or/TiB5rTQmOK9+WNYH0dcbg+DmczFIxvKSU1Chse/Ou/rHLwQfLzWwKU7U/Ie8FMs=;
Received: from fhigh-a5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wHysr-0004Xi-1P for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 06:58:57 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 6636914000E7;
 Wed, 29 Apr 2026 02:58:46 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-03.internal (MEProxy); Wed, 29 Apr 2026 02:58:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1777445926; x=
 1777532326; bh=xctR9ZNAUKqbPu11yo5cMMsj9hUwz8Ko5NoLApkNrto=; b=L
 MzVvPiWl4ypd3FXY6v5/KdTxntFIjsemUIwU/lxUOd+NnUvym6LTnkA4fKfcTeYx
 QJf/Wn9IW6QafyPsFhtC6f2z2vtUTXxGzOyunGQ5UWb/JfrbpsWrowlE/BXcUuKD
 RWRa6u/YyZNipJOVwDe0FOPdQr4WIqoNi2ip01qEOCWmW6uSFTiiVwzEI9Z8vnWy
 dhr0oPIT0JbHVzYLf/H+9Pz9W41AN3Hj33XHSo3A1Pg5f4iPnp7Vjvwwh0524o+Q
 mjkYxPxvvQ/8ehJTifJ9NRwe2yD86fa8pD+d2D53JPjR82LXiMSKPAoRZGERF0od
 fDbeCBEArQqxuu9g+BKxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1777445926; x=1777532326; bh=x
 ctR9ZNAUKqbPu11yo5cMMsj9hUwz8Ko5NoLApkNrto=; b=Ng/G84uMd7Sbo5gTn
 X12T15dKnZiU/1vVHGmLa/cnJzdba2gBRe1bu8tAMKKbsMQhkGzlSJDLVHUs157X
 reL73SQZgLxaeY8rSDeBBz4iQYyWfsl+ZSrs77+25AQ/CKb4cqRDoFsGpWbavj9c
 QIBmmEbo8ZCPWNR2/s9Mo3HHX2u1kZumIa6fugBRilTltHGhD40yNbMGb6Cxj/qL
 utq51SoW3IIPScWty1l1G0VkFueolr8QV/44ob0fyncSfWaA7POmjFGcX7Y6StE0
 OxbW9HFVLdg7vHTHLzhMDLlhllinVlIa/SA9zroZZ5GQhh5HeHzdVdWN1EGxcocI
 uqT4Q==
X-ME-Sender: <xms:JqzxaWRs8VsqQf2jYl-haeMlPPc5QL5xCbLCdNmyAXY83LeApUxx7w>
 <xme:JqzxaTP2LmMSncUCm_FzmU9jm5s55lVY1T6EKhLC4qSd46gcDgrXKnKbPVX3J5Iys
 idTs9QJ3T2ErbFKvd4wmTNoRQkpFngcrLHspAQF9wM34I-rA4k1ag>
X-ME-Received: <xmr:JqzxaROustEJC9lux2pdnGNuoy1MNg0jHz_gBMVYqmStQDZH9iD5Jwh0fXMn7p-9J0ShFEtIfEYmE9CrGjtj9Nf1pAMFyiSRFvpSzhmu8Upkvw>
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
X-ME-Proxy: <xmx:Jqzxabuzx63l7IZswMscfRuqCRxiS45e04DKLOvX4W1YEYg2GJiDOQ>
 <xmx:JqzxaTUER66pzUYREf6BbSV1iYRpZfHrRYJZ4v_WgyGlc_Tk-F6GPw>
 <xmx:JqzxabvpcePR1voe8uZBkraWs7vcfVWU52eHrgOUn5MKk929luUFYQ>
 <xmx:JqzxaXWQtT_ubXHuS5vWIo5Gxht5Oto7zyL8EE-hrcL5c3o103xYGA>
 <xmx:JqzxaUtiIgUm99FeXJRrioy4GnfUGovbsJhbgHxbkPnWLaseruVj1aYr>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Apr 2026 02:58:45 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 4/7] firewire: core: split functions for iso_resource once
 operation
Date: Wed, 29 Apr 2026 15:58:33 +0900
Message-ID: <20260429065836.155820-5-o-takashi@sakamocchi.jp>
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
 Content preview:  Unlike FW_CDEV_IOC_ALLOCATE_ISO_RESOURCE operation,
 the operations
 of FW_CDEV_IOC_[DE]ALLOCATE_ISO_RESOURCE_ONCE require no client resource,
 thus they keeps no handle value. This commit adds the series of functions
 to separate these operations, according to divide-and-conquer methodology.
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
X-Headers-End: 1wHysr-0004Xi-1P
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
X-Rspamd-Queue-Id: 3CBE5490137
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,work.work:url]

Unlike FW_CDEV_IOC_ALLOCATE_ISO_RESOURCE operation, the operations of
FW_CDEV_IOC_[DE]ALLOCATE_ISO_RESOURCE_ONCE require no client resource,
thus they keeps no handle value.

This commit adds the series of functions to separate these operations,
according to divide-and-conquer methodology.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 83 ++++++++++++++++++++++++++++++++++--
 1 file changed, 79 insertions(+), 4 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index effa03739679..478e8f6400f0 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -145,6 +145,18 @@ struct iso_resource {
 	struct iso_resource_event *e_alloc, *e_dealloc;
 };
 
+struct iso_resource_once {
+	struct client *client;
+	// Schedule work and access todo only with client->lock held.
+	struct delayed_work work;
+	enum {
+		ISO_RES_ONCE_ALLOC,
+		ISO_RES_ONCE_DEALLOC,
+	} todo;
+	struct iso_resource_params params;
+	struct iso_resource_event *event;
+};
+
 static struct address_handler_resource *to_address_handler_resource(struct client_resource *resource)
 {
 	return container_of(resource, struct address_handler_resource, resource);
@@ -1479,18 +1491,81 @@ static int ioctl_deallocate_iso_resource(struct client *client,
 			arg->deallocate.handle, release_iso_resource, NULL);
 }
 
+#define UNAVAILABLE_HANDLE	-1
+
+static void iso_resource_once_work(struct work_struct *work)
+{
+	struct iso_resource_once *r = from_work(r, work, work.work);
+	struct client *client = r->client;
+	struct iso_resource_event *e = r->event;
+	int generation, channel, bandwidth;
+
+	scoped_guard(spinlock_irq, &client->lock)
+		generation = client->device->generation;
+
+	r->params.generation = generation;
+	bandwidth = r->params.bandwidth;
+
+	fw_iso_resource_manage(client->device->card, generation, r->params.channels, &channel,
+			       &bandwidth, r->todo == ISO_RES_ONCE_ALLOC);
+
+	e->iso_resource.handle = UNAVAILABLE_HANDLE;
+	e->iso_resource.channel = channel;
+	e->iso_resource.bandwidth = bandwidth;
+
+	queue_event(client, &e->event, &e->iso_resource, sizeof(e->iso_resource), NULL, 0);
+
+	cancel_delayed_work(&r->work);
+	kfree(r);
+
+	client_put(client);
+}
+
+static int init_iso_resource_once(struct client *client,
+				  struct fw_cdev_allocate_iso_resource *request, int todo)
+{
+	struct iso_resource_event *e __free(kfree) = kmalloc_obj(*e);
+	struct iso_resource_once *r __free(kfree) = kmalloc_obj(*r);
+	int err;
+
+	if (!r || !e)
+		return -ENOMEM;
+
+	err = fill_iso_resource_params(&r->params, request);
+	if (err < 0)
+		return err;
+
+	INIT_DELAYED_WORK(&r->work, iso_resource_once_work);
+	r->client = client;
+	r->todo	= todo;
+
+	if (todo == ISO_RES_ONCE_ALLOC)
+		e->iso_resource.type = FW_CDEV_EVENT_ISO_RESOURCE_ALLOCATED;
+	else
+		e->iso_resource.type = FW_CDEV_EVENT_ISO_RESOURCE_DEALLOCATED;
+	e->iso_resource.closure = request->closure;
+	r->event = no_free_ptr(e);
+
+	// Keep the client until work item finishing.
+	client_get(r->client);
+
+	queue_delayed_work(fw_workqueue, &no_free_ptr(r)->work, 0);
+
+	request->handle = UNAVAILABLE_HANDLE;
+
+	return 0;
+}
+
 static int ioctl_allocate_iso_resource_once(struct client *client,
 					    union ioctl_arg *arg)
 {
-	return init_iso_resource(client,
-			&arg->allocate_iso_resource, ISO_RES_ALLOC_ONCE);
+	return init_iso_resource_once(client, &arg->allocate_iso_resource, ISO_RES_ONCE_ALLOC);
 }
 
 static int ioctl_deallocate_iso_resource_once(struct client *client,
 					      union ioctl_arg *arg)
 {
-	return init_iso_resource(client,
-			&arg->allocate_iso_resource, ISO_RES_DEALLOC_ONCE);
+	return init_iso_resource_once(client, &arg->allocate_iso_resource, ISO_RES_ONCE_DEALLOC);
 }
 
 /*
-- 
2.53.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
