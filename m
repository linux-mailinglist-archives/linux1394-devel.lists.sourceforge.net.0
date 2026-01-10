Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54ECBD0CBC4
	for <lists+linux1394-devel@lfdr.de>; Sat, 10 Jan 2026 02:39:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=97AiOMfTdDYjaiyKBqflrhcz2DK7NsYRj4AyY38mfXk=; b=kTeAeWjU0MjvwQP+i/BIvQFmBW
	rEE+8CRB7V8bYLD9GMTmyM0IzUS3PSGmWF8XUKw+7KdKpmogqlDEcIZ6xI+pwVMm06U/Xt1hNS8R8
	8cp3ktJezxOX2MaPGhfuj6XoKjRqtaJMO5zYXJgPrplhlU6iKmTSVrEzh5xdgfYRkLro=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1veNwz-0004BI-FU;
	Sat, 10 Jan 2026 01:39:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1veNwx-0004B5-Px
 for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Jan 2026 01:39:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H39eFB7dHZGvrVm7AcOydI1W4i68bG/6Nu3FCkdDSKU=; b=Ppk05mLPrU8jA08C/gs6nx27bK
 PYmnRQyxuGNXcGhYHh5H5hLwEiUpC81lOOgs9QWuc6kGf9nezuiTYURFOq6cG3GeIBm0mZCd8ROUf
 G8sA8ve7NY4Zl/XQewgGO3GlYfAVCDSEoT2aRrTo9rhwYp5FGc+2I/F0ai5kwFJ4wUQI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H39eFB7dHZGvrVm7AcOydI1W4i68bG/6Nu3FCkdDSKU=; b=LMN27+pyjb+NtM4a0+pTL8VMPh
 68zeGxwkuMjI9I9942y02o95kep4Z5/ovIUCFrBl/0k7kQYrcBQ2WIl9zONh8RezIt8NbSl4CX+gv
 4v4DFcYKzHe2XE7hT5EkrVxazxmRnB4m5kTOk6g44jL1IkG06tbmOu+T4Fx91CIz3FLM=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1veNwx-0000ff-6y for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Jan 2026 01:39:31 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfhigh.phl.internal (Postfix) with ESMTP id A8C191400100;
 Fri,  9 Jan 2026 20:39:25 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-04.internal (MEProxy); Fri, 09 Jan 2026 20:39:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1768009165; x=
 1768095565; bh=H39eFB7dHZGvrVm7AcOydI1W4i68bG/6Nu3FCkdDSKU=; b=N
 AcQgHG4+b7E6EH5WyT/6yDWqBb2gSPl4UZRb28gkKAIp2YfObOCrDhN82JK0wBYT
 76d3UvC0T+OSFCRoykh1c/2dj1D9uXzn7mdma0r4PhJ/Ugl6WXHqBSAqJoTkOduI
 vjgofIY7KuJSMGNOYd2+Mxs5SfbUkfdGbZTPZTavIg/0v9gYVEJ/hpUmpkkPYXeQ
 jyAwNUwNeN9TvkBQC3jjquIdGwOGxuqxf713PCqYy08tJzsKWzMSPNfzPq4t7aZ7
 ecUZMUKYTZPfe+1oLZX0rLI6307RzcIk1rtXJJ6PJSatmeBbrncR6nidSTME/v0o
 9tUjitpu4e8X8Kq7YoQgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1768009165; x=1768095565; bh=H
 39eFB7dHZGvrVm7AcOydI1W4i68bG/6Nu3FCkdDSKU=; b=QCPu9agAUfyE7la+/
 CMJTpxVd+RjcZhPTEShDbASoMa9c6S50jlQQkqN/RheoBBor/034JJgUq3dUrpvg
 dX4NnTOUuV1Y7vx470x8DDKnx5ceeNeDw6hbQw7zrmCB4iJR0eXNnPA3fn6oC0V2
 pcWFYrSaZCE3B3b3Nm6Nh4VTqCCJ1Onb0zrw+BER1rx9zR+8xHLDTPhuS2GmGvQO
 0daX4Wxj8E4IsjpxVv+f2lb1tFPgEsSXrcKUxIRWf3vmi/65GGHO5cJY+eLT069W
 ysQ8FXn7L/DvuoZArji95OzbPpAZpGbwTXnEWEOxoeeZNgq+Z5mB/lX6OkoiTBBS
 25B/A==
