Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B34ED0CBCD
	for <lists+linux1394-devel@lfdr.de>; Sat, 10 Jan 2026 02:39:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ib2pf+lSFq13HQSDpcxvHdKTORatdfR55JUaPQ0mX40=; b=Qp8L77gE3WNLYqKUNM3ZTai/1B
	QxtFESKDnICEW5QBPeIVXQy1kIQtbYnE0rjoMsJ99Ob2XcLj1VGyUX+T5F/zb1KqknHsGKezFxYHN
	9RYQ+ejOKCp7DvbfNZtc4FYdmUDYUCB/aIG814SFBRzwwPpYGcCtOOE2pu4eMONP71wI=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1veNx2-0004Bv-Ou;
	Sat, 10 Jan 2026 01:39:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1veNx1-0004Bj-It
 for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Jan 2026 01:39:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VgBfqooDKEgNn8IDcbep9PMHlwrIxlzMxOmAvkjasI8=; b=gmafjoHKi2jl1bjE/pc93U6Cn9
 P9FlVkOXxE8kOpxSb2fOhp6h3A2ZQo1hJCmy+nOrBDl66qcB8Xw5NB7EcdWkU3VwDXDyEJV2jinnO
 PnM6w/3pE/kG4bjm/LwSFFkvBFlQTNxHdqVzAzaplGI1WOmMDIBk/4HdB1qWAH/PT29o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VgBfqooDKEgNn8IDcbep9PMHlwrIxlzMxOmAvkjasI8=; b=dYmLt3l4zi7K5DVIvOLYuG/eeR
 XUD/aTbIuFx+WG4wOtvPZyRLXPv+lKEjnkorE+NYFbntaSz9qp2WpIUOtigc+O0d4JG/bVartjI5s
 VAIScszv6Z+hZw9tV0oz/uO7yvpRNWeWxAq3FA47PsxPxvlqmJgZxJ8R2w8s4dey0pG0=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1veNx0-0000g7-Sq for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Jan 2026 01:39:35 +0000
Received: from phl-compute-09.internal (phl-compute-09.internal [10.202.2.49])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 5891B14000FB;
 Fri,  9 Jan 2026 20:39:24 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-09.internal (MEProxy); Fri, 09 Jan 2026 20:39:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1768009164; x=
 1768095564; bh=VgBfqooDKEgNn8IDcbep9PMHlwrIxlzMxOmAvkjasI8=; b=N
 Mjw86Id/9FB/VY0dvinhzilc8OPFxYaJoav2doDI3kQRioOx5p8BxKuqTNnDm2em
 D8wgGTajYy0Dlex5veqc/joU2lhYrMgGL5XCsXhQdFNtNjo3y0hLAvGpIJi8C9Gh
 XDteoWskFoxFiLjtCcnYKrjhcZDHCIzGj0KkS8TKCo2bkmsZRvIpRa4ZIfwFwTKU
 XE/KoxV99hTfhMNOzojgZ/8AxJtjsQkAqou+8Cm32sXQHqekjbyW7ninvtjmPz+O
 7GKYBFsjLDsWF18yhSyHHULluXclZTXRpGorcBiy+Pi7Fp+DVGsXZHWTLu8xROtc
 X7SQyaZTXKjyRBqpovydg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1768009164; x=1768095564; bh=V
 gBfqooDKEgNn8IDcbep9PMHlwrIxlzMxOmAvkjasI8=; b=Qowb2bcgRyBKpxJc7
 Nb2D/NLJ7L9XF+Na2HjYeCwE/kvqwF6KhNm8Bt5nuacoy+Gd1t49ryDpTiTPLwPL
 SLvMFNiws9VeEMp+xA+9zGg1H90hVt30XsMqqHWiBH3eB6m9l9GiszW/ETHNLPVA
 syyxe8GJO5lUoevg2D27QWdfyrUqgCo+ya56ySDG6l/lFyigC6L9cL79DY13Lj+n
 mQfFboxrHhLnJtJm06ercs8DPK0652GywZHfaVpYJp03Vo8BCyt8XqwxlRXhv1C7
 98suxPz7e6jCrWFXq2DuLdoyQhy5xYEiQ3jtcv3gphJfCZUmYasKJosUkedKuP6a
 uN2sQ==
