Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 72987D0CBD0
	for <lists+linux1394-devel@lfdr.de>; Sat, 10 Jan 2026 02:39:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IeGTPU1pBVz8BwxYmfNGwPnC3uGfheAIq8COc8Qf9gQ=; b=Y6XuWFy8VTedFHbGZot9GxSL8E
	Uvu24BXXjMSOIf80N2S/KmCvuDldcWPUoLQEV5tB5IEHgwODkbq4vCnDVmrGZzefjIVmvUNh0gaX5
	2ulCrLIJxDMFYpufPhDk8QEcrqk9fSpmkO8W5ZufE1tdTyjiopEGTp+ILUhwiIVnp9xU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1veNx0-0007dm-CQ;
	Sat, 10 Jan 2026 01:39:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1veNwy-0007dY-84
 for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Jan 2026 01:39:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nvi2YFB+cOaDy5eldI3l6OcbnVQr1axnxuUdxcNk+Wk=; b=Z9S2lxN/OZCvAsBbd6m90H9fU6
 S+mjlZXk0E3CXobdQ5SUTvyV+smirxa3DepANfFtdUXnsJ1GExHSSgklaly32Y/Bc1ScQAz0+ZJNC
 ogO7aJB4BCUmuA2bKhd6Fl/G896TfxrQwb4tHRgnT6UfjIsOqcmLAPszjosCIsDr95C0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nvi2YFB+cOaDy5eldI3l6OcbnVQr1axnxuUdxcNk+Wk=; b=bRaNbRH0SqXwzMUl2Umcq1fhFw
 U5XW/aN8txav2FsiNvrlcebyZLfyIDArCZb/3XPSU7e3LgqZfAiM9onzfZpjawpENtT0Zd3TKwBbK
 g3rlCVWhci/NkD9O78ZUemuvVUGYqHBd2r9WITiEGzxMPdOm2HPVmDNYGj3x++qB9G3E=;
Received: from fout-a6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1veNwy-0000fs-AP for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Jan 2026 01:39:32 +0000
Received: from phl-compute-12.internal (phl-compute-12.internal [10.202.2.52])
 by mailfout.phl.internal (Postfix) with ESMTP id B6B92EC016E;
 Fri,  9 Jan 2026 20:39:21 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-12.internal (MEProxy); Fri, 09 Jan 2026 20:39:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1768009161; x=
 1768095561; bh=nvi2YFB+cOaDy5eldI3l6OcbnVQr1axnxuUdxcNk+Wk=; b=X
 qQtcOfz588EyVD7sj17fZhr+r+EY643p6dTJjy/tZxufyL+B3vmHuxWkdlc/I91H
 rW4khZi/8wKZme6NGhGtB3bvvuNZ4u+rzHpatixDNOu3VtIDCcWEjS1/20xk3S1r
 w0n0ERNDGHmaddxLmqm/bJ5GxzX5wi4cDRZs+YrOmY5vcFbuAN6Z0wA/NqzEper5
 B963axWN1htiVoo4bGKpYs4F0YhUFsnlcuayCHUuau8KUBSWNrJ8/qjcJcBRxZX8
 3WO0FBNmBmlUhh4LSNaA7Y2AVUPCzlBDo3yXhmlid0luMRccZsLYaq6jThXUUO4T
 DMmw0smuRFA9QcBcRw3/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1768009161; x=1768095561; bh=n
 vi2YFB+cOaDy5eldI3l6OcbnVQr1axnxuUdxcNk+Wk=; b=oM5eEts3SZaQQtvmx
 Z+LmsVsJJOkjM+dBdTyTqHPXCyF5mSeEwVfqoxUsJhSoD/TkoaY6p0otod8ficJw
 3CPot2q9colT/3EL2cZBfpI3JNtZw/uLtRORIFMlj9WKtaseSoDViE4N5c0hEPek
 S/K/+SBsnGnbsnt4huHkHuC9nLZOtxtoyLLaYdUj2+h7t/dLSEb3lMj1brvIDQZq
 Hh1/LDrLxBdx7nFhgpMa94F1mP2i7ZtFUkreB9/QHLogzZbyiK3LTlAuJT55WHkr
 KoDiQp+qqg6cB6NKu+PSqJrJBEw6Sar9cO12EZJs0tXnFj+cNyGGKy9gn2sFx4Sl
 5CwpQ==
