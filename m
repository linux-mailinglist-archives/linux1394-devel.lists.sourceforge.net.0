Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DBCFD04C
	for <lists+linux1394-devel@lfdr.de>; Thu, 14 Nov 2019 22:27:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1iVMe9-0007p1-7y; Thu, 14 Nov 2019 21:27:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <SRS0=2QLj=ZG=ladisch.de=clemens@webclient5.webclient5.de>)
 id 1iVMe7-0007or-CT
 for linux1394-devel@lists.sourceforge.net; Thu, 14 Nov 2019 21:27:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hdDACe0WM8cYziFEvzWxpl1YU+L4g+6kg/IEOTa3sRc=; b=AvBs4B6Bcm++gXaC1rLLgEchwL
 OSkuy8Hy/E8F0BdGxW47xvBv5nYHZdduaow5qB8ScS1VuQiNC1vJtq6h7Gd1xTBE/fj7oMdpa9STP
 /hwqaPIT5D8T/gzyaGKI9lZ491SX8JgOHS6H4Az09tFlx2y5G/wQY1bfNiF7sMol/FbU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hdDACe0WM8cYziFEvzWxpl1YU+L4g+6kg/IEOTa3sRc=; b=bxeHSoH1ITPwAaU2suWUVpGKbL
 yyNEAUYkRe8DZ4aBfccG0wkBCTRVRHFXZ1BFAUMla3mMwr2+LQMn/ScYvjffadmHgtOIc9vfTRJth
 qhRpJgeAnOAJvUK7rIWp7h+UR0RH2MO0Aj8YK97QNPyv362zHrbT7NTJ67a4njixX5Rg=;
Received: from webclient5.webclient5.de ([136.243.32.184])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iVMe4-00H3VU-6C
 for linux1394-devel@lists.sourceforge.net; Thu, 14 Nov 2019 21:27:19 +0000
Received: from olorin.ladisch.de (x2f7fa57.dyn.telefonica.de [2.247.250.87])
 by webclient5.webclient5.de (Postfix) with ESMTPSA id 412155583C38;
 Thu, 14 Nov 2019 22:27:06 +0100 (CET)
Subject: Re: [PATCH] firewire: ohci: Fix driver for systems with a page size
 >=64k
From: Clemens Ladisch <clemens@ladisch.de>
To: Forest Crossman <cyrozap@gmail.com>
References: <20191026082029.10358-2-cyrozap@gmail.com>
 <1e3a52c3-db6e-7b67-115f-82f08d16f329@ladisch.de>
Message-ID: <435dc57d-c6ed-bac7-0fd3-990e040ea566@ladisch.de>
Date: Thu, 14 Nov 2019 22:25:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <1e3a52c3-db6e-7b67-115f-82f08d16f329@ladisch.de>
Content-Language: en-US
X-Virus-Scanned: clamav-milter 0.99.4 at webclient5
X-Virus-Status: Clean
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iVMe4-00H3VU-6C
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
Cc: linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

I wrote:
> And the iso DMA code also might use page-sized buffers.

The API uses 16-bit fields for the iso packet payload, so that one is fine.

> I'll see if I can find time to write a patch ...