X-ME-Sender: <xms:za1haaPJpYc8agbzTbe9aSPvZ0vc6LI3WyGL8DMcsp0svdhNvUPXQQ>
 <xme:za1haQvQzdlN5EVcSxD6KsZqvS9eT_FmEQmQfoeg2UxhuA_J9M9-_QJA1g1WDYyEA
 GV8rlb-ruuZFbItrA-qpC14zHc6PyJsZvxdRb2wJfmw19zD5rKQvCw>
X-ME-Received: <xmr:za1haUXyEGT70DL3duowlhJJVL2qZAkPsYKwFEEbj0Jo23KhWHkPuJTba0GjtXJjpnSIqj3DDqk0BbN0eQgKdwNmBAAg3UkOBG0WQeQOU_yN>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduuddtfeelucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepjhhgghesnhhvihguihgrrdgtohhm
X-ME-Proxy: <xmx:za1haYumDg1JWgkyzd-FZQh0TlXhHtey1Wso2xTBK3GYp7yqwQyUNA>
 <xmx:za1haQXV1DhOy9Qdhf6meGLsUl-rnTpWuX23z_a0wjRHRcq2giLY0w>
 <xmx:za1habnxy4M-cNq_V5bqhV9a6dsgo72TinIEBSRIWhJpMm0XA29grw>
 <xmx:za1haZYveAsA4pGTRwJVfsE-iqG_r4LNoYbOHeJaNkws9MaTa-zqqg>
 <xmx:za1haSbvfRxBA4-WAC3HlM0a__CRY8DH802-En8Iu5hqdq8KNaT9P74f>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 9 Jan 2026 20:39:24 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 8/8] firewire: ohci: stop using page private to store DMA
 mapping address
Date: Sat, 10 Jan 2026 10:39:11 +0900
Message-ID: <20260110013911.19160-9-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260110013911.19160-1-o-takashi@sakamocchi.jp>
References: <20260110013911.19160-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  There is a long discussion about the use of private field
 in page structure between Linux kernel developers. This commit stop using
 page private to store DMA mapping address for AR context, to prepare for mm
 future change. 
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
X-Headers-End: 1veNwx-0000ff-6y
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
Cc: linux-kernel@vger.kernel.org, jgg@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

There is a long discussion about the use of private field in page
structure between Linux kernel developers.