X-ME-Sender: <xms:zK1haeBe6cGb0PiKOtmS2Tro_B6oS5hmlTKAf5sAt7bkqc-vYmROFw>
 <xme:zK1haQQp5dpeMf18L6dk671KhzbamDJYXgfTS7HtQkN_b_nGaLykMR2NpQsjpnsgm
 3fOlXDSLcsAnVYsz6OaPIlCInke-I34IVEj8IboNrf5prt1rteoMWc>
X-ME-Received: <xmr:zK1haUqKfchBAEtl-KUrqPfqzW3dt2QcppPyRNO0aAzbbZraQUbvvRINeYztfSmDErIIFJ8ZCIvQ_gVWvv44HWG-Ak1FAPAmMlwc2SjqFrjV>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduuddtfeelucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeejvdetteduhf
 eivdehgeeivdekgfektdelfedtteeljeekvdeukeehkedvgffgveenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghr
 tghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugidufe
 elgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphht
 thhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtph
 htthhopehjghhgsehnvhhiughirgdrtghomh
X-ME-Proxy: <xmx:zK1haazee9rXq_Wdp8zTesCnyMOIGtdmDCUeITOs5jxTsP7NJDLoig>
 <xmx:zK1haRJhLy1Dcazam4IenG3fWl1v2MkerhXRyWqOxF6r5DDCJJZ9-g>
 <xmx:zK1haUJBKUp90c4yZ3zhOgi0om2ehnpHr2mAU2BCJvdoDl8_zagnyA>
 <xmx:zK1haesi9HYVXM9R7Y8_Y1uGXzR_8jEm9bG6P8mbuyBRRs-NibadBA>
 <xmx:zK1haS-3jhdObwfDka2IjNItPZmJTJw-ksD96m0Rf7v786J_7bFEc2um>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 9 Jan 2026 20:39:23 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 7/8] firewire: ohci: split page allocation from dma mapping
Date: Sat, 10 Jan 2026 10:39:10 +0900
Message-ID: <20260110013911.19160-8-o-takashi@sakamocchi.jp>
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
 Content preview: 1394 OHCI PCI driver had long been the only user of
 dma_alloc_pages().
 Although tee subsystem recently started using it, they are still a few users
 of the infrequently-used function. In the discussion for dma-mapping function, 
 Jason Gunthorpe shows his opinion about the design of public API for the
 function. According to it, the users provide physical address to the function, 
 then [...] 
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
X-Headers-End: 1veNx0-0000g7-Sq
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

1394 OHCI PCI driver had long been the only user of dma_alloc_pages().
Although tee subsystem recently started using it, they are still a few
users of the infrequently-used function.

In the discussion for dma-mapping function, Jason Gunthorpe shows his
opinion about the design of public API for the function. According to it,
the users provide physical address to the function, then receive DMA
mapping address, regardless of the location of mapping target.

With the above aspects, this commit eliminates the use of
dma_alloc_pages() from this subsystem.

