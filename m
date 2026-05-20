Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yO+OLHWyDWpy1gUAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 May 2026 15:09:09 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3664458E7F5
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 May 2026 15:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7A8qREIKHrIW4XSjgEgITf8Rh8FaFZxgyipckeo+8ZM=; b=Vd5T2Xu1lnKM1cuTLwUizX8ure
	M48QioYCfIH5bDaSj2waQwiqXlYK8Gof46Rrj2+hahBNrTk3qiFRbPKvxF1OS3aVRI6Tl49VUdJYP
	q/UGUCgBZ2qXABkAK3Y1t6XVkVjN+/aYLqGMfMf7Y7BC9EsDhxPk4VTvnrxNxhjeV8c4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wPgfW-000408-Cm;
	Wed, 20 May 2026 13:09:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wPgfV-0003zw-J6
 for linux1394-devel@lists.sourceforge.net;
 Wed, 20 May 2026 13:09:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rwW8SQDBFIALgcLEwKZ2NL/cvNUx1fIvpUey+ISdpmM=; b=aBeCHWtMtvlIZZ3TUF3RbPqeiX
 jbVWFZGzPcbtR5XVpIuBG+erUMJyXiJAHpYCYiSq5zc3bSFQZTCP9GneKoq6v4haD4mflYbiwBD3u
 YV6r4w3hHHE5y6U4MPjNn3F3/E+f7jMcuyx8rM5YfDhExk0tsukXyeO92OnfCgQLxi8E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rwW8SQDBFIALgcLEwKZ2NL/cvNUx1fIvpUey+ISdpmM=; b=beQSN4CUQVQPcvSRCAFex5/t9J
 WZbqqja6KCIF/VgoHdIbrYc6+AeVX9M6NrAA9gYUj4xYldVkQ7cPGWM2dX8ir13oMOPd/q8ycEdi7
 04uUgF3aWp8vL3LSVs8ayWsWljUyNzU4u4wtNZ2yOfYJVqKwWrvJvIfKyij4KW1vxJsg=;
Received: from fout-b8-smtp.messagingengine.com ([202.12.124.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wPgfU-0000Dt-9b for linux1394-devel@lists.sourceforge.net;
 Wed, 20 May 2026 13:09:02 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfout.stl.internal (Postfix) with ESMTP id 49A0F1D00155;
 Wed, 20 May 2026 09:08:50 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Wed, 20 May 2026 09:08:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1779282530; x=
 1779368930; bh=rwW8SQDBFIALgcLEwKZ2NL/cvNUx1fIvpUey+ISdpmM=; b=y
 JZ17CyirrF4zvJfQ0myT3x2czPi0Uke0Jr8q+Ko2e22Vh2Eq+5fd2Mt0spQ/rbvU
 9K2gsUW5RnpuLseDEpCRt5fWARxiR9BpHuNPHnSjnbkfppGAq4GUOnvazNXudIfb
 wA5/WNLBqiGfrABdK0amHqelhkLqh4dMSKs5zcrAElhcNvskGYKAdyj+zBTri4k+
 QFgWbklZdmLzXy5VGDMUaqj4GqRhXqWKOydIUcSEFw8WUquIWQUYRgN6nn7+cifM
 /NdLTebSf81eVwjD1J0KdwhCiV9hs3zeiQ+Ut0rarVZZBs14xnA+dCe2mtHhRg4p
 4kxwR3C2xMiId6xIvi/6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1779282530; x=1779368930; bh=r
 wW8SQDBFIALgcLEwKZ2NL/cvNUx1fIvpUey+ISdpmM=; b=u1Ri1kG2opQLLuhUn
 UYK/Bg1yFMJkmBi/qdAUksRLKGv0nMODdN9FVShxtcbzBij/8hRdmoe3Hc1HHi2q
 vTNRMBMbb/kDpKF4BcSBk/6UZZG8hInWwnu6ArC3QqvobfWU8tMhHkczTF8RoSlR
 q4PXj9IxeY+g7+Okv/YF7x+i4J46tHdyJTm21G+ZLQWA25LHgmjQ5PliZf5LzRDM
 wHX9xO06YQpAgrVcFD4L63ezmQL+mtU6M3jD1uHU5hCVHpKpDNodAm2pl0ZypVDY
 XK5PZkujgUMseZZq/3dNtzky9QMdDhvxaHIkFT+4cUHxKQH5WkufLXw/fTfAQhH/
 wUEUg==
X-ME-Sender: <xms:YrINaioHdYqG0MrcEDP_LXftsq-4UVtruic26nCxeI37g4Qd0VXqEA>
 <xme:YrINaukR1kaCttlF2bl7UfLHFczeoHQNNm5VhhDwXiYxUdF5Cf-NIxVF6LXMHGYZ9
 OZZbm4PF5oWkr2j3heqRxfXcxBN3j4_8vRQMKxL0jtfIbHk1-bdkag>
X-ME-Received: <xmr:YrINauxzz_cikO0QBWA05WpkaD7rkLbcqDdGIZro-LsPe7gZUcKsNXaBXSjQFORiTn3ppm-sNUiePVz9AHGeArAuN_yohDa6rD-yoqER-D_R>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddugeegjeduucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:YrINaulOoghWoBq4BqgSM9x0G8k4hIazD5ArAqTRdbwIL_bT42mf4A>
 <xmx:YrINavehYSgQiKiTSZfhaOlhzQjA6gUFYthZp9N7KXwEYmFUqfPa_A>
 <xmx:YrINasrXmxx3kMz4qjCcWy_ACsX8E86Jv1A62HgQB1JElJzQLXoizg>
 <xmx:YrINal5l8ICeCMluDX7ovld3b2MEoy827oit00-LJYNU3mkaYJ1kcQ>
 <xmx:YrINapdsMQNGMx-RirGwTIFBmQ0714RtZTQ62YGsNInH59cX0L-KQtgs>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 20 May 2026 09:08:49 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/3] firewire: core: cancel using delayed work for
 iso_resource_once management
Date: Wed, 20 May 2026 22:08:40 +0900
Message-ID: <20260520130840.629934-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260520130840.629934-1-o-takashi@sakamocchi.jp>
References: <20260520130840.629934-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: There is no need to use deferrable type of work for
 iso_resource_once
 management because the work is queued to run immediately. Signed-off-by:
 Takashi Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-cdev.c
 | 11 +++++------ 1 file changed, 5 insertions(+), 6 deletions(-) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1wPgfU-0000Dt-9b
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
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm3,messagingengine.com:s=fm3];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,sakamocchi.jp:mid,sakamocchi.jp:email]
X-Rspamd-Queue-Id: 3664458E7F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