This commit stop using page private to store DMA mapping address for
AR context, to prepare for mm future change.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 39 ++++++++++++++++-----------------------
 1 file changed, 16 insertions(+), 23 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index e34965acb925..a43fe680d508 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -96,6 +96,7 @@ struct ar_context {
 	struct fw_ohci *ohci;
 	struct page *pages[AR_BUFFERS];
 	void *buffer;
+	dma_addr_t dma_addrs[AR_BUFFERS];
 	struct descriptor *descriptors;
 	dma_addr_t descriptors_bus;
 	void *pointer;
@@ -513,11 +514,6 @@ static int ohci_update_phy_reg(struct fw_card *card, int addr,
 	return update_phy_reg(ohci, addr, clear_bits, set_bits);
 }
 
-static inline dma_addr_t ar_buffer_bus(struct ar_context *ctx, unsigned int i)
-{
-	return page_private(ctx->pages[i]);
-}
-
 static void ar_context_link_page(struct ar_context *ctx, unsigned int index)
 {
 	struct descriptor *d;
@@ -544,11 +540,11 @@ static void ar_context_release(struct ar_context *ctx)
 		return;
 
 	for (int i = 0; i < AR_BUFFERS; ++i) {
-		dma_addr_t dma_addr = page_private(ctx->pages[i]);
-
-		dma_unmap_page(dev, dma_addr, PAGE_SIZE, DMA_FROM_DEVICE);
-		set_page_private(ctx->pages[i], 0);
+		dma_addr_t dma_addr = ctx->dma_addrs[i];
+		if (dma_addr)
+			dma_unmap_page(dev, dma_addr, PAGE_SIZE, DMA_FROM_DEVICE);
 	}
+	memset(ctx->dma_addrs, 0, sizeof(ctx->dma_addrs));
 
 	vunmap(ctx->buffer);
 	ctx->buffer = NULL;
@@ -647,14 +643,12 @@ static void ar_sync_buffers_for_cpu(struct ar_context *ctx,
 
 	i = ar_first_buffer_index(ctx);
 	while (i != end_buffer_index) {
-		dma_sync_single_for_cpu(ctx->ohci->card.device,
-					ar_buffer_bus(ctx, i),
-					PAGE_SIZE, DMA_FROM_DEVICE);
+		dma_sync_single_for_cpu(ctx->ohci->card.device, ctx->dma_addrs[i], PAGE_SIZE,
+					DMA_FROM_DEVICE);
 		i = ar_next_buffer_index(i);
 	}
 	if (end_buffer_offset > 0)
-		dma_sync_single_for_cpu(ctx->ohci->card.device,
-					ar_buffer_bus(ctx, i),
+		dma_sync_single_for_cpu(ctx->ohci->card.device, ctx->dma_addrs[i],
 					end_buffer_offset, DMA_FROM_DEVICE);
 }
 
@@ -795,9 +789,8 @@ static void ar_recycle_buffers(struct ar_context *ctx, unsigned int end_buffer)
 
 	i = ar_first_buffer_index(ctx);
 	while (i != end_buffer) {
-		dma_sync_single_for_device(ctx->ohci->card.device,
-					   ar_buffer_bus(ctx, i),
-					   PAGE_SIZE, DMA_FROM_DEVICE);
+		dma_sync_single_for_device(ctx->ohci->card.device, ctx->dma_addrs[i], PAGE_SIZE,
+					   DMA_FROM_DEVICE);
 		ar_context_link_page(ctx, i);
 		i = ar_next_buffer_index(i);
 	}
@@ -850,6 +843,7 @@ static int ar_context_init(struct ar_context *ctx, struct fw_ohci *ohci,
 	struct device *dev = ohci->card.device;
 	unsigned int i;
 	struct page *pages[AR_BUFFERS + AR_WRAPAROUND_PAGES];
+	dma_addr_t dma_addrs[AR_BUFFERS];
 	void *vaddr;
 	struct descriptor *d;
 
@@ -885,19 +879,18 @@ static int ar_context_init(struct ar_context *ctx, struct fw_ohci *ohci,
 		dma_addr_t dma_addr = dma_map_page(dev, pages[i], 0, PAGE_SIZE, DMA_FROM_DEVICE);
 		if (dma_mapping_error(dev, dma_addr))
 			break;
-		set_page_private(pages[i], dma_addr);
+		dma_addrs[i] = dma_addr;
 		dma_sync_single_for_device(dev, dma_addr, PAGE_SIZE, DMA_FROM_DEVICE);
 	}
 	if (i < AR_BUFFERS) {
-		while (i-- > 0) {
-			dma_addr_t dma_addr = page_private(pages[i]);
-			dma_unmap_page(dev, dma_addr, PAGE_SIZE, DMA_FROM_DEVICE);
-		}
+		while (i-- > 0)
+			dma_unmap_page(dev, dma_addrs[i], PAGE_SIZE, DMA_FROM_DEVICE);
 		vunmap(vaddr);
 		release_pages(pages, nr_populated);
 		return -ENOMEM;
 	}
 
+	memcpy(ctx->dma_addrs, dma_addrs, sizeof(ctx->dma_addrs));
 	ctx->buffer = vaddr;
 	memcpy(ctx->pages, pages, sizeof(ctx->pages));
 
@@ -910,7 +903,7 @@ static int ar_context_init(struct ar_context *ctx, struct fw_ohci *ohci,
 		d->control        = cpu_to_le16(DESCRIPTOR_INPUT_MORE |
 						DESCRIPTOR_STATUS |
 						DESCRIPTOR_BRANCH_ALWAYS);
-		d->data_address   = cpu_to_le32(ar_buffer_bus(ctx, i));
+		d->data_address   = cpu_to_le32(ctx->dma_addrs[i]);
 		d->branch_address = cpu_to_le32(ctx->descriptors_bus +
 			ar_next_buffer_index(i) * sizeof(struct descriptor));
 	}
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