Link: https://lore.kernel.org/lkml/20250905174324.GI616306@nvidia.com/
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 77 +++++++++++++++++++++++++++--------------
 1 file changed, 51 insertions(+), 26 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index f6da4cd7d123..e34965acb925 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -539,18 +539,22 @@ static void ar_context_link_page(struct ar_context *ctx, unsigned int index)
 static void ar_context_release(struct ar_context *ctx)
 {
 	struct device *dev = ctx->ohci->card.device;
-	unsigned int i;
 
 	if (!ctx->buffer)
 		return;
 
-	vunmap(ctx->buffer);
+	for (int i = 0; i < AR_BUFFERS; ++i) {
+		dma_addr_t dma_addr = page_private(ctx->pages[i]);
 
-	for (i = 0; i < AR_BUFFERS; i++) {
-		if (ctx->pages[i])
-			dma_free_pages(dev, PAGE_SIZE, ctx->pages[i],
-				       ar_buffer_bus(ctx, i), DMA_FROM_DEVICE);
+		dma_unmap_page(dev, dma_addr, PAGE_SIZE, DMA_FROM_DEVICE);
+		set_page_private(ctx->pages[i], 0);
 	}
+
+	vunmap(ctx->buffer);
+	ctx->buffer = NULL;
+
+	release_pages(ctx->pages, AR_BUFFERS);
+	memset(ctx->pages, 0, sizeof(ctx->pages));
 }
 
 static void ar_context_abort(struct ar_context *ctx, const char *error_msg)
@@ -845,31 +849,57 @@ static int ar_context_init(struct ar_context *ctx, struct fw_ohci *ohci,
 {
 	struct device *dev = ohci->card.device;
 	unsigned int i;
-	dma_addr_t dma_addr;
 	struct page *pages[AR_BUFFERS + AR_WRAPAROUND_PAGES];
+	void *vaddr;
 	struct descriptor *d;
 
 	ctx->regs        = regs;
 	ctx->ohci        = ohci;
 	INIT_WORK(&ctx->work, ohci_ar_context_work);
 
-	for (i = 0; i < AR_BUFFERS; i++) {
-		ctx->pages[i] = dma_alloc_pages(dev, PAGE_SIZE, &dma_addr,
-						DMA_FROM_DEVICE, GFP_KERNEL);
-		if (!ctx->pages[i])
-			goto out_of_memory;
-		set_page_private(ctx->pages[i], dma_addr);
-		dma_sync_single_for_device(dev, dma_addr, PAGE_SIZE,
-					   DMA_FROM_DEVICE);
+	// Retrieve noncontiguous pages. The descriptors for 1394 OHCI AR DMA contexts have a set
+	// of address and length per each. The reason to use pages is to construct contiguous
+	// address range in kernel virtual address space.
+	unsigned long nr_populated = alloc_pages_bulk(GFP_KERNEL | GFP_DMA32, AR_BUFFERS, pages);
+
+	if (nr_populated != AR_BUFFERS) {
+		release_pages(pages, nr_populated);
+		return -ENOMEM;
 	}
 
-	for (i = 0; i < AR_BUFFERS; i++)
-		pages[i]              = ctx->pages[i];
+	// Map the pages into contiguous kernel virtual addresses so that the packet data
+	// across the pages can be referred as being contiguous, especially across the last
+	// and first pages.
 	for (i = 0; i < AR_WRAPAROUND_PAGES; i++)
-		pages[AR_BUFFERS + i] = ctx->pages[i];
-	ctx->buffer = vmap(pages, ARRAY_SIZE(pages), VM_MAP, PAGE_KERNEL);
-	if (!ctx->buffer)
-		goto out_of_memory;
+		pages[AR_BUFFERS + i] = pages[i];
+	vaddr = vmap(pages, ARRAY_SIZE(pages), VM_MAP, PAGE_KERNEL);
+	if (!vaddr) {
+		release_pages(pages, nr_populated);
+		return -ENOMEM;
+	}
+
+	// Retrieve DMA mapping addresses for the pages. They are not contiguous. Maintain the cache
+	// coherency for the pages by hand.
+	for (i = 0; i < AR_BUFFERS; i++) {
+		// The dma_map_phys() with a physical address per page is available here, instead.
+		dma_addr_t dma_addr = dma_map_page(dev, pages[i], 0, PAGE_SIZE, DMA_FROM_DEVICE);
+		if (dma_mapping_error(dev, dma_addr))
+			break;
+		set_page_private(pages[i], dma_addr);
+		dma_sync_single_for_device(dev, dma_addr, PAGE_SIZE, DMA_FROM_DEVICE);
+	}
+	if (i < AR_BUFFERS) {
+		while (i-- > 0) {
+			dma_addr_t dma_addr = page_private(pages[i]);
+			dma_unmap_page(dev, dma_addr, PAGE_SIZE, DMA_FROM_DEVICE);
+		}
+		vunmap(vaddr);
+		release_pages(pages, nr_populated);
+		return -ENOMEM;
+	}
+
+	ctx->buffer = vaddr;
+	memcpy(ctx->pages, pages, sizeof(ctx->pages));
 
 	ctx->descriptors     = ohci->misc_buffer     + descriptors_offset;
 	ctx->descriptors_bus = ohci->misc_buffer_bus + descriptors_offset;
@@ -886,11 +916,6 @@ static int ar_context_init(struct ar_context *ctx, struct fw_ohci *ohci,
 	}
 
 	return 0;
-
-out_of_memory:
-	ar_context_release(ctx);
-
-	return -ENOMEM;
 }
 
 static void ar_context_run(struct ar_context *ctx)
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