X-ME-Sender: <xms:ya1haeIgepiL1T-v1qJIRoLPF7g5pMj-DYZjKtI8bjE_rN7rczSA3A>
 <xme:ya1had6PrdquvHvyGVtJVG5IBgHueCbNTdRWLO2OsT8ORIXNnLI2UqX5fgcSQjGIc
 QzAuE_VNFKJSlHb_SymibicHTXdd3RaeIpa2PXE32RCyCAXE3ByWbI>
X-ME-Received: <xmr:ya1haRwxMZrSqW25taG0afbN07td3UD9EDtGZaGzT8DS3F9tyspsIxQ8IaQGv1SNbyyCCUj7RNo2jyQpqAJfVPXJdmHMTATJBml8o4iif3at>
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
X-ME-Proxy: <xmx:ya1haRaScnFdbb_4YTwgpNmAZsieuEFtHibLaEBXsJFQhfj2k_YXbw>
 <xmx:ya1haTQBI2vhxYUR-uPmOPER5wAiN2jHCHRDh4EOeXk11bsZjRvuqA>
 <xmx:ya1habz7GqhxSMH-_EqJh866tI4V1tSTfunDq0LUvP_x_LzaFgFV6A>
 <xmx:ya1had0k4lgRf4fXSXFa6NIY6BBsZgEagL3vvIW7oaI0GZ4-OfBlJg>
 <xmx:ya1haak24Tfi8SR4ljDLDmjKdEf_nBxFeZlS-vgrqKd3JCbmNFE4rsRn>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 9 Jan 2026 20:39:20 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 5/8] firewire: core: stop using page private to store DMA
 mapping address
Date: Sat, 10 Jan 2026 10:39:08 +0900
Message-ID: <20260110013911.19160-6-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260110013911.19160-1-o-takashi@sakamocchi.jp>
References: <20260110013911.19160-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  There is a long discussion about the use of private field
 in page structure between Linux kernel developers. This commit stop using
 page private to store DMA mapping address for isochronous context, to prepare
 for mm future change. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.168.172.149 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1veNwy-0000fs-AP
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
isochronous context, to prepare for mm future change.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c |  5 +---
 drivers/firewire/core-iso.c  | 48 +++++++++++++++++++-----------------
 drivers/firewire/ohci.c      | 24 +++++++++---------
 include/linux/firewire.h     |  2 +-
 4 files changed, 39 insertions(+), 40 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 2b8a878c8aae..bb4d0f938f5b 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -67,7 +67,6 @@ struct client {
 	u64 iso_closure;
 	struct fw_iso_buffer buffer;
 	unsigned long vm_start;
-	bool buffer_is_mapped;
 
 	struct list_head phy_receiver_link;
 	u64 phy_receiver_closure;
@@ -1098,7 +1097,7 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 		}
 		// The DMA mapping operation is available if the buffer is already allocated by
 		// mmap(2) system call. If not, it is delegated to the system call.
-		if (!client->buffer_is_mapped) {
+		if (client->buffer.pages && !client->buffer.dma_addrs) {
 			ret = fw_iso_buffer_map_dma(&client->buffer, client->device->card,
 						    iso_dma_direction(context));
 			if (ret < 0) {
@@ -1106,7 +1105,6 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 
 				return ret;
 			}
-			client->buffer_is_mapped = true;
 		}
 		client->iso_closure = a->closure;
 		client->iso_context = context;
@@ -1837,7 +1835,6 @@ static int fw_device_op_mmap(struct file *file, struct vm_area_struct *vma)
 						    iso_dma_direction(client->iso_context));
 			if (ret < 0)
 				goto fail;
