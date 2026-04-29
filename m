Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCk6Ij+s8WmGjgEAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 08:59:11 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 288F249014B
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 08:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C7rEiSZ2+FH8v2SRwZht21QRBN97T4FKd3CXidbHpRM=; b=L8vf/zOOJrmr/X5Tf3lML8Dch3
	KCGXjHE1QplgPFrIAbcSQ/ZPqDp6SnxdlcDnNbGr9Ejlss07RoXUELLj4GkcoiQA4MS7ogt0/2fqE
	uApHTwATjcdQvVRaPiwk42pgRfFnLDn7ACBx9yoHYr03VcM4dIa9K86eS/WznKn6kQLY=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wHysx-0000tI-NB;
	Wed, 29 Apr 2026 06:59:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wHysw-0000t8-3b
 for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 06:59:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t2AJD7aqTYWwry01+yWFnn6syfnaMGDFOvYniO+xe8M=; b=HttjAMw6J033P5TV91JB+i2J7c
 ouc39vfrZp8owbKtDMe0mtNUJCSwzGngeVNGVSQm6jTp+HsW0AY2d9elQq3GdqRmlc3xRE1832LOR
 kpdk9S3RKH6uGMVpak9Lid/QyEd5uZd2BZPf1rbNqZbnafwUgZ8d893AufveMiJMhPD4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=t2AJD7aqTYWwry01+yWFnn6syfnaMGDFOvYniO+xe8M=; b=aDJ9dsg47O0nG57J29qwI/fUB1
 o/gr1MTFfTqoBbunR3Bxd4DApZle9BT/O92IrwCk63glOQbQ1ewqLVoLofqKVVXzBpL8U4y7q8lUJ
 ZHVETM6GKoZdmznEoxmDB6qsMkgtJt6OO4ULU2V01MJ2L1JziWQ5APmgjHLgm+x9KV6k=;
Received: from fout-a8-smtp.messagingengine.com ([103.168.172.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wHysv-0004Xz-73 for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 06:59:01 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfout.phl.internal (Postfix) with ESMTP id 9217CEC0189;
 Wed, 29 Apr 2026 02:58:50 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Wed, 29 Apr 2026 02:58:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1777445930; x=
 1777532330; bh=t2AJD7aqTYWwry01+yWFnn6syfnaMGDFOvYniO+xe8M=; b=j
 xghnglnUYlq2u5RvBo+OXLIA4zvQim9P+dMf/P3bEOOaLZ64wYhQIS9FrOkRlARA
 wwuIsqfH2YufypUBwZj4oiHMKQaZh2JhttTkFCNT2u5+ib9VywUb6DwuwPo3xPZN
 7llNqGaJOAM3XXR+a0Sbf37fkqAtVD/489urW6HpoIst47eF7zfG15UZOYmGq4Mr
 kDd1ylCIcsBFAOb0rnnpdAXM19AGNJqYzeJH+Ok+NV3M4wRPsOOBiOnyX4vtrhzM
 ha7nf8iJta9MXrh0DWyJeZgVrtS8HEmZTZlIurnfGAg8ty3Q41EkS05Vr/pASCVM
 w0Rk8xCEZOYeteSfEOPyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1777445930; x=1777532330; bh=t
 2AJD7aqTYWwry01+yWFnn6syfnaMGDFOvYniO+xe8M=; b=oRCIE/VXFA8WKF6Po
 /STPbjm8qwIGMeA0bb5GKvIBDxqn9cSLcls3CPqR/yNZ4Xq5xquH96o/2tF3Gyq4
 va9RJrfB09M+uQ5Zm02gt28RGxhZZGvSsnjVL2+goESgAWZaQu0zN0bGu7WJQ7x1
 Oyws6Loe9/i7/7BAlS02C8EeTVhLnXDq2Bbsq0X+JxuhEB0uUcvmHFY93tQKVS7T
 gE66cAoWBlO2fWK4Qi9NbcRnp+MQd/K8tGp0OoJBSRmvDu7nNT015f/mI7nsS1Hg
 trBqMFAgkaH1LClRJ93vjrrxy3zjT+8QBVyX0OuDzkO+A5X1MZgINvHcoF1V22gO
 D6oig==
X-ME-Sender: <xms:KqzxaX_-H6r97Ywdn2jm6PvbB3kmrR1l8NneElKJD-gNSy2Skwgb4Q>
 <xme:KqzxabJtK58JN5Dx7ZMFgfF3cXnAwS9F0KI1WsXs0dWVf3cAIm7TqltwUYBKoLgin
 jU1uWuuKPMCfI81VZXeHwzjnONl3swPiCe6cdYiORiq8Yn49fLr4Wrm>
X-ME-Received: <xmr:KqzxaSapoXpSQIQK8pvqBKSB3UT8_bo-asmcmnG9OAUIj_TJR4iKO6POxtshTnpgapsN3DM0LJNJ7o3O7UVUU6nvgFn0ZYYa6qo0Khg7nND2aQ>
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
X-ME-Proxy: <xmx:KqzxadKsn0DBkOJI5840mAFWkPt89q7aQ9HG6lJu58Eq2KuTdV5zjw>
 <xmx:KqzxaQC9OtHYxfqOGOcFvjz0VLX8-Frki9GBTy3v3ALOrHTxK_GZxw>
 <xmx:KqzxaSr6YSItBk-vt5AMmsffnNOyhybduCZDx1709z4EZc7bkww7Ug>
 <xmx:KqzxabhJBCPu9fgt6E_Y4OL5SmACD8aotsVpkouaACbU7sU9Vpgi_Q>
 <xmx:KqzxaWLKdlpavGZJWhfbZDQYkGTGvx-H81xHzG_9GW-nXhdIIVB2TbFz>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Apr 2026 02:58:49 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 7/7] firewire: core: code cleanup for iso resource auto
 creation
Date: Wed, 29 Apr 2026 15:58:36 +0900
Message-ID: <20260429065836.155820-8-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260429065836.155820-1-o-takashi@sakamocchi.jp>
References: <20260429065836.155820-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The init_iso_resource function is only called by
 ioctl_allocate_iso_resource(), 
 thus no need to be unique. This commit unifies them with minor code
 refactoring.
 Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/core-cdev.c
 | 53 ++++++++++++++ 1 file changed, 20 insertions(+), 33 deletions(-) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1wHysv-0004Xz-73
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
X-Rspamd-Queue-Id: 288F249014B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm2,messagingengine.com:s=fm2];
	MIME_TRACE(0.00)[0:+];
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