Please test.

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 522f3addb5bd..1ee6db2b2224 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -75,10 +75,21 @@ struct descriptor {
 #define COMMAND_PTR(regs)	((regs) + 12)
 #define CONTEXT_MATCH(regs)	((regs) + 16)

-#define AR_BUFFER_SIZE	(32*1024)
-#define AR_BUFFERS_MIN	DIV_ROUND_UP(AR_BUFFER_SIZE, PAGE_SIZE)
-/* we need at least two pages for proper list management */
-#define AR_BUFFERS	(AR_BUFFERS_MIN >= 2 ? AR_BUFFERS_MIN : 2)
+/*
+ * The "DMA chunk size" is the largest buffer that can be accessed with a single
+ * DMA descriptor.  It is restricted both by the MMU's page size and by the
+ * 16-bit byte counter (req_count/res_count); to get even-sized chunks in
+ * a page, the upper limit is not 0xffff but the next lower power of two.
+ */
+#define DMA_CHUNK_SIZE		(PAGE_SIZE < 0x8000 ? PAGE_SIZE : 0x8000)
+#define DMA_CHUNKS_PER_PAGE	(PAGE_SIZE / DMA_CHUNK_SIZE)
+
+#define AR_BUFFER_SIZE_MIN	(32*1024)
+#define AR_BUFFER_SIZE		(AR_BUFFER_SIZE_MIN >= PAGE_SIZE ? AR_BUFFER_SIZE_MIN : PAGE_SIZE)
+#define AR_CHUNKS_MIN		DIV_ROUND_UP(AR_BUFFER_SIZE, DMA_CHUNK_SIZE)
+/* we need at least two descriptors for proper list management */
+#define AR_CHUNKS		(AR_CHUNKS_MIN >= 2 ? AR_CHUNKS_MIN : 2)
+#define AR_PAGES		DIV_ROUND_UP(AR_CHUNKS, DMA_CHUNKS_PER_PAGE)

 #define MAX_ASYNC_PAYLOAD	4096
 #define MAX_AR_PACKET_SIZE	(16 + MAX_ASYNC_PAYLOAD + 4)
@@ -86,12 +97,12 @@ struct descriptor {

 struct ar_context {
 	struct fw_ohci *ohci;
-	struct page *pages[AR_BUFFERS];
+	struct page *pages[AR_PAGES];
 	void *buffer;
 	struct descriptor *descriptors;
 	dma_addr_t descriptors_bus;
 	void *pointer;
-	unsigned int last_buffer_index;
+	unsigned int last_chunk_index;
 	u32 regs;
 	struct tasklet_struct tasklet;
 };
@@ -649,18 +660,25 @@ static int ohci_update_phy_reg(struct fw_card *card, int addr,
 	return ret;
 }

-static inline dma_addr_t ar_buffer_bus(struct ar_context *ctx, unsigned int i)
+static inline dma_addr_t ar_page_bus(struct ar_context *ctx, unsigned int i)
 {
 	return page_private(ctx->pages[i]);
 }

-static void ar_context_link_page(struct ar_context *ctx, unsigned int index)
+static inline dma_addr_t ar_chunk_bus(struct ar_context *ctx, unsigned int i)
+{
+	unsigned int page = i / DMA_CHUNKS_PER_PAGE;
+	unsigned int offset = i % DMA_CHUNKS_PER_PAGE * DMA_CHUNK_SIZE;
+	return ar_page_bus(page) + offset;
+}
+
+static void ar_context_link_chunk(struct ar_context *ctx, unsigned int index)
 {
 	struct descriptor *d;

 	d = &ctx->descriptors[index];
 	d->branch_address  &= cpu_to_le32(~0xf);
-	d->res_count       =  cpu_to_le16(PAGE_SIZE);
+	d->res_count       =  cpu_to_le16(DMA_CHUNK_SIZE);
 	d->transfer_status =  0;

 	wmb(); /* finish init of new descriptors before branch_address update */
@@ -678,10 +696,10 @@ static void ar_context_release(struct ar_context *ctx)

 	vunmap(ctx->buffer);

-	for (i = 0; i < AR_BUFFERS; i++)
+	for (i = 0; i < AR_PAGES; i++)
 		if (ctx->pages[i]) {
 			dma_unmap_page(ctx->ohci->card.device,
-				       ar_buffer_bus(ctx, i),
+				       ar_page_bus(ctx, i),
 				       PAGE_SIZE, DMA_FROM_DEVICE);
 			__free_page(ctx->pages[i]);
 		}
@@ -700,92 +718,92 @@ static void ar_context_abort(struct ar_context *ctx, const char *error_msg)
 	/* FIXME: restart? */
 }

-static inline unsigned int ar_next_buffer_index(unsigned int index)
+static inline unsigned int ar_next_chunk_index(unsigned int index)
 {
-	return (index + 1) % AR_BUFFERS;
+	return (index + 1) % AR_CHUNKS;
 }

-static inline unsigned int ar_first_buffer_index(struct ar_context *ctx)
+static inline unsigned int ar_first_chunk_index(struct ar_context *ctx)
 {
-	return ar_next_buffer_index(ctx->last_buffer_index);
+	return ar_next_chunk_index(ctx->last_chunk_index);
 }

 /*
- * We search for the buffer that contains the last AR packet DMA data written
+ * We search for the chunk that contains the last AR packet DMA data written
  * by the controller.
  */
-static unsigned int ar_search_last_active_buffer(struct ar_context *ctx,
-						 unsigned int *buffer_offset)
+static unsigned int ar_search_last_active_chunk(struct ar_context *ctx,
+						unsigned int *chunk_offset)
 {
-	unsigned int i, next_i, last = ctx->last_buffer_index;
+	unsigned int i, next_i, last = ctx->last_chunk_index;
 	__le16 res_count, next_res_count;

-	i = ar_first_buffer_index(ctx);
+	i = ar_first_chunk_index(ctx);
 	res_count = READ_ONCE(ctx->descriptors[i].res_count);

-	/* A buffer that is not yet completely filled must be the last one. */
+	/* A chunk that is not yet completely filled must be the last one. */
 	while (i != last && res_count == 0) {

 		/* Peek at the next descriptor. */
-		next_i = ar_next_buffer_index(i);
+		next_i = ar_next_chunk_index(i);
 		rmb(); /* read descriptors in order */
 		next_res_count = READ_ONCE(ctx->descriptors[next_i].res_count);
 		/*
 		 * If the next descriptor is still empty, we must stop at this
 		 * descriptor.
 		 */
-		if (next_res_count == cpu_to_le16(PAGE_SIZE)) {
+		if (next_res_count == cpu_to_le16(DMA_CHUNK_SIZE)) {
 			/*
 			 * The exception is when the DMA data for one packet is
-			 * split over three buffers; in this case, the middle
-			 * buffer's descriptor might be never updated by the
+			 * split over three chunks; in this case, the middle
+			 * chunk's descriptor might be never updated by the
 			 * controller and look still empty, and we have to peek
 			 * at the third one.
 			 */
-			if (MAX_AR_PACKET_SIZE > PAGE_SIZE && i != last) {
-				next_i = ar_next_buffer_index(next_i);
+			if (MAX_AR_PACKET_SIZE > DMA_CHUNK_SIZE && i != last) {
+				next_i = ar_next_chunk_index(next_i);
 				rmb();
 				next_res_count = READ_ONCE(ctx->descriptors[next_i].res_count);
-				if (next_res_count != cpu_to_le16(PAGE_SIZE))
-					goto next_buffer_is_active;
+				if (next_res_count != cpu_to_le16(DMA_CHUNK_SIZE))
+					goto next_chunk_is_active;
 			}

 			break;
 		}

-next_buffer_is_active:
+next_chunk_is_active:
 		i = next_i;
 		res_count = next_res_count;
 	}

 	rmb(); /* read res_count before the DMA data */

-	*buffer_offset = PAGE_SIZE - le16_to_cpu(res_count);
-	if (*buffer_offset > PAGE_SIZE) {
-		*buffer_offset = 0;
+	*chunk_offset = DMA_CHUNK_SIZE - le16_to_cpu(res_count);
+	if (*chunk_offset > DMA_CHUNK_SIZE) {
+		*chunk_offset = 0;
 		ar_context_abort(ctx, "corrupted descriptor");
 	}

 	return i;
 }

-static void ar_sync_buffers_for_cpu(struct ar_context *ctx,
-				    unsigned int end_buffer_index,
-				    unsigned int end_buffer_offset)
+static void ar_sync_chunk_for_cpu(struct ar_context *ctx,
+				  unsigned int end_chunk_index,
+				  unsigned int end_chunk_offset)
 {
 	unsigned int i;

-	i = ar_first_buffer_index(ctx);
-	while (i != end_buffer_index) {
+	i = ar_first_chunk_index(ctx);
+	while (i != end_chunk_index) {
 		dma_sync_single_for_cpu(ctx->ohci->card.device,
-					ar_buffer_bus(ctx, i),
-					PAGE_SIZE, DMA_FROM_DEVICE);
-		i = ar_next_buffer_index(i);
+					ar_chunk_bus(ctx, i),
+					CHUNK_SIZE, DMA_FROM_DEVICE);
+		i = ar_next_chunk_index(i);
 	}
-	if (end_buffer_offset > 0)
+	if (end_chunk_offset > 0)
 		dma_sync_single_for_cpu(ctx->ohci->card.device,
-					ar_buffer_bus(ctx, i),
-					end_buffer_offset, DMA_FROM_DEVICE);
+					ar_chunk_bus(ctx, i),
+					end_chunk_offset, DMA_FROM_DEVICE);
 }

 #if defined(CONFIG_PPC_PMAC) && defined(CONFIG_PPC32)
@@ -907,48 +925,47 @@ static void *handle_ar_packets(struct ar_context *ctx, void *p, void *end)
 	return p;
 }

-static void ar_recycle_buffers(struct ar_context *ctx, unsigned int end_buffer)
+static void ar_recycle_chunks(struct ar_context *ctx, unsigned int end_chunk)
 {
 	unsigned int i;

-	i = ar_first_buffer_index(ctx);
-	while (i != end_buffer) {
+	i = ar_first_chunk_index(ctx);
+	while (i != end_chunk) {
 		dma_sync_single_for_device(ctx->ohci->card.device,
-					   ar_buffer_bus(ctx, i),
-					   PAGE_SIZE, DMA_FROM_DEVICE);
-		ar_context_link_page(ctx, i);
-		i = ar_next_buffer_index(i);
+					   ar_chunk_bus(ctx, i),
+					   CHUNK_SIZE, DMA_FROM_DEVICE);
+		ar_context_link_chunk(ctx, i);
+		i = ar_next_chunk_index(i);
 	}
 }

 static void ar_context_tasklet(unsigned long data)
 {
 	struct ar_context *ctx = (struct ar_context *)data;
-	unsigned int end_buffer_index, end_buffer_offset;
+	unsigned int end_chunk_index, end_chunk_offset;
 	void *p, *end;

 	p = ctx->pointer;
 	if (!p)
 		return;

-	end_buffer_index = ar_search_last_active_buffer(ctx,
-							&end_buffer_offset);
-	ar_sync_buffers_for_cpu(ctx, end_buffer_index, end_buffer_offset);
-	end = ctx->buffer + end_buffer_index * PAGE_SIZE + end_buffer_offset;
+	end_chunk_index = ar_search_last_active_chunk(ctx, &end_chunk_offset);
+	ar_sync_chunks_for_cpu(ctx, end_chunk_index, end_chunk_offset);
+	end = ctx->buffer + end_chunk_index * DMA_CHUNK_SIZE + end_chunk_offset;

-	if (end_buffer_index < ar_first_buffer_index(ctx)) {
+	if (end_chunk_index < ar_first_chunk_index(ctx)) {
 		/*
 		 * The filled part of the overall buffer wraps around; handle
 		 * all packets up to the buffer end here.  If the last packet
 		 * wraps around, its tail will be visible after the buffer end
 		 * because the buffer start pages are mapped there again.
 		 */
-		void *buffer_end = ctx->buffer + AR_BUFFERS * PAGE_SIZE;
-		p = handle_ar_packets(ctx, p, buffer_end);
-		if (p < buffer_end)
+		void *chunk_end = ctx->buffer + AR_PAGES * PAGE_SIZE;
+		p = handle_ar_packets(ctx, p, chunk_end);
+		if (p < chunk_end)
 			goto error;
 		/* adjust p to point back into the actual buffer */
-		p -= AR_BUFFERS * PAGE_SIZE;
+		p -= AR_PAGES * PAGE_SIZE;
 	}

 	p = handle_ar_packets(ctx, p, end);
@@ -959,7 +976,7 @@ static void ar_context_tasklet(unsigned long data)
 	}

 	ctx->pointer = p;
-	ar_recycle_buffers(ctx, end_buffer_index);
+	ar_recycle_chunks(ctx, end_chunk_index);

 	return;

@@ -972,14 +989,14 @@ static int ar_context_init(struct ar_context *ctx, struct fw_ohci *ohci,
 {
 	unsigned int i;
 	dma_addr_t dma_addr;
-	struct page *pages[AR_BUFFERS + AR_WRAPAROUND_PAGES];
+	struct page *pages[AR_PAGES + AR_WRAPAROUND_PAGES];
 	struct descriptor *d;

 	ctx->regs        = regs;
 	ctx->ohci        = ohci;
 	tasklet_init(&ctx->tasklet, ar_context_tasklet, (unsigned long)ctx);

-	for (i = 0; i < AR_BUFFERS; i++) {
+	for (i = 0; i < AR_PAGES; i++) {
 		ctx->pages[i] = alloc_page(GFP_KERNEL | GFP_DMA32);
 		if (!ctx->pages[i])
 			goto out_of_memory;
@@ -993,10 +1010,10 @@ static int ar_context_init(struct ar_context *ctx, struct fw_ohci *ohci,
 		set_page_private(ctx->pages[i], dma_addr);
 	}

-	for (i = 0; i < AR_BUFFERS; i++)
-		pages[i]              = ctx->pages[i];
+	for (i = 0; i < AR_PAGES; i++)
+		pages[i]            = ctx->pages[i];
 	for (i = 0; i < AR_WRAPAROUND_PAGES; i++)
-		pages[AR_BUFFERS + i] = ctx->pages[i];
+		pages[AR_PAGES + i] = ctx->pages[i];
 	ctx->buffer = vmap(pages, ARRAY_SIZE(pages), VM_MAP, PAGE_KERNEL);
 	if (!ctx->buffer)
 		goto out_of_memory;
@@ -1004,15 +1021,15 @@ static int ar_context_init(struct ar_context *ctx, struct fw_ohci *ohci,
 	ctx->descriptors     = ohci->misc_buffer     + descriptors_offset;
 	ctx->descriptors_bus = ohci->misc_buffer_bus + descriptors_offset;

-	for (i = 0; i < AR_BUFFERS; i++) {
+	for (i = 0; i < AR_CHUNKS; i++) {
 		d = &ctx->descriptors[i];
-		d->req_count      = cpu_to_le16(PAGE_SIZE);
+		d->req_count      = cpu_to_le16(DMA_CHUNK_SIZE);
 		d->control        = cpu_to_le16(DESCRIPTOR_INPUT_MORE |
 						DESCRIPTOR_STATUS |
 						DESCRIPTOR_BRANCH_ALWAYS);
-		d->data_address   = cpu_to_le32(ar_buffer_bus(ctx, i));
+		d->data_address   = cpu_to_le32(ar_chunk_bus(ctx, i));
 		d->branch_address = cpu_to_le32(ctx->descriptors_bus +
-			ar_next_buffer_index(i) * sizeof(struct descriptor));
+			ar_next_chunk_index(i) * sizeof(struct descriptor));
 	}

 	return 0;
@@ -1027,8 +1044,8 @@ static void ar_context_run(struct ar_context *ctx)
 {
 	unsigned int i;

-	for (i = 0; i < AR_BUFFERS; i++)
-		ar_context_link_page(ctx, i);
+	for (i = 0; i < AR_CHUNKS; i++)
+		ar_context_link_chunk(ctx, i);

 	ctx->pointer = ctx->buffer;



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