There is no need to use deferrable type of work for iso_resource_once
management because the work is queued to run immediately.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 56c21cabc20c..e49d8a58be09 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -150,8 +150,7 @@ struct iso_resource_auto {
 
 struct iso_resource_once {
 	struct client *client;
-	// Schedule work and access todo only with client->lock held.
-	struct delayed_work work;
+	struct work_struct work;
 	enum {
 		ISO_RES_ONCE_ALLOC,
 		ISO_RES_ONCE_DEALLOC,
@@ -1486,7 +1485,7 @@ static int ioctl_deallocate_iso_resource(struct client *client,
 
 static void iso_resource_once_work(struct work_struct *work)
 {
-	struct iso_resource_once *r = from_work(r, work, work.work);
+	struct iso_resource_once *r = from_work(r, work, work);
 	struct client *client = r->client;
 	struct iso_resource_event *e = r->event;
 	int generation, channel, bandwidth;
@@ -1505,7 +1504,7 @@ static void iso_resource_once_work(struct work_struct *work)
 
 	queue_event(client, &e->event, &e->iso_resource, sizeof(e->iso_resource), NULL, 0);
 
-	cancel_delayed_work(&r->work);
+	cancel_work(&r->work);
 	kfree(r);
 
 	client_put(client);
@@ -1525,7 +1524,7 @@ static int init_iso_resource_once(struct client *client,
 	if (err < 0)
 		return err;
 
-	INIT_DELAYED_WORK(&r->work, iso_resource_once_work);
+	INIT_WORK(&r->work, iso_resource_once_work);
 	r->client = client;
 	r->todo	= todo;
 
@@ -1539,7 +1538,7 @@ static int init_iso_resource_once(struct client *client,
 	// Keep the client until work item finishing.
 	client_get(r->client);
 
-	queue_delayed_work(fw_workqueue, &no_free_ptr(r)->work, 0);
+	queue_work(fw_workqueue, &no_free_ptr(r)->work);
 
 	request->handle = UNAVAILABLE_HANDLE;
 
-- 
2.53.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