-			client->buffer_is_mapped = true;
 		}
 	}
 
diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index f2e35ac7a476..3f36243ec0c1 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -55,25 +55,32 @@ int fw_iso_buffer_alloc(struct fw_iso_buffer *buffer, int page_count)
 int fw_iso_buffer_map_dma(struct fw_iso_buffer *buffer, struct fw_card *card,
 			  enum dma_data_direction direction)
 {
-	dma_addr_t address;
+	dma_addr_t *dma_addrs __free(kfree) = kcalloc(buffer->page_count, sizeof(dma_addrs[0]),
+						      GFP_KERNEL);
 	int i;
 
-	buffer->direction = direction;
+	if (!dma_addrs)
+		return -ENOMEM;
 
 	// Retrieve DMA mapping addresses for the pages. They are not contiguous. Maintain the cache
 	// coherency for the pages by hand.
 	for (i = 0; i < buffer->page_count; i++) {
 		// The dma_map_phys() with a physical address per page is available here, instead.
-		address = dma_map_page(card->device, buffer->pages[i],
-				       0, PAGE_SIZE, direction);
-		if (dma_mapping_error(card->device, address))
+		dma_addr_t dma_addr = dma_map_page(card->device, buffer->pages[i], 0, PAGE_SIZE,
+						   direction);
+		if (dma_mapping_error(card->device, dma_addr))
 			break;
 
-		set_page_private(buffer->pages[i], address);
+		dma_addrs[i] = dma_addr;
 	}
-	buffer->page_count_mapped = i;
-	if (i < buffer->page_count)
+	if (i < buffer->page_count) {
+		while (i-- > 0)
+			dma_unmap_page(card->device, dma_addrs[i], PAGE_SIZE, buffer->direction);
 		return -ENOMEM;
+	}
+
+	buffer->direction = direction;
+	buffer->dma_addrs = no_free_ptr(dma_addrs);
 
 	return 0;
 }
