Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGXsFfHQ8WlrkgEAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 11:35:45 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4484492070
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 11:35:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C7rEiSZ2+FH8v2SRwZht21QRBN97T4FKd3CXidbHpRM=; b=kkZTV3yRyD+ujEZYOHtZs0tqJD
	pDJzUt45DCAwFTZSwb8g2K+RJq1SsNk591IZQ8x+BB8nxxMhSPSwsRqhyec+hfmpcI+Rm8LEWWZ8L
	AlDdD2GQSOui1PzsKVUPkbxamffaC5jyWGewzZbVXvD8YYXevLhmJT16wGV26vyNf74k=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wI1KU-0004To-RJ;
	Wed, 29 Apr 2026 09:35:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wI1KA-0004Sw-RD
 for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 09:35:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t2AJD7aqTYWwry01+yWFnn6syfnaMGDFOvYniO+xe8M=; b=CJxvFDEpxGCNUux+IK9h32feqX
 gdr8Yb2uDbGuUYTwIDpa3VaYkgNvwEOTLFXKkS6PT6OpGHgjIGsxkrRm1O4mH7vAQlvZnkP3RylPF
 0naHBAFHI5www2AUIvNpMvP77xX+1hQ8li0OVAOIdgdjTkGvdZadJpZEzmGOIb+U0jIA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=t2AJD7aqTYWwry01+yWFnn6syfnaMGDFOvYniO+xe8M=; b=Rhm6UCdAYfQkB6zXVbJ835Lz2u
 y1nmMBUy0M0WAGCXUijnFa4kBw1LIcuO5m3idrny7Qi6dTDke5+UP7o0J3kKAiBF//pleHlw+pwb3
 din3rxX5uAp+ozcn+MZY2CY4th14mYh3uFO7tz8g0zfxdcRWTX7fqFA10sWKBazN201c=;
Received: from fout-a1-smtp.messagingengine.com ([103.168.172.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wI1KA-0008MX-4R for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 09:35:18 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
 by mailfout.phl.internal (Postfix) with ESMTP id 77993EC018B;
 Wed, 29 Apr 2026 05:35:07 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-03.internal (MEProxy); Wed, 29 Apr 2026 05:35:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1777455307; x=
 1777541707; bh=t2AJD7aqTYWwry01+yWFnn6syfnaMGDFOvYniO+xe8M=; b=Y
 sfCGQ169IdtzULatD1y6FITSW+IYeLsZlyHCkZVXMCt9fw1ycTVx6fgy94s7/o0x
 oPGEpf3rRhXKYqoiMG3euIWplpho4lye7eV4WdoZY8a9E6nReDSJfyxMOCHueWma
 N+091X9avGYpnsdpiJPVZDKUL2mTHPrIAqF13m4muSdIkqB/iJmufh74/nehFKln
 3diFIqzlToM23kYA4IqjymqYxzLdme2obw7v9HQfmM5LRO9XkoQhzl4wcINTdOe5
 VbEtq3nEJssTNS6hDhZprGl1iv80tkecPjvrYmi+pZ+n2qHcagEeBQ9N8KarHvEA
 /WyW51g22lHoCwb23JasA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1777455307; x=1777541707; bh=t
 2AJD7aqTYWwry01+yWFnn6syfnaMGDFOvYniO+xe8M=; b=n4+N79tBDb/nyc+3J
 YssuewLM/aLZGp2BU/Ak9K8gWW2jEFZXkl6rWuxeFIlHLiEovGk86YIMlRN2lyxu
 9vM7FUTjl52MGcb+PRD0Dvqab3MpWiSIsEKQl05JjfVSuCYCBZ2eVZWfq9mLn7Kp
 bvvPIuycF5jFHXbTomi/8U0gnUlepSps7iH6elZDQBCfIBX82stj1cH6+PfI4HV+
 /P4CtjJ5Nsl6vsT2PcxLdmr3ZAjM7AJoal8h3awe76hRI/YhXtyRyumgaZ3728b3
 TPYk4R1VO8MU15ntErjU1HwB2rjTFwphCssaqBVvepiQpz6J65Kwh1IcWpfYw+r6
 YLrew==
X-ME-Sender: <xms:y9DxaUfAY4DP1uRAvGP2nWwM8sig4uxBKtOgUkD20wx7cdCd4lvcfg>
 <xme:y9DxaUC2zPU_LNI4H07uBESsopbElSLztJ_ron1AJv5oSWs9jgK2vTHpCaMNu4S4a
 bvdtW6HpdkQ0Jiy-zrYw8g4f5qUm6vSJShCNXeKmOmZcMV0VBE6PA>
X-ME-Received: <xmr:y9Dxaf9OKMSKFWTTLU7mCAgzk96ru0cAtQ-D2SviUeQsMkME61Hkc722KMihbDKIf5hdy3_8B4MA7JAnjjP8K8GpX_geWdkGg_H75w8utHA2RA>
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
X-ME-Proxy: <xmx:y9DxaXIKzf__ncAAlg9hUe9jVlRTSDYU6sfyV5SW_0MH-zVLcGIz5A>
 <xmx:y9DxaQjysiYGyn2X7qcDU0VyG5pNUog059-iD6WwagqQCd-OU5L3nQ>
 <xmx:y9Dxaf4jMWovW22nJBMnuzG5-69-o0Qk7gMrkjLs8Iuwu4dU0P3z1A>
 <xmx:y9DxaQYafXJZc5H8MDTqI7k87e_LPfhpHArzb4JhB00rH77XNpyzRg>
 <xmx:y9Dxaejkeesy2R7mTGGcfa8Q7P-Ocsw8Dbe5NZ6_3z7-HmGr24DLj-s8>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Apr 2026 05:35:06 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 7/7] firewire: core: code cleanup for iso resource auto
 creation
Date: Wed, 29 Apr 2026 18:34:48 +0900
Message-ID: <20260429093449.160545-8-o-takashi@sakamocchi.jp>
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
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.168.172.144 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1wI1KA-0008MX-4R
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
X-Rspamd-Queue-Id: A4484492070
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
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sakamocchi.jp:mid,sakamocchi.jp:email,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns]

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
