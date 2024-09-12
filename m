Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D145A976A9F
	for <lists+linux1394-devel@lfdr.de>; Thu, 12 Sep 2024 15:31:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sojuT-0000IB-0j;
	Thu, 12 Sep 2024 13:30:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sojuR-0000I0-3L
 for linux1394-devel@lists.sourceforge.net;
 Thu, 12 Sep 2024 13:30:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rglo+/zDD6Nc+U+Znu+G2W2jETHltYG2U4iySeRHtms=; b=m5m42rRUBo3EedS3ERJgAi3XV2
 V0igE0klqen/rNHN4VTMIMhm18s88+KuuuebYM2FM9I2qUlCq5qpIiwzJYpTzGLmFrRvxw6x7BhdJ
 u/XtN7XiUslBSqzWqHDN3ze9u2+dZN3ZSWRqiNpMd98yP6TD0W+nmWmiahin5kNx+6Sc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rglo+/zDD6Nc+U+Znu+G2W2jETHltYG2U4iySeRHtms=; b=auuVhgQ067zCyynbJFubkdgab3
 35DAKzkm3mNFMrouimeB0KTw3PbAFHRY/zjbUrTcWl0FAn7C4mg2neJcJPbM4HhNDuGGrdj7XcDG8
 Gu9Y0jl7sA6r+MKO8icE+2FiDy5ItjvqewTVekHBAiaZQUwuWE9RKJo6HvUVKucHtuxE=;
Received: from fhigh7-smtp.messagingengine.com ([103.168.172.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sojuQ-0000Xe-By for linux1394-devel@lists.sourceforge.net;
 Thu, 12 Sep 2024 13:30:55 +0000
Received: from phl-compute-08.internal (phl-compute-08.phl.internal
 [10.202.2.48])
 by mailfhigh.phl.internal (Postfix) with ESMTP id C29661140502;
 Thu, 12 Sep 2024 09:30:48 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-08.internal (MEProxy); Thu, 12 Sep 2024 09:30:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1726147848; x=
 1726234248; bh=rglo+/zDD6Nc+U+Znu+G2W2jETHltYG2U4iySeRHtms=; b=V
 cXEnawU6hWxOCfg2MeJrzYLGRwY4mHObAOt4NW9QiUJ9CY8G51aB/iAhQJpFGpC3
 Jb7kQTyp48A0NhOuFP6UcMDHmPNNPRk9tvvq/hBz5iXh5KpAKvtDU25tVYzOLajv
 q+t03gTwscWaX05L4yW03CDlS53XB/x3nEkhv3lnuuqo8vr3DKzDLrDL8+UXNtFC
 pz8YXXFxxSKPykjknpS8bEQI+vGiGDJ0Irk0SnrRoY5V4ykm/7cnLmXX+TkymGz8
 J1YzpKJlDtuPjTZA7PrJTNviEQLC/+Vr7ptNf2lH4PEER3LRcMclSccwHgd5jcBa
 LNAQZVpLuLzlThe/Y1hyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1726147848; x=
 1726234248; bh=rglo+/zDD6Nc+U+Znu+G2W2jETHltYG2U4iySeRHtms=; b=k
 lM+J1JuGWMvqMOt17zEf3Uf+HighWYqbfzHT/swfZEUflUmY4Vuci+HORf9OIW8O
 xNqz6piQFR8SXgRC51Wu9sz/d7riTzqGI2JBx1sHEznC3cZiamZ7KOrMhlc1C/ul
 x+mXIsgLjK/OKi7M7ULWka/1ahYeClZi8NEjJJSJ8U0yr+oA9dWYVpALjPUK2D53
 LP4Z6Jx/nZTz7c7IdWeHP3oqCreAk7gi8HjIhnTCl9LGzJU3aM0F9DyFqsHhiim2
 b/7RKhEQpBRIZKA15XYPNP2cFineOGzymUPpZb51J+9nGch6mybuFbJU+1jgeAjN
 SyAcNuYjGNLCSexpGGHEw==
X-ME-Sender: <xms:CO3iZtTjWLOWDQ2nAOTccjlukJD415ee209KmOzya7oH7wXCoGyq6A>
 <xme:CO3iZmyV72DR4YGo0qrqq1cCc2kVcZi4V-y_AcchumXL0V7V23kG4QEFNMm-kkrDo
 e2aSXG9X_WZsXpnbC8>
X-ME-Received: <xmr:CO3iZi3_MeVe-lZ-qMV0an9qR5FG_rGuy3rxHiFqHa2kt-l8W5dPlComkXwg-jjm4LcNqUHGxeM-Soby5SvFqSzAJ38-IzCxFmGjuxiFlm_SnA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudejfedgieeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpedvjefgjeeuvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdff
 kedvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedv
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:CO3iZlCA6wnmIeN_dd_3MTwyi4V1ldzsddN8m7g6CalxITYgjsqQVA>
 <xmx:CO3iZmhGkbSbG1fopeYTnzDMehGKBw-JXun4ob-y4kOUlZHxu1yFvg>
 <xmx:CO3iZpoG4_9zuliVWlkfrLGU_aVF6BEK9kZEPZikDLfYga2qB5jJEw>
 <xmx:CO3iZhi9LQDW3kSo2YYq2rCFCYjk8ALaOEZ0O0RNIMYMyYnCMAIVKA>
 <xmx:CO3iZpu4RwOZzMOJJAXCwJ5z9KEr-iIfMhb5WhaXyGj2EF-zhNjthDpW>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 12 Sep 2024 09:30:47 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/5] firewire: core: add helper function to retire descriptors
Date: Thu, 12 Sep 2024 22:30:36 +0900
Message-ID: <20240912133038.238786-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240912133038.238786-1-o-takashi@sakamocchi.jp>
References: <20240912133038.238786-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Both IR/IT contexts use the same code to retire completed
 descriptors as AT context uses. This commit adds a helper function to reduce
 the duplicated codes. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/ohci.c | 45 +++++++++ 1 file changed, 9 insertions(+),
 36 deletions(-) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.158 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1sojuQ-0000Xe-By
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

Both IR/IT contexts use the same code to retire completed descriptors
as AT context uses.

This commit adds a helper function to reduce the duplicated codes.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 45 +++++++++--------------------------------
 1 file changed, 9 insertions(+), 36 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 3a911cfb5ff3..4af4c9af4fe4 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -1141,9 +1141,8 @@ static struct descriptor *find_branch_descriptor(struct descriptor *d, int z)
 		return d + z - 1;
 }
 