@@ -98,13 +105,13 @@ EXPORT_SYMBOL(fw_iso_buffer_init);
 void fw_iso_buffer_destroy(struct fw_iso_buffer *buffer,
 			   struct fw_card *card)
 {
-	int i;
-	dma_addr_t address;
-
-	for (i = 0; i < buffer->page_count_mapped; i++) {
-		address = page_private(buffer->pages[i]);
-		dma_unmap_page(card->device, address,
-			       PAGE_SIZE, buffer->direction);
+	if (buffer->dma_addrs) {
+		for (int i = 0; i < buffer->page_count; ++i) {
+			dma_addr_t dma_addr = buffer->dma_addrs[i];
+			dma_unmap_page(card->device, dma_addr, PAGE_SIZE, buffer->direction);
+		}
+		kfree(buffer->dma_addrs);
+		buffer->dma_addrs = NULL;
 	}
 
 	if (buffer->pages) {
@@ -114,20 +121,15 @@ void fw_iso_buffer_destroy(struct fw_iso_buffer *buffer,
 	}
 
 	buffer->page_count = 0;
-	buffer->page_count_mapped = 0;
 }
 EXPORT_SYMBOL(fw_iso_buffer_destroy);
 
 /* Convert DMA address to offset into virtually contiguous buffer. */
 size_t fw_iso_buffer_lookup(struct fw_iso_buffer *buffer, dma_addr_t completed)
 {
-	size_t i;
-	dma_addr_t address;
-	ssize_t offset;
-
-	for (i = 0; i < buffer->page_count; i++) {
-		address = page_private(buffer->pages[i]);
-		offset = (ssize_t)completed - (ssize_t)address;
+	for (int i = 0; i < buffer->page_count; i++) {
+		dma_addr_t dma_addr = buffer->dma_addrs[i];
+		ssize_t offset = (ssize_t)completed - (ssize_t)dma_addr;
 		if (offset > 0 && offset <= PAGE_SIZE)
 			return (i << PAGE_SHIFT) + offset;
 	}
diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index e3e78dc42530..68a336577d36 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -3184,7 +3184,7 @@ static int queue_iso_transmit(struct iso_context *ctx,
 	struct descriptor *d, *last, *pd;
 	struct fw_iso_packet *p;
 	__le32 *header;
-	dma_addr_t d_bus, page_bus;
+	dma_addr_t d_bus;
 	u32 z, header_z, payload_z, irq;
 	u32 payload_index, payload_end_index, next_page_index;
 	int page, end_page, i, length, offset;
@@ -3254,11 +3254,11 @@ static int queue_iso_transmit(struct iso_context *ctx,
 			min(next_page_index, payload_end_index) - payload_index;
 		pd[i].req_count    = cpu_to_le16(length);
 
-		page_bus = page_private(buffer->pages[page]);
-		pd[i].data_address = cpu_to_le32(page_bus + offset);
+		dma_addr_t dma_addr = buffer->dma_addrs[i];
+		pd[i].data_address = cpu_to_le32(dma_addr + offset);
 
 		dma_sync_single_range_for_device(ctx->context.ohci->card.device,
-						 page_bus, offset, length,
+						 dma_addr, offset, length,
 						 DMA_TO_DEVICE);
 
 		payload_index += length;
@@ -3287,7 +3287,7 @@ static int queue_iso_packet_per_buffer(struct iso_context *ctx,
 {
 	struct device *device = ctx->context.ohci->card.device;
 	struct descriptor *d, *pd;
-	dma_addr_t d_bus, page_bus;
+	dma_addr_t d_bus;
 	u32 z, header_z, rest;
 	int i, j, length;
 	int page, offset, packet_count, header_size, payload_per_buffer;
@@ -3337,10 +3337,10 @@ static int queue_iso_packet_per_buffer(struct iso_context *ctx,
 			pd->res_count = pd->req_count;
 			pd->transfer_status = 0;
 
-			page_bus = page_private(buffer->pages[page]);
-			pd->data_address = cpu_to_le32(page_bus + offset);
+			dma_addr_t dma_addr = buffer->dma_addrs[page];
+			pd->data_address = cpu_to_le32(dma_addr + offset);
 
-			dma_sync_single_range_for_device(device, page_bus,
+			dma_sync_single_range_for_device(device, dma_addr,
 							 offset, length,
 							 DMA_FROM_DEVICE);
 
@@ -3367,7 +3367,7 @@ static int queue_iso_buffer_fill(struct iso_context *ctx,
 				 unsigned long payload)
 {
 	struct descriptor *d;
-	dma_addr_t d_bus, page_bus;
+	dma_addr_t d_bus;
 	int page, offset, rest, z, i, length;
 
 	page   = payload >> PAGE_SHIFT;
@@ -3400,11 +3400,11 @@ static int queue_iso_buffer_fill(struct iso_context *ctx,
 		d->res_count = d->req_count;
 		d->transfer_status = 0;
 
-		page_bus = page_private(buffer->pages[page]);
-		d->data_address = cpu_to_le32(page_bus + offset);
+		dma_addr_t dma_addr = buffer->dma_addrs[page];
+		d->data_address = cpu_to_le32(dma_addr + offset);
 
 		dma_sync_single_range_for_device(ctx->context.ohci->card.device,
-						 page_bus, offset, length,
+						 dma_addr, offset, length,
 						 DMA_FROM_DEVICE);
 
 		rest -= length;
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index aa84421b58ac..09c8484f7430 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -526,8 +526,8 @@ struct fw_iso_packet {
 struct fw_iso_buffer {
 	enum dma_data_direction direction;
 	struct page **pages;
+	dma_addr_t *dma_addrs;
 	int page_count;
-	int page_count_mapped;
 };
 
 int fw_iso_buffer_init(struct fw_iso_buffer *buffer, struct fw_card *card,
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