The init_iso_resource function is only called by
ioctl_allocate_iso_resource(), thus no need to be unique.

This commit unifies them with minor code refactoring.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 53 ++++++++++++++----------------------
 1 file changed, 20 insertions(+), 33 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index b3ce34d777c3..bcfb20b770df 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1424,23 +1424,20 @@ static void release_iso_resource_auto(struct client *client, struct client_resou
 	schedule_iso_resource_auto(r, 0);
 }
 
-static int init_iso_resource(struct client *client, struct fw_cdev_allocate_iso_resource *request)
+static int ioctl_allocate_iso_resource(struct client *client, union ioctl_arg *arg)
 {
-	struct iso_resource_event *e1, *e2;
-	struct iso_resource_auto *r;
-	int ret;
+	struct fw_cdev_allocate_iso_resource *request = &arg->allocate_iso_resource;
+	struct iso_resource_event *e1 __free(kfree) = kmalloc_obj(*e1);
+	struct iso_resource_event *e2 __free(kfree) = kmalloc_obj(*e2);
+	struct iso_resource_auto *r  __free(kfree) = kmalloc_obj(*r);
+	int err;
 
-	r = kmalloc_obj(*r);
-	e1 = kmalloc_obj(*e1);
-	e2 = kmalloc_obj(*e2);
-	if (r == NULL || e1 == NULL || e2 == NULL) {
-		ret = -ENOMEM;
-		goto fail;
-	}
+	if (!r || !e1 || !e2)
+		return -ENOMEM;
 
-	ret = fill_iso_resource_params(&r->params, request);
-	if (ret < 0)
-		goto fail;
+	err = fill_iso_resource_params(&r->params, request);
+	if (err < 0)
+		return  err;
 
 	INIT_DELAYED_WORK(&r->work, iso_resource_auto_work);
 	r->client	= client;
@@ -1449,31 +1446,21 @@ static int init_iso_resource(struct client *client, struct fw_cdev_allocate_iso_
 	r->e_dealloc	= e2;
 
 	e1->iso_resource.closure = request->closure;
-	e1->iso_resource.type    = FW_CDEV_EVENT_ISO_RESOURCE_ALLOCATED;
+	e1->iso_resource.type = FW_CDEV_EVENT_ISO_RESOURCE_ALLOCATED;
 	e2->iso_resource.closure = request->closure;
-	e2->iso_resource.type    = FW_CDEV_EVENT_ISO_RESOURCE_DEALLOCATED;
+	e2->iso_resource.type = FW_CDEV_EVENT_ISO_RESOURCE_DEALLOCATED;
 
 	r->resource.release = release_iso_resource_auto;
-	ret = add_client_resource(client, &r->resource, GFP_KERNEL);
-	if (ret < 0)
-		goto fail;
-	schedule_iso_resource_auto(r, 0);
-
+	err = add_client_resource(client, &r->resource, GFP_KERNEL);
+	if (err < 0)
+		return err;
 	request->handle = r->resource.handle;
 
-	return 0;
- fail:
-	kfree(r);
-	kfree(e1);
-	kfree(e2);
-
-	return ret;
-}
+	retain_and_null_ptr(e1);
+	retain_and_null_ptr(e2);
+	schedule_iso_resource_auto(no_free_ptr(r), 0);
 
-static int ioctl_allocate_iso_resource(struct client *client,
-				       union ioctl_arg *arg)
-{
-	return init_iso_resource(client, &arg->allocate_iso_resource);
+	return 0;
 }
 
 static int ioctl_deallocate_iso_resource(struct client *client,
-- 
2.53.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