-static void context_tasklet(unsigned long data)
+static void context_retire_descriptors(struct context *ctx)
 {
-	struct context *ctx = (struct context *) data;
 	struct descriptor *d, *last;
 	u32 address;
 	int z;
@@ -1182,45 +1181,19 @@ static void context_tasklet(unsigned long data)
 	}
 }
 
+static void context_tasklet(unsigned long data)
+{
+	struct context *ctx = (struct context *) data;
+
+	context_retire_descriptors(ctx);
+}
+
 static void ohci_isoc_context_work(struct work_struct *work)
 {
 	struct fw_iso_context *base = container_of(work, struct fw_iso_context, work);
 	struct iso_context *isoc_ctx = container_of(base, struct iso_context, base);
-	struct context *ctx = &isoc_ctx->context;
-	struct descriptor *d, *last;
-	u32 address;
-	int z;
-	struct descriptor_buffer *desc;
-
-	desc = list_entry(ctx->buffer_list.next, struct descriptor_buffer, list);
-	last = ctx->last;
-	while (last->branch_address != 0) {
-		struct descriptor_buffer *old_desc = desc;
-
-		address = le32_to_cpu(last->branch_address);
-		z = address & 0xf;
-		address &= ~0xf;
-		ctx->current_bus = address;
-
-		// If the branch address points to a buffer outside of the current buffer, advance
-		// to the next buffer.
-		if (address < desc->buffer_bus || address >= desc->buffer_bus + desc->used)
-			desc = list_entry(desc->list.next, struct descriptor_buffer, list);
-		d = desc->buffer + (address - desc->buffer_bus) / sizeof(*d);
-		last = find_branch_descriptor(d, z);
-
-		if (!ctx->callback(ctx, d, last))
-			break;
 
-		if (old_desc != desc) {
-			// If we've advanced to the next buffer, move the previous buffer to the
-			// free list.
-			old_desc->used = 0;
-			guard(spinlock_irqsave)(&ctx->ohci->lock);
-			list_move_tail(&old_desc->list, &ctx->buffer_list);
-		}
-		ctx->last = last;
-	}
+	context_retire_descriptors(&isoc_ctx->context);
 }
 
 /*
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
