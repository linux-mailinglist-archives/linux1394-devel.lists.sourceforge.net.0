Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LB8NOzQ8WlrkgEAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 11:35:40 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FED49205E
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 11:35:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=geQpwTIlCe4BkWZBbK/va1CCHX2ddT5O0AnVV24Mm4M=; b=cg5WvRsidzU5S7WjkbZGsw27tz
	ODTe39qmtJaLwD+OtVZVAvt7MJxAIHnyK2qzoxl+Sx2yLmUJkoVD4GuZ2hbJ2e1vNmjSH4jd50WlF
	tM4sKnBxMBaXjH1OzuIDc9CYRw4HbjD9HrvXrcmLMEetmhKvtDAnVJ2C1JbzA7IK9OR4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wI1KT-0007ih-75;
	Wed, 29 Apr 2026 09:35:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wI1K7-0007hL-I5
 for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 09:35:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xctR9ZNAUKqbPu11yo5cMMsj9hUwz8Ko5NoLApkNrto=; b=VmPJN8b66hxhr0JXh00K+dMEEz
 rPqYo46oizADVntwr9Sn6eIsy4/eo1XSL8V08oaM3icP0Vg/H8CYKa+BAlYK8rmDUZLF1mu2vVySp
 N5GLekUXf2unBsDEIqskgBv21tyoTgEbm4H3z5d1oMKBp7gcrTRZfVhQnQKCfEsKaR8g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xctR9ZNAUKqbPu11yo5cMMsj9hUwz8Ko5NoLApkNrto=; b=Dd3uKYgTQjjyv10u07gxWZY6Uu
 YxqxOJukUOWl0H3tkO4rFvAm+Crnghm3EAzvXeCl478VVwx0kVS8bsUMA+Fe1AWmXm1GkGYHoOObb
 u9pLd9jZdvx5sAfchHRoeQOsNlq86ZxL1nqlItqOiLIS9ubNPYUwcgEM2kYB1Ldf5s1U=;
Received: from fout-a1-smtp.messagingengine.com ([103.168.172.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wI1K4-0008M8-Fn for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 09:35:13 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
 by mailfout.phl.internal (Postfix) with ESMTP id 4B614EC0198;
 Wed, 29 Apr 2026 05:35:00 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-03.internal (MEProxy); Wed, 29 Apr 2026 05:35:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1777455300; x=
 1777541700; bh=xctR9ZNAUKqbPu11yo5cMMsj9hUwz8Ko5NoLApkNrto=; b=z
 alnqAQPKJi4YK4AwuVEKfrCWk4TKxAcfgvAbnHN3k1vRaMZDycNWMxhrtkgatSCt
 dKKu+1Z6fu4lJA08Wo1TcgOh6WIk12K/ovwbQzsVWTmGaGSx3LwpDMwqhN1HvWv4
 ip1fFQQCEMm/ac1oTrZ9soFAqhRCE61HPf+Rh4Zsg5yX5rePRtACN7G/G5lNYXrZ
 OnblkVXz5GLBWoycdwTWtR/2gqhfU5HHK0dOV8D+fscI05OibJ6u0BlIxMfKgQjU
 nCCo6CS2WdypIOUBBTizCBqwBDgjXsWQdXHMCdn8RLlDUjV7kYVZW8gO0nWkAtBQ
 ftrV4pGlxZZWDLtDA0v1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1777455300; x=1777541700; bh=x
 ctR9ZNAUKqbPu11yo5cMMsj9hUwz8Ko5NoLApkNrto=; b=r/qTv3CDjSRqNfDJq
 d3LbQtAAr3jNV6kA1my+7BlzzirYb/04uIW13pRMbsqp9PvvKQe50YHYV2cJi+iJ
 WVoaG3NLr8oJm6R0wmJtDYy33/EfOtwLX6Qx6AW7jPDJuDpot2B23v4qatV8yXDS
 a2btbgmolTqa8GeKx2HEnfPJRvJt0PoV4smy84+PDJ0yAZfv5P2LiVAryt4kJ4wO
 EyXehZ5/UO+1ORFwOxv29J3ApQh44cObrL+L9mBrG/iSuqPmGdbcBb+unhWtN//G
 bQJMNKnAUH+Nk5a5DjZRhOtQR8TFv/IFEw5o5KuDh4cTrPSJDbNEBAVc1uaGEtZA
 1WBwg==
X-ME-Sender: <xms:xNDxaURoCq9Sg8h4xapDasCN2yx8RcKKAN5xznGyKwWXT7G-JafGHg>
 <xme:xNDxafmK69AWAqVFnv1IknVanARcPIHYDBgMlZpDOlFE5B-3h4oVyQBlKCAgywq0J
 i4RIE7lop42yJg4qALLwjLzBKNwjw4FFue1jDPl99jG0X1cuW0IPc0>
X-ME-Received: <xmr:xNDxacQX80s9oTCq3QzSijv_o_NR6zJToPzteQ_W0nB8lUGGtp0VByBF4T47j1-avX2O5cyFDSgJAXoFhPJ3Si5RRDHrE-wLgB4ds-wl8l9u4g>
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
X-ME-Proxy: <xmx:xNDxaVOEIe0_TDtlluXaO1mpDmVs_ZuE86uOJbeE1bN5G7hleYQjGg>
 <xmx:xNDxadX8lpLxbPAoj7ZNOrJ1IxkngisL4ibPNddeMHhl5XvuADTlig>
 <xmx:xNDxaUfr-fYphieC-vbobtlKTl3tboQLFEYpCHJsdPBhPlYAhmxQzA>
 <xmx:xNDxaRuKUcwfQAsAutLuhkIDXrfcInSglsjq4pfy64jlETWiDo3JWg>
 <xmx:xNDxaVVRFzvNmdVOYSOeSYHTznYySpRVa-xT_dPQYrBCcxhT6LGnMxUh>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Apr 2026 05:34:58 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 4/7] firewire: core: split functions for iso_resource once
 operation
Date: Wed, 29 Apr 2026 18:34:45 +0900
Message-ID: <20260429093449.160545-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260429093449.160545-1-o-takashi@sakamocchi.jp>
References: <20260429093449.160545-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
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
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.168.172.144 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1wI1K4-0008M8-Fn
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
X-Rspamd-Queue-Id: 56FED49205E
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,sakamocchi.jp:mid,sakamocchi.jp:email]

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
