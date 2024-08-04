Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 79296946EDA
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Aug 2024 15:03:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1saat4-0006Vk-L5;
	Sun, 04 Aug 2024 13:03:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1saasx-0006Uj-Fp
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CAposS/X5iD+uiuVXyMO8x9mAy4UkjQlQ0BVV7Nspq0=; b=NAEy1PQ/xXY3l5KUPIE80FoxOJ
 aNRLCV+NgoiBDvb4I0nlmXMLQWmQX1Jts64FBpTGpfyn21MEK2kBrUuwz2j38CYMbhlJdmG+bhF+w
 lOlXYKxNhL5GCxhmEjyB4SUMcgaftNcHl3sFTKGxB/YG6pfuTa+/17pWykJKqjgq3eq4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CAposS/X5iD+uiuVXyMO8x9mAy4UkjQlQ0BVV7Nspq0=; b=K0omExRSdgUcljP/pPOVx/eklg
 nW4OSK/LefKgodi+W5PVBzufqZxSzyDdXoZdx/SlK9AFRxcJikFe+tzpHsvfphcXTVcj9VfCdlm1m
 AaFp+WvSqPCJTuIV/e0kHSRxQX4y5PV9LlBPDGbYoJ00nM56mErNQG98dEUZAi7IDX+M=;
Received: from fout3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1saasw-0001Ea-Tu for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:55 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfout.nyi.internal (Postfix) with ESMTP id 5A54C1388033;
 Sun,  4 Aug 2024 09:02:44 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sun, 04 Aug 2024 09:02:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722776564; x=
 1722862964; bh=CAposS/X5iD+uiuVXyMO8x9mAy4UkjQlQ0BVV7Nspq0=; b=m
 1VxmdCpR5B92ufIdj30S9Vp5Vp1uDmMXYuxzOQGsq2nPpcscHeRjmJ6ull63MvwY
 q+j/wgCU263ClEi+B/Y13eSrAIeq4vO/1bUBjt8/bL32T8BTF+U1/9eN0NGPeaZi
 lov3HfIuU2Fh4AkDkhIJWvI/ic1M6oeM1F4Q9pZAApW/nmbi5kGlF1zmxJPqS0Jw
 GF3twUGPao7pUqJ9eH0tAMCHzwWtlLTd3IZK+Jdy3NkjrSB/WWExMlUJK3mtnp9J
 VXJEh0D3u49VS4xcJZQemHzSqH6ZFkTyjDxkl8zY28/MDE+1bNjnpadtqhGBL4sS
 GXa/ERDhxdeIqS6YjyXYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722776564; x=
 1722862964; bh=CAposS/X5iD+uiuVXyMO8x9mAy4UkjQlQ0BVV7Nspq0=; b=R
 CRizvaMLeFGcShVXHNZWTW+0DXkUQbKv/tkOnZL7mLYx9lE/3zyR+hHzbsK6tVv0
 P9dhJOLXFkAaKg3Yct512qbMvrJD59GL5cR+gkGiVuopTRqflJTeKBOmOO8c0th0
 PvhJ5kai5haN3CeH71cBW/ootmLYT7SMFgHzQQprRz9bofGTkbutqaN/TcMgaw5V
 eIRg4yU4Sbma+HlYyExRrEVwJm/As0NG0p+awti8MP0X+DCls0NYdZgPU4Y/vl+n
 tZMTD0eEzcEUnL8GJ8JQS30poNs59iPlc/swOfTnXO9NPTK7yjPdB7JDBzqxQmVe
 XRXF4p3Li1UG74n4qUtLw==
X-ME-Sender: <xms:9HuvZnMSGjecfLQIPPeT1uzJuV9xDZ1HczQoWCbXAWHQq1QluDHvnQ>
 <xme:9HuvZh9Jp-Ykv2xq-bLN0fe4vE1kNZczJtWkSVIJ5j6Yvbb0xa4cMFQI7V0fXjQYu
 bOCRxmttOTcBeejK-4>
X-ME-Received: <xmr:9HuvZmRU4MJLfaRL_a18URWHCgYH5YLRkh94B23tlBuASQ5aZLF2k6uaeEAYAByPTGHagE7DF6iwQ5rvRMVQL8Csfklib_enFRIijQc80Fipzg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeggdehlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgepfeenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:9HuvZrsyaU5vYcf10I_FgxJ_KZAtwaSG-KSjlO8ro96KWcJJJVpdkA>
 <xmx:9HuvZvdfBhFEt3tIi6ZQa9nDgHOI_sC_rrdVhzDd0MbjZXUZW_PzVw>
 <xmx:9HuvZn1iiSQNB1Q0ydFBCq4BCqjaqRZ8NOb_8TbefNs6CJNRkRHtEQ>
 <xmx:9HuvZr_O1KCdupup_ARpKg3fBQagaROWrdoCqnfItajL9CLoktOy2Q>
 <xmx:9HuvZgrV6isEDddZL_jnuq9SZoao2VKnhG71fKcaB54vq_qUBgFz3uEx>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Aug 2024 09:02:43 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 11/17] firewire: core: use guard macro to maintain isochronous
 context for userspace client
Date: Sun,  4 Aug 2024 22:02:18 +0900
Message-ID: <20240804130225.243496-12-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
References: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The core function allows one isochronous contexts per
 userspace
 client. The concurrent access to the context is protected by spinlock in
 the instance of client. This commit uses guard macro to maintain the spinlock.
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in bl.score.senderscore.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.146 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1saasw-0001Ea-Tu
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

The core function allows one isochronous contexts per userspace client.
The concurrent access to the context is protected by spinlock in the
instance of client.

This commit uses guard macro to maintain the spinlock.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 25 +++++++++++--------------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index c2d24cc5c1f1..ac6f9ad9e88e 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1062,10 +1062,10 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 	if (client->version < FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW)
 		context->drop_overflow_headers = true;
 
-	/* We only support one context at this time. */
-	spin_lock_irq(&client->lock);
+	// We only support one context at this time.
+	guard(spinlock_irq)(&client->lock);
+
 	if (client->iso_context != NULL) {
-		spin_unlock_irq(&client->lock);
 		fw_iso_context_destroy(context);
 
 		return -EBUSY;
@@ -1075,7 +1075,6 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 					    client->device->card,
 					    iso_dma_direction(context));
 		if (ret < 0) {
-			spin_unlock_irq(&client->lock);
 			fw_iso_context_destroy(context);
 
 			return ret;
@@ -1084,7 +1083,6 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 	}
 	client->iso_closure = a->closure;
 	client->iso_context = context;
-	spin_unlock_irq(&client->lock);
 
 	a->handle = 0;
 
@@ -1806,16 +1804,15 @@ static int fw_device_op_mmap(struct file *file, struct vm_area_struct *vma)
 	if (ret < 0)
 		return ret;
 
-	spin_lock_irq(&client->lock);
-	if (client->iso_context) {
-		ret = fw_iso_buffer_map_dma(&client->buffer,
-				client->device->card,
-				iso_dma_direction(client->iso_context));
-		client->buffer_is_mapped = (ret == 0);
+	scoped_guard(spinlock_irq, &client->lock) {
+		if (client->iso_context) {
+			ret = fw_iso_buffer_map_dma(&client->buffer, client->device->card,
+						    iso_dma_direction(client->iso_context));
+			if (ret < 0)
+				goto fail;
+			client->buffer_is_mapped = true;
+		}
 	}
-	spin_unlock_irq(&client->lock);
-	if (ret < 0)
-		goto fail;
 
 	ret = vm_map_pages_zero(vma, client->buffer.pages,
 				client->buffer.page_count);
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
